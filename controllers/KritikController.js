import { PrismaClient }from '@prisma/client'
import Joi from '@hapi/joi';

const prisma = new PrismaClient();
const kritikSaranSchema = Joi.object({
    nama: Joi.string().required().messages({
        'any.required': 'Nama is required',
    }),
    email: Joi.string().email().required().messages({
        'any.required': 'Email is required',
        'string.email': 'Email must be a valid email address',
    }),
    nohp: Joi.string().required().messages({
        'any.required': 'No. HP is required',
    }),
    kritik: Joi.string().required().messages({
        'any.required': 'Kritik is required',
    }),
    saran: Joi.string().required().messages({
        'any.required': 'Saran is required',
    }),
});

export const getKritik = async(req, res) => {
    try {
        const Data = await prisma.kritiksaran.findMany({
            orderBy : {
                createAt: "desc"
            }
        });
        res.status(200).json(Data)
    } catch (error) {
        res.send(error.message)
    }
}

export const getKritikById = async (req, res) => {
    try {
        const Data = await prisma.kritiksaran.findUnique({
            where: {
                id: Number(req.params.id)
            }
        });
        res.status(200).json(Data)
    } catch (error) {
        res.send(error.message)
    }
}

export const createKritik = async (req, res) => {
    const {nama, email, nohp, kritik, saran} = req.body
    try {
        const validationResult = kritikSaranSchema.validate({
            nama,
            email,
            nohp,
            kritik,
            saran
        });
        if (validationResult.error) {
            return res.status(400).json({msg: validationResult.error.details[0].message});
            }
        await prisma.kritiksaran.create({
            data: {
                nama,
                email,
                nohp,
                kritik,
                saran
            }
        });
        res.status(201).json({msg: 'Terimakasih Sudah Mengisi Form Kritik dan Saran'})
    } catch (error) {
        res.status(400).json({msg: error.message})
    }
}

export const updateKritik = async (req, res) => {
    const Data = await prisma.kritiksaran.findUnique({
        where: {
            id: Number(req.params.id)
        }
    });
    if (!Data) return res.status(404).json({msg: "Data Tidak Ada"})
    const { nama, email, nohp, kritik, saran } = req.body
        try {
            await prisma.kritiksaran.update({
            data: { nama: nama, email: email, nohp: nohp, kritik: kritik, saran: saran },
                    where: {
                        id: Number(req.params.id)
                    }
            })
            res.status(200).json({msg: "Berhasil Update"})
        } catch (error) {
            console.log(error.message)
        }
}

export const deleteKritik = async (req, res) => {
    const Data = await prisma.kritiksaran.findUnique({
        where: {
            id: Number(req.params.id)
        }
    });
    if (!Data) return res.status(404).json({msg: 'Data Tidak Ada'})
    try {
        await prisma.kritiksaran.delete({
            where: {
                id: Number(req.params.id)
            }
        })
        res.status(200).json({msg: 'Berhasil Dihapus'})
    } catch (error) {
        console.log(error.message)
    }
}
