import express from 'express';
import {
   getBuletin,
   getBuletinById,
   createBuletin,
   updateBuletin,
   deleteBuletin,
   downloadBuletin,
   upLoad,
   getBuletinRecent
} from '../controllers/BuletinControler.js'

const router = express.Router();

router.get('/buletin', getBuletin);
router.get('/buletin-terbaru', getBuletinRecent);
router.get('/buletin/:id', getBuletinById);
router.post('/buletin', upLoad.single('buletin'), createBuletin);
router.patch('/buletin/:id',upLoad.single('buletin'), updateBuletin);
router.delete('/buletin/:id', deleteBuletin);
router.get('/download/:id', downloadBuletin)

export default router;