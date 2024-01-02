import express from 'express';
import {
    getImage,
    getImageById,
    updateImage,
    createImage,
    deleteImage,
    upLoad,
    getImageSingle
} from '../controllers/AnalisiscurahhujanControler.js'

const router = express.Router();

router.get('/analisis-curah-hujan', getImage);
router.get('/analisis-curah-hujan-single', getImageSingle);
router.get('/analisis-curah-hujan/:id', getImageById);
router.post('/analisis-curah-hujan', upLoad.single('foto'), createImage);
router.patch('/analisis-curah-hujan/:id',upLoad.single('foto'), updateImage);
router.delete('/analisis-curah-hujan/:id', deleteImage);

export default router;