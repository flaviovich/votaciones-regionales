import { Router } from "express";
import { 
    crearCandidato,
    listarCandidatos
} from "../controllers/candidatos.controller.js";

export const candidatosRouter = Router();

candidatosRouter.route("/candidato").post(crearCandidato).get(listarCandidatos);
//candidatosRouter.get("/candidato", crearCandidato);
