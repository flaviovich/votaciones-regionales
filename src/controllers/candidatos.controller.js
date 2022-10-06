import conexion from "../prisma.js";

export const crearCandidato = async (req, res) => {
    const data = req.body;
    
    try {
        const partidoPolitico = await conexion.partidoPolitico.findUniqueOrThrow({
            where: {id: data.partidoPoliticoId},
            select: {
                nombre: true,
            }
        });

        const region = await conexion.region.findUniqueOrThrow({
            where: {id: data.regionId},
            select: {
                nombre: true,
            }
        });

        const candidato = await conexion.candidato.findFirst({
            where: {
                partidoPoliticoId: data.partidoPoliticoId,
                regionId: data.regionId,
            },
        });

        if (candidato !== null) {
            throw new Error(
                `El candidato por el partido ${partidoPolitico.nombre} por la region ${region.nombre} ya existe`
            );
        }

        const resultado = await conexion.candidato.create({
            data,
        });

        return res.status(201).json(resultado);
    } catch(error) {
        console.log("mensaje", error.message);
        console.log("nombre", error.name);

        if (error.name === "NotFoundError") {
            return res.status(400).json({
                message: "Error al crear el candidato",
                content: error.message,
            });
        }
        return res.status(400).json({
            message: 'Error al crear el candidato',
            content: error.message
        });
    }
};

export const listarCandidatos = async (req, res) => {
    const { regionId, partidoPoliticoId } = req.query;

    let where = {}
    if (regionId){
        console.log("hay regionId")
        where = {...where, regionId: +regionId}
    }
    if (partidoPoliticoId){
        console.log("hay partidoPoliticoId");
        where = {...where, partidoPoliticoId: +partidoPoliticoId}
    }

    const candidatos = await conexion.candidato.findMany({
        where,
    });
    return res.json({
        candidatos,
    });
};