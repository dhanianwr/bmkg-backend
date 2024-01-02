import { PrismaClient } from "@prisma/client";
import path from "path";
import multer from "multer";
import fs from "fs";

const prisma = new PrismaClient();

const storage = multer.diskStorage({
  destination: (req, file, cb) => {
    cb(null, "./public/buletin");
  },
  filename: (req, file, cb) => {
    cb(
      null,
      file.fieldname + "-" + Date.now() + path.extname(file.originalname)
    );
  },
});

export const upLoad = multer({ storage: storage });

export const getBuletin = async (req, res) => {
  try {
    const response = await prisma.BuletinTable.findMany({
      orderBy: {
        createdAt: "desc",
      },
    });

    res.json(response);
  } catch (error) {
    console.log(error.message);
  }
};

export const getBuletinRecent = async (req, res) => {
    try {
      const response = await prisma.BuletinTable.findMany({
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

export const getBuletinById = async (req, res) => {
  try {
    const response = await prisma.BuletinTable.findUnique({
      where: {
        id: Number(req.params.id),
      },
    });
    res.status(200).json(response);
  } catch (error) {
    res.status(404).json({ msg: "error.message" });
  }
};

export const createBuletin = async (req, res) => {
  try {
    if (req.file === null) {
      return res.status(400).json({ msg: "Buletin file not provided" });
    }
    const name = req.body.name;
    const fileName = req.file.filename;
    const fileSize = req.file.size;
    const url = `${req.protocol}://${req.get(
      "host"
    )}/public/buletin/${fileName}#toolbar=0`;
    const allowedType = [".pdf"];
    const ext = path.extname(req.file.originalname);

    if (!allowedType.includes(ext.toLowerCase())) {
      return res
        .status(422)
        .json({ msg: "Unsupported file format for Buletin" });
    }

    if (fileSize > 10000000) {
      return res
        .status(422)
        .json({ msg: "file size should be less than 10 MB" });
    }
    await prisma.BuletinTable.create({
      data: {
        name: name,
        buletin: fileName,
        url: url,
      },
    });

    res.status(201).json({ msg: "Buletin uploaded successfully" });
  } catch (error) {
    console.log(error.message);
    res.status(500).json({ msg: "Internal server error" });
  }
};
export const updateBuletin = async (req, res) => {
  const Buletin = await prisma.BuletinTable.findUnique({
    where: {
      id: Number(req.params.id),
    },
  });
  if (!Buletin) return res.status(404).json({ msg: "No Data Found" });
  let fileName = "";
  if (req.file === null) {
    fileName = Buletin.buletin;
  } else {
    const fileSize = req.file.size;
    const ext = path.extname(req.file.originalname);
    const allowedType = [".pdf"];

    if (!allowedType.includes(ext.toLowerCase())) {
      return res.status(422).json({ msg: "Unsupported format" });
    }

    if (fileSize > 10000000) {
      return res
        .status(422)
        .json({ msg: "file size should be less than 10 MB" });
    }
    const filepath = `./public/buletin/${Buletin.buletin}`;

    if (fs.existsSync(filepath)) {
      fs.unlinkSync(filepath);
    }
    fileName = req.file.filename;
  }
  const name = req.body.name;
  const url = `${req.protocol}://${req.get(
    "host"
  )}/public/buletin/${fileName}#toolbar=0`;

  try {
    await prisma.BuletinTable.update({
      data: { name: name, buletin: fileName, url: url },
      where: {
        id: Number(req.params.id),
      },
    });
    res.status(200).json({ msg: "Buletin berhasil diupdate" });
  } catch (error) {
    console.log(error.message);
  }
};

export const deleteBuletin = async (req, res) => {
  const Buletin = await prisma.BuletinTable.findUnique({
    where: {
      id: Number(req.params.id),
    },
  });
  if (!Buletin) return res.status(404).json({ msg: "Data Not Found" });

  try {
    const filepath = `./public/buletin/${Buletin.buletin}`;
    if (fs.existsSync(filepath)) {
      fs.unlinkSync(filepath);
    }
    await prisma.BuletinTable.delete({
      where: {
        id: Number(req.params.id),
      },
    });
    res.status(200).json({ msg: "Buletin Berhasil Dihapus" });
  } catch (error) {
    console.log(error.message);
  }
};

export const downloadBuletin = async (req, res) => {
  try {
    const response = await prisma.BuletinTable.findUnique({
      where: {
        id: Number(req.params.id),
      },
    });
    res.setHeader("Content-Type", response.contentType);
    res.setHeader(
      "Content-Disposition",
      `attachment; filename="${response.fileName}"`
    );
    return res.send(response.data);
  } catch (error) {
    res.status(404).json({ msg: error.message });
  }
};
