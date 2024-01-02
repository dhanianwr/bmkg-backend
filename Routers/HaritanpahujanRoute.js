import express from 'express';
import {
    getImage,
    getImageById,
    updateImage,
    createImage,
    deleteImage,
    upLoad,
    getImageSingle
} from '../controllers/Haritanpahujan.js'

const router = express.Router();

router.get('/hari-tanpa-hujan', getImage);
router.get('/hari-tanpa-hujan-single', getImageSingle);
router.get('/hari-tanpa-hujan/:id', getImageById);
router.post('/hari-tanpa-hujan', upLoad.single('foto'), createImage);
router.patch('/hari-tanpa-hujan/:id',upLoad.single('foto'), updateImage);
router.delete('/hari-tanpa-hujan/:id', deleteImage);

export default router;