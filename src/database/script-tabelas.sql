-- Criação do banco de dados
CREATE DATABASE projetoIndividual;

-- Selecionar o banco de dados
USE projetoIndividual;

-- Criação da tabela usuario
CREATE TABLE usuario (
    idUsuario INT PRIMARY KEY AUTO_INCREMENT,
    NomeUsuario VARCHAR(50) UNIQUE,
    email VARCHAR(100) UNIQUE,
    senha VARCHAR(255)
);

-- Inserir um valor na tabela usuario
INSERT INTO usuario (NomeUsuario, email, senha)
VALUES ('john_doe', 'john_doe@example.com', 'password123');

-- Criação da tabela historia
CREATE TABLE historia (
    idHistoria INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(45),
    descricao VARCHAR(255)
);

-- Inserir um valor na tabela historia
INSERT INTO historia (titulo, descricao)
VALUES ('Aventuras no Mar', 'Uma emocionante jornada de descobertas marítimas.');

-- Criação da tabela curtida
CREATE TABLE curtida (
    idCurtida INT PRIMARY KEY AUTO_INCREMENT,
    fkUsuario INT,
    fkHistoria INT,
    data DATE,
    FOREIGN KEY (fkUsuario) REFERENCES usuario(idUsuario),
    FOREIGN KEY (fkHistoria) REFERENCES historia(idHistoria)
);

-- Inserir um valor na tabela curtida
INSERT INTO curtida (fkUsuario, fkHistoria, data)
VALUES (1, 1, CURDATE());

desc usuario;

SELECT 
    u.NomeUsuario, 
    h.titulo, 
    h.descricao, 
    c.data
FROM 
    curtida c
JOIN 
    usuario u ON c.fkUsuario = u.idUsuario
JOIN 
    historia h ON c.fkHistoria = h.idHistoria;
    
    
    SELECT 
    h.titulo, 
    h.descricao, 
    COUNT(c.idCurtida) AS total_curtidas
FROM 
    historia h
JOIN 
    curtida c ON h.idHistoria = c.fkHistoria
GROUP BY 
    h.idHistoria, h.titulo, h.descricao
ORDER BY 
    total_curtidas DESC;
    
    SELECT COUNT(*) AS total_usuarios FROM usuario;
    select * from usuario;

SELECT COUNT(*) AS total_historias FROM historia;
