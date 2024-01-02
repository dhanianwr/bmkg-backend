import express from 'express';
import {
    getImage,
    getImageById,
    updateImage,
    createImage,
    deleteImage,
    upLoad
} from '../controllers/ImageControlers.js'

const router = express.Router();

router.get('/galeri', getImage);
router.get('/galeri/:id', getImageById);
router.post('/galeri', upLoad.single('foto'), createImage);
router.patch('/galeri/:id',upLoad.single('foto'), updateImage);
router.delete('/galeri/:id', deleteImage);

export default router;