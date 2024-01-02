import express from 'express'
import {
    getCuacahariini,
    getCuacahariiniById,
    createCuacahariini,
    updateCuacahariini,
    deleteCuacahariini,
    upLoad,
    getCuacahariiniSingle
} from '../controllers/CuacahariiniControler.js'

const router = express.Router();

router.get('/cuacahariini', getCuacahariini)
router.get('/cuacahariini-single', getCuacahariiniSingle)
router.get('/cuacahariini/:id', getCuacahariiniById)
router.post('/cuacahariini/', upLoad.single('foto') ,createCuacahariini)
router.patch('/cuacahariini/:id', upLoad.single('foto') , updateCuacahariini)
router.delete('/cuacahariini/:id', deleteCuacahariini)

export default router