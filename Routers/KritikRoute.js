import express from 'express'
import {
    getKritik,
    getKritikById,
    createKritik,
    deleteKritik
        } from '../controllers/KritikController.js'

const router = express.Router();

router.get('/kritik-saran' , getKritik)
router.get('/kritik-saran/:id', getKritikById)
router.post('/kritik-saran', createKritik)
router.delete('/kritik-saran/:id', deleteKritik)

export default router

