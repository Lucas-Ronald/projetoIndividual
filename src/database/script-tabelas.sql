create database projetoIndividual;
use projetoIndividual;

CREATE TABLE usuario (
    idUsuario INT PRIMARY KEY AUTO_INCREMENT,
    NomeUsuario VARCHAR(50) UNIQUE,
    email VARCHAR(100) UNIQUE,
    senha VARCHAR(255) -- Senhas devem ser armazenadas como hashes
);

insert into usuario (NomeUsuario, email, senha) values 
('Lucas', 'lucas@gmail.com', 'lucas123');

select * from usuario;