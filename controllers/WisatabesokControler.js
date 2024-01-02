import { PrismaClient } from "@prisma/client"

const prisma = new PrismaClient();

export const getWisatabesok = async (req, res) => {
    try {
        const response = await prisma.wisatabesok.findMany();
        res.json(response);
    } catch (error) {
        console.log(error.message);
    }
}

export const getWisataBesokByName = async (req, res) => {
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
  

export const getWisatabesokById = async (req, res) => {
    try {
        const response = await prisma.wisatabesok.findUnique({
            where: {
                id: Number (req.params.id)
            }
        });
        res.status(200).json(response);
    } catch (error) {
        res.status(404).json({msg: 'error.message'})
    }
}

export const createWisatabesok = async (req, res) => {
    const { name, weather, wind, temp, humidity, wave, height } = req.body
    try {
        await prisma.wisatabesok.create({
            data: {
                name,
                weather,
                wind,
                temp,
                humidity,
                wave,
                height
            }
        });
        res.status(201).json({ msg: 'Data Berhasil Ditambahkan' });
    } catch (error) {
        res.status(400).json({msg: error.message})
    }
}

export const updateWisatabesok = async(req, res) => {
    const Wisata = await prisma.wisatabesok.findUnique({
        where: {
            id: Number(req.params.id)
        }
    });
    if (!Wisata) return res.status(404).json({ msg: 'Data Tidak Ditemukan' });
    const { name, weather, wind, temp, humidity, wave, height } = req.body
    try {
        await prisma.wisatabesok.update({
            data: { name, weather, wind, temp, humidity, wave, height },
                where: {
                    id: Number(req.params.id)
                }
        });
        res.status(200).json({ msg: 'Data Berhasil Diperbarui' })
    } catch (error) {
        console.log(error.message)
    }
}

export const deleteWisatabesok = async(req, res) => {
    const Wisata = await prisma.wisatabesok.findUnique({
        where : {
            id: Number (req.params.id)
        }
    });
    if (!Wisata) return res.status(404).json({msg:'Data Not Found'});
    try {
        await prisma.wisatabesok.delete({
                where: {
                    id: Number(req.params.id)
                }
        });
        res.status(200).json({ msg: 'Data Berhasil Dihapus' })
    } catch (error) {
        console.log(error.message)
    }
}