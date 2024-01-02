import express from 'express';
import {
    getImage,
    getImageById,
    updateImage,
    createImage,
    deleteImage,
    upLoad,
    getImageSingle
} from '../controllers/AnalisissifathujanControler.js'

const router = express.Router();

router.get('/analisis-sifat-hujan', getImage);
router.get('/analisis-sifat-hujan-single', getImageSingle);
router.get('/analisis-sifat-hujan/:id', getImageById);
router.post('/analisis-sifat-hujan', upLoad.single('foto'), createImage);
router.patch('/analisis-sifat-hujan/:id',upLoad.single('foto'), updateImage);
router.delete('/analisis-sifat-hujan/:id', deleteImage);

export default router;