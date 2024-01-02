import express from "express";
import {
  getTourism,
  getTourismById,
  getTourismSingle,
  createTourism,
  updateTourism,
  deleteTourism,
  upLoad,
} from "../controllers/TourismController.js";

const router = express.Router();

router.get("/tourism", getTourism);
router.get("/tourism-single", getTourismSingle);
router.get("/tourism/:id", getTourismById);
router.post("/tourism", upLoad.single("foto"), createTourism);
router.patch("/tourism/:id", upLoad.single("foto"), updateTourism);
router.delete("/tourism/:id", deleteTourism);

export default router;
