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
VALUES ('Teste123', 'teste123@example.com', 'teste123');

-- Criação da tabela historia
CREATE TABLE historia (
    idHistoria INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(255),
    descricao text
);

-- Inserir um valor na tabela historia
INSERT INTO historia (titulo, descricao) VALUES  
('Nascimento de Jesus', 'História onde conta a sobre o nascimento de Jesus'),
('Tentação no deserto', 'História onde conta sobre quando Jesus foi tentado por Satanás'),
('Jesus anda sobre as águas', 'Jesus um homem de muita fé');

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

-- Criação da tabela pontuacao
CREATE TABLE pontuacao (
idPontuacao int primary key auto_increment,
usuario varchar(45),
ponto int,
data date);

desc usuario;
desc historia;
desc curtida;

select * from usuario;
select * from pontuacao;
select * from curtida;

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



  

