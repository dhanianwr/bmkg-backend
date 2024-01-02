import express from "express";
import cors from "cors";
import db from "./config/Database.js";
import cookieParser from "cookie-parser";
import dotenv from "dotenv";
import ImageRoute from "./Routers/ImageRouter.js";
import UserRoute from "./Routers/UserRoute.js";
import BuletinRoute from "./Routers/BuletinRoute.js";
import BeritaRoute from "./Routers/BeritaRoute.js";
import PegawaiRoute from "./Routers/PegawaiRoute.js";
import CuacahariiniRoute from "./Routers/CuacahariiniRoute.js";
import AnalisiscurahhujanRoute from "./Routers/AnalisiscurahhujanRoute.js";
import AnalisissifathujanRoute from "./Routers/AnalisissifathujanRoute.js";
import PrakiraancurahhujanRoute from "./Routers/PrakiraancurahhujanRoute.js";
import HaritanpahujanRoute from "./Routers/HaritanpahujanRoute.js";
import NormalmusimRoute from "./Routers/NormalmusimRoute.js";
import KritikRoute from "./Routers/KritikRoute.js";
import CuacabesokRoute from "./Routers/CuacabesokRoute.js";
import PeringatanRoute from "./Routers/PeringatanRoute.js";
import TourismRoute from './Routers/TourismRoute.js'
import path from "path";
import { fileURLToPath } from "url";
import Users from "./models/UserModel.js";
dotenv.config();

const app = express();
const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

app.use(cookieParser());
app.use(cors({ credentials: true, origin: "http://localhost:5173" }));
app.use(express.json());
app.use("/public", express.static(path.join(__dirname, "public")));
app.use(ImageRoute);
app.use(UserRoute);
app.use(BuletinRoute);
app.use(BeritaRoute);
app.use(PegawaiRoute);
app.use(CuacahariiniRoute);
app.use(AnalisiscurahhujanRoute);
app.use(AnalisissifathujanRoute);
app.use(PrakiraancurahhujanRoute);
app.use(HaritanpahujanRoute);
app.use(NormalmusimRoute);
app.use(KritikRoute);
app.use(CuacabesokRoute);
app.use(PeringatanRoute);
app.use(TourismRoute)

try {
  await db.authenticate();
  await Users.sync();
} catch (error) {}

app.listen(process.env.APP_PORT, () => {
  console.log("SERVER BERJALAN di Localhost 5000");
});
