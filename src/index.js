import express from "express";
import dotenv from "dotenv";
import cors from "cors";
import { candidatosRouter } from "./routes/candidatos.routes.js";
import { votantesRouter } from "./routes/votantes.routes.js";
import { sufragiosRouter } from "./routes/sufragios.routes.js";

dotenv.config();

const server = express();
const port = process.env.PORT ?? 5000;

server.use(cors({
    origin: ["http://localhost:5500", "http://127.0.0.1:5500"],
    methods: ["GET", "POST"],
}));

server.use(express.json());

server.use(candidatosRouter);
server.use(votantesRouter);
server.use(sufragiosRouter);

server.listen(port, () => {
    console.log(`Servidor corriendo exitosamente en el puerto ${port}`);
} );
