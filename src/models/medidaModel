var database = require("../database/config");

function buscarTop5Pontuacao() {
    var instrucaoSql = `
    SELECT usuario, ponto 
    FROM pontuacao 
    ORDER BY ponto DESC 
    LIMIT 5`;

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

module.exports = {
    buscarTop5Pontuacao
}