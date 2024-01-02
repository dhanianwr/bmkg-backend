import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

export const getWisata = async (req, res) => {
  try {
    const response = await prisma.destinasiwisata.findMany();
    res.status(200).json(response);
  } catch (error) {
    res.status(404).json({ msg: "error.message" });
  }
};

export const getWisataByName = async (req, res) => {
  const name = req.query.name;
  if (name) {
    try {
      const result = await prisma.destinasiwisata.findUnique({
        where: { name },
      });
      res.json(result);
    } catch (err) {
      console.error(err);
      res.status(500).send("Error querying the database");
    }
  } else {
    res.status(400).send("Please provide a name");
  }
};

export const getWisataById = async (req, res) => {
  try {
    const response = await prisma.destinasiwisata.findUnique({
      where: {
        id: Number(req.params.id),
      },
    });
    res.status(200).json(response);
  } catch (error) {
    res.status(404).json({ msg: "error.message" });
  }
};

export const createWisata = async (req, res) => {
  const { name, weather, wind, temp, humidity, wave, height } = req.body;
  try {
    await prisma.destinasiwisata.create({
      data: {
        name,
        weather,
        wind,
        temp,
        humidity,
        wave,
        height,
      },
    });
    res.status(201).json({ msg: "Data Berhasil Ditambahkan" });
  } catch (error) {
    res.status(400).json({ msg: error.message });
  }
};

export const updateWisata = async (req, res) => {
  const Wisata = await prisma.destinasiwisata.findUnique({
    where: {
      id: Number(req.params.id),
    },
  });
  if (!Wisata) return res.status(404).json({ msg: "Data Tidak Ditemukan" });
  const { name, weather, wind, temp, humidity, wave, height } = req.body;
  try {
    await prisma.destinasiwisata.update({
      data: { name, weather, wind, temp, humidity, wave, height },
      where: {
        id: Number(req.params.id),
      },
    });
    res.status(200).json({ msg: "Data Berhasil Diperbarui" });
  } catch (error) {
    console.log(error.message);
  }
};

export const deleteWisata = async (req, res) => {
  const Wisata = await prisma.destinasiwisata.findUnique({
    where: {
      id: Number(req.params.id),
    },
  });
  if (!Wisata) return res.status(404).json({ msg: "Data Not Found" });
  try {
    await prisma.destinasiwisata.delete({
      where: {
        id: Number(req.params.id),
      },
    });
    res.status(200).json({ msg: "Data Berhasil Dihapus" });
  } catch (error) {
    console.log(error.message);
  }
};
