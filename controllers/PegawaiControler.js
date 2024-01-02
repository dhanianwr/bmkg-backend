import { PrismaClient } from "@prisma/client"

const prisma = new PrismaClient();

export const getPegawai = async (req, res) => {
    try {
        const response = await prisma.pegawai.findMany();
        res.json(response)
    } catch (error) {
        console.log(error.message)
    }
}

export const getPegawaiById = async (req, res) => {
    try {
        const response = await prisma.pegawai.findUnique({
            where: {
                id: Number (req.params.id)
            }
        });
        res.status(200).json(response);
    } catch (error) {
        res.status(404).json({msg: 'error.message'})
    }
}

export const createPegawai = async (req, res) => {
    const { nama, nip, pangkat, jabatan } = req.body
    try {
        await prisma.pegawai.create({
            data: {
                nama,
                nip,
                pangkat,
                jabatan
            }
        });
        res.status(201).json({ msg: 'Pegawai Berhasil Ditambah' });
    } catch (error) {
        res.status(400).json({msg: error.message})
    }
}

export const updatePegawai = async(req, res) => {
    const Pegawai = await prisma.pegawai.findUnique({
        where: {
            id: Number(req.params.id)
        }
    });
    if (!Pegawai) return res.status(404).json({ msg: 'No Data Found' });
    const { nama, nip, pangkat, jabatan } = req.body
    try {
        await prisma.pegawai.update({
            data: { nama: nama, nip: nip ,pangkat: pangkat, jabatan: jabatan },
                where: {
                    id: Number(req.params.id)
                }
        });
        res.status(200).json({ msg: 'Pegawai berhasil diupdate' })
    } catch (error) {
        console.log(error.message)
    }
}

export const deletePegawai = async(req, res) => {
    const Pegawai = await prisma.pegawai.findUnique({
        where : {
            id: Number (req.params.id)
        }
    });
    if (!Pegawai) return res.status(404).json({msg:'Data Not Found'});
    try {
        await prisma.pegawai.delete({
                where: {
                    id: Number(req.params.id)
                }
        });
        res.status(200).json({ msg: 'Pegawai berhasil diupdate' })
    } catch (error) {
        console.log(error.message)
    }
}