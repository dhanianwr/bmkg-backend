import express from "express";
import {
  getPeringatan,
  getPeringatanById,
  createPeringatan,
  updatePeringatan,
  deletePeringatan,
  getPeringatanSingle,
} from "../controllers/PeringatanControler.js";

const router = express.Router();

router.get("/peringatan", getPeringatan);
router.get("/peringatan-single", getPeringatanSingle);
router.get("/peringatan/:id", getPeringatanById);
router.post("/peringatan", createPeringatan);
router.patch("/peringatan/:id", updatePeringatan);
router.delete("/peringatan/:id", deletePeringatan);

export default router;
