var database = require("../database/config");

function buscarTop5Pontuacao() {
    var instrucaoSql = `
    SELECT u.NomeUsuario AS Nome, r.pontuacao AS Pontuacao
    FROM ranking as r
    JOIN usuario as u ON r.fkUsuario = u.NomeUsuario
    ORDER BY r.pontuacao DESC
    LIMIT 5`;

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

module.exports = {
    buscarTop5Pontuacao
}