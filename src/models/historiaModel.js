var database = require("../database/config");

function contarHistorias() {
    var instrucaoSql = `
        SELECT COUNT(*) AS totalHistorias FROM historia;
    `;
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

module.exports = {
    contarHistorias
};
