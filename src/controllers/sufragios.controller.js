import conexion from "../prisma.js";

export const crearSufragio = async (req, res) => {
    const { candidatoId, votanteId } = req.body;
    try {
        await conexion.candidato.findUniqueOrThrow({ where: { id: candidatoId } });

        await conexion.votante.findUniqueOrThrow({ where: { dni: votanteId } });

        const sufragio = await conexion.sufragio.findFirst({ where: { votanteId } });

        if (sufragio) {
            return res.status(400).json({
              message: "El votante ya realizo su voto",
              content: null,
            });
          }
      
          await conexion.sufragio.create({
            data: {
              candidatoId,
              votanteId,
            },
          });
      
          return res.status(201).json({
            message: "Se registro el voto exitosamente",
          });
        } catch (error) {
          return res.status(400).json({
            message: "Error al registrar el sufragio",
            content: error.message,
          });
        }
      };

export const listarResultados = async (req, res) => {
    const { region } = req.params;
    console.log(region);

    const data = await conexion.sufragio.groupBy({
      by: ["candidatoId"],
      _count: {
        _all: true,
      },
      where: {
        candidato: {
          region: {
            nombre: region,
          },
        },
      },
    });

    return res.status(200).json({
        message: null,
        content: data,
    });
};
