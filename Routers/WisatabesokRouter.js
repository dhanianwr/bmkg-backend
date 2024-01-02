import express from 'express'
import {
    getWisatabesok,
    getWisatabesokById,
    createWisatabesok,
    updateWisatabesok,
    deleteWisatabesok
} from '../controllers/WisatabesokControler.js'

const router = express.Router();

router.get('/besok', getWisatabesok)
router.get('/wisata-besok:id', getWisatabesokById)
router.post('/wisata-besok', createWisatabesok)
router.patch('/wisata-besok/:id', updateWisatabesok)
router.delete('/wisata-besok/:id', deleteWisatabesok)

export default router