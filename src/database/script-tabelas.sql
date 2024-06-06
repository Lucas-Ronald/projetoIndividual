-- Criação do banco de dados
CREATE DATABASE projetoIndividual;

-- Selecionar o banco de dados
USE projetoIndividual;

-- Criação da tabela usuario
CREATE TABLE usuario (
    idUsuario INT PRIMARY KEY AUTO_INCREMENT,
    NomeUsuario VARCHAR(50) UNIQUE,
    email VARCHAR(100) UNIQUE,
    senha VARCHAR(255),
    dataCadastro date
);

-- Criação da tabela historia
CREATE TABLE historia (
    idHistoria INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(255),
    descricao text
);
INSERT INTO historia (titulo, descricao) VALUES
('NASCIMENTO DE JESUS', 'Maria, uma jovem de Nazaré, recebe a visita do anjo Gabriel, anunciando que ela conceberá Jesus pelo Espírito Santo. Com José ao seu lado, eles viajam para Belém, onde Jesus nasce numa manjedoura. Pastores e magos vêm adorá-lo, e a família foge para o Egito para escapar do rei Herodes. Após sua morte, eles retornam a Nazaré.'),
('MILAGRES E ENSINOS DE JESUS', 'Os milagres e ensinamentos de Jesus foram fundamentais em seu ministério. Através dos milagres, ele demonstrou seu poder sobre a natureza e as doenças, trazendo alívio ao sofrimento humano. Seus ensinamentos desafiaram normas sociais e religiosas, destacando o amor ao próximo, a humildade e a justiça. Seu legado continua a inspirar milhões, oferecendo esperança e redenção através do amor e da compaixão.'),
('TENTAÇÃO NO DESERTO', 'A tentação de Jesus no deserto aconteceu logo após seu batismo. Levado pelo Espírito Santo, Jesus jejuou por quarenta dias e foi tentado pelo diabo em três ocasiões, desafiando sua fome, confiança em Deus e lealdade ao Pai. Jesus resistiu a todas as tentações usando as Escrituras. Este evento reafirmou sua identidade como Filho de Deus e sua total submissão à vontade divina, marcando o início de seu ministério público.'),
('CRUCIFICAÇÃO E RESSURREIÇÃO', 'A crucificação de Jesus representou seu sacrifício supremo pelos pecados da humanidade, enquanto sua ressurreição demonstrou sua vitória sobre a morte, oferecendo esperança de vida eterna para todos que creem. Esses eventos centrais da fé cristã destacam o amor, o perdão e o poder redentor de Jesus.'),
('O FILHO PRÓDIGO', 'A parábola do filho pródigo destaca o perdão e a misericórdia de Deus. Conta a história de um filho que desperdiça sua herança, mas é acolhido de volta pelo pai com amor incondicional, ensinando que, não importa o quão longe tenhamos ido, sempre podemos encontrar perdão e restauração em Deus. Essa parábola nos lembra da importância do arrependimento e da humildade em reconhecer nossos erros.'),
('O BOM SAMARITANO', 'Na parábola do Bom Samaritano, Jesus conta a história de um homem que foi atacado por ladrões e deixado à beira da estrada, meio morto. Tanto um sacerdote quanto um levita, ao encontrá-lo, passaram pelo outro lado da estrada, evitando ajudar. No entanto, um samaritano, tradicionalmente desprezado pelos judeus, teve compaixão e cuidou do homem ferido. Ele o levou a uma hospedaria, pagou pelas suas despesas e garantiu que fosse bem cuidado. Jesus destacou a atitude compassiva do samaritano, ensinando que o amor ao próximo não conhece fronteiras ou preconceitos.'),
('ÚLTIMA CEIA', 'Na Última Ceia, Jesus compartilhou pão e vinho com seus discípulos, simbolizando seu corpo e sangue. Ele predisse sua traição e ensinou sobre amor e serviço. Foi um momento de profunda comunhão antes da sua crucificação.'); 

-- Criação da tabela quiz
CREATE TABLE  quiz (
idQuiz int primary key auto_increment,
nomeQuiz varchar(50),
qtdPerguntas int
);

insert into quiz (nomeQuiz, qtdPerguntas) values 
('Perguntas Jesus', 15);

-- Criação da tabela ranking
CREATE TABLE ranking (
idPontuacao int primary key auto_increment,
fkUsuario varchar(50),
constraint fkUsuarioRanking foreign key (fkUsuario) references usuario (NomeUsuario),
fkQuiz int,
constraint fkQuizRanking foreign key (fkQuiz) references quiz (idQuiz),
dtQuiz datetime,
pontuacao int);

desc usuario;
desc historia;
desc ranking;
desc quiz;

select * from usuario;
select * from ranking;
select * from quiz;
select * from historia;