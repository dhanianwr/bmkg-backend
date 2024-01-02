import express from 'express';
import {
    getBerita,
    getBeritaRecent,
    getBeritaRecentSelengkapnya,
    getBeritaById,
    updateBerita,
    createBerita,
    deleteBerita,
    upLoad } from '../controllers/BeritaControler.js'

const router = express.Router();

router.get('/berita', getBerita);
router.get('/berita-terbaru', getBeritaRecent);
router.get('/berita-lainnya', getBeritaRecentSelengkapnya);
router.get('/berita/:id', getBeritaById);
router.post('/berita', upLoad.single('gambar'), createBerita);
router.patch('/berita/:id',upLoad.single('gambar'), updateBerita);
router.delete('/berita/:id', deleteBerita);

export default router;