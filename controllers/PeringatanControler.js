import { PrismaClient } from "@prisma/client"

const prisma = new PrismaClient();

export const getPeringatan = async (req, res) => {
    try {
        const response = await prisma.peringatandini.findMany({
            orderBy : {
                createdAt: "desc"
            },
        });
        res.json(response)
    } catch (error) {
        console.log(error.message)
    }
}

export const getPeringatanSingle = async (req, res) => {
    try {
        const response = await prisma.peringatandini.findMany({
            orderBy : {
                createdAt: "desc"
            },
            take: 1,
        });
        res.json(response)
    } catch (error) {
        console.log(error.message)
    }
}

export const getPeringatanById = async (req, res) => {
    try {
        const response = await prisma.peringatandini.findUnique({
            where: {
                id: Number (req.params.id)
            }
        });
        res.status(200).json(response);
    } catch (error) {
        res.status(404).json({msg: 'error.message'})
    }
}

export const createPeringatan = async (req, res) => {
    const { peringatan, tanggal } = req.body
    try {
        await prisma.peringatandini.create({
            data: {
                peringatan,
                tanggal
            }
        });
        res.status(201).json({ msg: 'Data Berhasil Ditambah' });
    } catch (error) {
        res.status(400).json({msg: error.message})
    }
}

export const updatePeringatan = async(req, res) => {
    const Peringatan = await prisma.peringatandini.findUnique({
        where: {
            id: Number(req.params.id)
        }
    });
    if (!Peringatan) return res.status(404).json({ msg: 'No Data Found' });
    const { peringatan, tanggal } = req.body
    try {
        await prisma.peringatandini.update({
            data: { peringatan, tanggal },
                where: {
                    id: Number(req.params.id)
                }
        });
        res.status(200).json({ msg: 'Data berhasil diupdate' })
    } catch (error) {
        console.log(error.message)
    }
}

export const deletePeringatan = async(req, res) => {
    const Peringatan = await prisma.peringatandini.findUnique({
        where : {
            id: Number (req.params.id)
        }
    });
    if (!Peringatan) return res.status(404).json({msg:'Data Not Found'});
    try {
        await prisma.peringatandini.delete({
                where: {
                    id: Number(req.params.id)
                }
        });
        res.status(200).json({ msg: 'Data berhasil diupdate' })
    } catch (error) {
        console.log(error.message)
    }
}