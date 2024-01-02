import express from 'express'
import {
    getCuacabesok,
    getCuacabesokById,
    createCuacabesok,
    updateCuacabesok,
    deleteCuacabesok,
    upLoad,
    getCuacabesokSingle
} from '../controllers/Cuacabesokcontroler.js'

const router = express.Router()

router.get('/cuaca-besok' ,getCuacabesok)
router.get('/cuaca-besok-single' ,getCuacabesokSingle)
router.get('/cuaca-besok/:id' , getCuacabesokById)
router.post('/cuaca-besok', upLoad.single('foto'), createCuacabesok)
router.patch('/cuaca-besok/:id', upLoad.single('foto'), updateCuacabesok)
router.delete('/cuaca-besok/:id', deleteCuacabesok)

export default router