import { PrismaClient } from "@prisma/client";
import path from "path";
import multer from "multer";
import fs from "fs";

const prisma = new PrismaClient();

const storage = multer.diskStorage({
  destination: (req, file, cb) => {
    cb(null, "./public/berita");
  },
  filename: (req, file, cb) => {
    cb(
      null,
      file.fieldname + "-" + Date.now() + path.extname(file.originalname)
    );
  },
});

export const upLoad = multer({ storage: storage });

export const getBerita = async (req, res) => {
  try {
    const response = await prisma.berita.findMany({
      orderBy: {
        createdAt: "desc",
      },
    });
    res.json(response);
  } catch (error) {
    console.log(error.message);
  }
};

export const getBeritaRecent = async (req, res) => {
  try {
    const response = await prisma.berita.findMany({
      orderBy: {
        createdAt: "desc",
      },
      take: 3,
    });
    res.json(response);
  } catch (error) {
    console.log(error.message);
  }
};

export const getBeritaRecentSelengkapnya = async (req, res) => {
  try {
    const response = await prisma.berita.findMany({
      orderBy: {
        createdAt: "desc",
      },
      take: 5,
    });
    res.json(response);
  } catch (error) {
    console.log(error.message);
  }
};

export const getBeritaById = async (req, res) => {
  try {
    const response = await prisma.berita.findUnique({
      where: {
        id: Number(req.params.id),
      },
    });
    res.status(200).json(response);
  } catch (error) {
    res.status(404).json({ msg: "error.message" });
  }
};

export const createBerita = async (req, res) => {
  try {
    if (req.file === null) {
      return res.status(400).json({ msg: "Buletin file not provided" });
    }
    const judul = req.body.judul;
    const tanggal = req.body.tanggal;
    const isi = req.body.isi;
    const fileName = req.file.filename;
    const fileSize = req.file.size;
    const url = `${req.protocol}://${req.get(
      "host"
    )}/public/berita/${fileName}`;
    const allowedType = [".png", ".jpg", ".jpeg"];
    const ext = path.extname(req.file.originalname);

    if (!allowedType.includes(ext.toLowerCase())) {
      return res
        .status(422)
        .json({ msg: "Unsupported file format for Buletin" });
    }

    if (fileSize > 2000000) {
      return res
        .status(422)
        .json({ msg: "file size should be less than 2 MB" });
    }
    await prisma.berita.create({
      data: {
        judul: judul,
        tanggal: tanggal,
        isi: isi,
        gambar: fileName,
        url: url,
      },
    });

    res.status(201).json({ msg: "Berita uploaded successfully" });
  } catch (error) {
    console.log(error.message);
    res.status(500).json({ msg: "Internal server error" });
  }
};
export const updateBerita = async (req, res) => {
  const Berita = await prisma.berita.findUnique({
    where: {
      id: Number(req.params.id),
    },
  });
  if (!Berita) return res.status(404).json({ msg: "No Data Found" });
  let fileName = "";
  if (req.file === null) {
    fileName = Berita.gambar;
  } else {
    const fileSize = req.file.size;
    const ext = path.extname(req.file.originalname);
    const allowedType = [".png", ".jpg", ".jpeg"];

    if (!allowedType.includes(ext.toLowerCase())) {
      return res.status(422).json({ msg: "Unsupported format" });
    }

    if (fileSize > 2000000) {
      return res
        .status(422)
        .json({ msg: "file size should be less than 2 MB" });
    }
    const filepath = `./public/berita/${Berita.gambar}`;

    if (fs.existsSync(filepath)) {
      fs.unlinkSync(filepath);
    }
    fileName = req.file.filename;
  }
  const judul = req.body.judul;
  const tanggal = req.body.tanggal;
  const isi = req.body.isi;
  const url = `${req.protocol}://${req.get("host")}/public/berita/${fileName}`;

  try {
    await prisma.berita.update({
      data: {
        judul: judul,
        tanggal: tanggal,
        isi: isi,
        gambar: fileName,
        url: url,
      },
      where: {
        id: Number(req.params.id),
      },
    });
    res.status(200).json({ msg: "Berita Berhasil Diupdate" });
  } catch (error) {
    console.log(error.message);
  }
};

export const deleteBerita = async (req, res) => {
  const Berita = await prisma.berita.findUnique({
    where: {
      id: Number(req.params.id),
    },
  });
  if (!Berita) return res.status(404).json({ msg: "Berita Tidak Ditemukan" });

  try {
    const filepath = `./public/berita/${Berita.gambar}`;
    if (fs.existsSync(filepath)) {
      fs.unlinkSync(filepath);
    }
    await prisma.berita.delete({
      where: {
        id: Number(req.params.id),
      },
    });
    res.status(200).json({ msg: "Berita Berhasil Dihapus" });
  } catch (error) {
    console.log(error.message);
  }
};
