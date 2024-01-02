import express from 'express';
import {
    getImage,
    getImageById,
    updateImage,
    createImage,
    deleteImage,
    upLoad,
    getImageSingle
} from '../controllers/NormalmusimControler.js'

const router = express.Router();

router.get('/normal-musim', getImage);
router.get('/normal-musim-single', getImageSingle);
router.get('/normal-musim/:id', getImageById);
router.post('/normal-musim', upLoad.single('foto'), createImage);
router.patch('/normal-musim/:id',upLoad.single('foto'), updateImage);
router.delete('/normal-musim/:id', deleteImage);

export default router;