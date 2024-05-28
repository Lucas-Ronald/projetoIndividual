var historiaModel = require("../models/historiaModel");

function contarHistorias(req, res) {
    historiaModel.contarHistorias()
        .then((resultado) => {
            res.status(200).json(resultado);
        })
        .catch((erro) => {
            console.log(erro);
            console.log("Houve um erro ao contar as histórias: ", erro.sqlMessage);
            res.status(500).json(erro.sqlMessage);
        });
}

module.exports = {
    contarHistorias
};
