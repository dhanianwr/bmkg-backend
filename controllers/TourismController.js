import { PrismaClient } from "@prisma/client"
import path from 'path'
import multer from "multer";
import fs from 'fs'

const prisma = new PrismaClient();

const storage = multer.diskStorage({
    destination: (req, file, cb) => {
        cb(null, './public/tourism');
    },
    filename: (req, file, cb) => {
        cb(null, file.fieldname + '-' + Date.now() + path.extname(file.originalname));
    },
});

export const upLoad = multer({ storage: storage });

export const getTourism= async (req, res) => {
    try {
        const response = await prisma.tourism.findMany({
            orderBy: {
                createdAt: "desc",
              },
        });
        res.json(response);
    } catch (error) {
        console.log(error.message);
    }
}


export const getTourismById = async (req, res) => {
    try {
        const response = await prisma.tourism.findUnique({
            where: {
                id: Number (req.params.id)
            }
        });
        res.status(200).json(response);
    } catch (error) {
        res.status(404).json({msg: 'error.message'})
    }
}

export const getTourismSingle = async (req, res) => {
    try {
        const response = await prisma.tourism.findMany({
          orderBy: {
            createdAt: "desc",
          },
          take: 1,
        });
        res.json(response);
      } catch (error) {
        console.log(error.message);
      }
}

export const createTourism = async (req, res) => {
    try {
        if (req.file === null) {
            return res.status(400).json({ msg: 'Image file not provided' });
        }

        const name = req.body.name;
        const fileName = req.file.filename;
        const fileSize = req.file.size;
        const url = `${req.protocol}://${req.get("host")}/public/tourism/${fileName}`;
        const allowedType = ['.png', '.jpg', '.jpeg'];
        const ext = path.extname(req.file.originalname);

        if (!allowedType.includes(ext.toLowerCase())) {
            return res.status(422).json({ msg: 'Unsupported image format' });
        }

        if (fileSize > 2000000) {
            return res.status(422).json({ msg: 'Image file size should be less than 2 MB' });
        }

        await prisma.tourism.create({
            data: {
                name: name,
                foto: fileName,
                url: url
            },
        });

        res.status(201).json({ msg: 'Image uploaded successfully' });
    } catch (error) {
        console.log(error.message);
        res.status(500).json({ msg: 'Internal server error' });
    }
}

export const updateTourism = async (req, res) => {
    const Image = await prisma.tourism.findUnique({
        where: {
            id: Number(req.params.id)
        }
    });
    if (!Image) return res.status(404).json({ msg: 'No Data Found' });
    let fileName = "";
    if (req.file === null) {
        fileName = Image.foto;
    } else {
        const fileSize = req.file.size;
        const ext = path.extname(req.file.originalname);
        const allowedType = ['.png', '.jpg', '.jpeg'];

        if (!allowedType.includes(ext.toLowerCase())) {
            return res.status(422).json({ msg: 'Unsupported image format' });
        };

        if (fileSize > 2000000) {
            return res.status(422).json({ msg: 'Image file size should be less than 2 MB' });
        };
        const filepath = `./public/tourism/${Image.foto}`;

        if (fs.existsSync(filepath)) {
            fs.unlinkSync(filepath);
        };
        fileName = req.file.filename;
    }
    const name = req.body.name
    const url = `${req.protocol}://${req.get("host")}/public/tourism/${fileName}`;

    try {
        await prisma.tourism.update({
            data: { name: name, foto: fileName, url: url },
            where: {
                id: Number(req.params.id)
            }
        });
        res.status(200).json({ msg: 'Image berhasil diupdate' })
    } catch (error) {
        console.log(error.message)
    }
}

export const deleteTourism = async (req, res) => {
    const Image = await prisma.tourism.findUnique({
        where : {
            id: Number (req.params.id)
        }
    });
    if (!Image) return res.status(404).json({msg:'Data Not Found'});

    try {
        const filepath = `./public/tourism/${Image.foto}`;
        if (fs.existsSync(filepath)) {
            fs.unlinkSync(filepath);
        }
        await prisma.tourism.delete({
            where: {
                id : Number (req.params.id)
            }
        });
        res.status(200).json({msg: 'Foto Berhasil Dihapus'})
    } catch (error) {
        console.log(error.message);
    }
}