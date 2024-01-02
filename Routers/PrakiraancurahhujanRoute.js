import express from 'express';
import {
    getImage,
    getImageById,
    updateImage,
    createImage,
    deleteImage,
    upLoad,
    getImageSingle
} from '../controllers/PrakiraancurahhujanControler.js'

const router = express.Router();

router.get('/prakiraan-curah-hujan', getImage);
router.get('/prakiraan-curah-hujan-single', getImageSingle);
router.get('/prakiraan-curah-hujan/:id', getImageById);
router.post('/prakiraan-curah-hujan', upLoad.single('foto'), createImage);
router.patch('/prakiraan-curah-hujan/:id',upLoad.single('foto'), updateImage);
router.delete('/prakiraan-curah-hujan/:id', deleteImage);

export default router;