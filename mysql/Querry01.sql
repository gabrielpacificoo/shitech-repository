USE sprint1;

CREATE TABLE atleta (
	idAtleta int primary key auto_increment,
    Nome varchar(40),
    Modalidade varchar(40),
    qtdMedalha int
);

INSERT INTO atleta (Nome, Modalidade, qtdMedalha) VALUES
	('Guilherme', 'Levantamento de Peso', 5),
    ('Caio', 'Salto na vara', 2),
    ('Zaqueue', 'Natação', 1),
    ('Maria Eduarda', 'Corrida', 3),
    ('Gabriel', 'Futebol', '0');
    
SELECT * FROM atleta;

UPDATE atleta SET qtdMedalha = 2 WHERE idAtleta = 1;
UPDATE atleta SET qtdMedalha = 3 WHERE idAtleta in (2,3);
UPDATE atleta SET Nome = Duda WHERE idAtleta = 4;

SELECT * FROM atleta;

ALTER TABLE atleta ADD COLUMN dtNascimento date;

UPDATE atleta SET dtNascimento = '2006-02-15' WHERE idAtleta = 1;
UPDATE atleta SET dtNascimento = '2005-03-16' WHERE idAtleta = 2;
UPDATE atleta SET dtNascimento = '2005-03-17' WHERE idAtleta = 3;
UPDATE atleta SET dtNascimento = '2004-04-18' WHERE idAtleta = 4;
UPDATE atleta SET dtNascimento = '2004-04-19' WHERE idAtleta = 5;

SELECT * FROM atleta;

DELETE FROM atleta WHERE ID = 5;

SELECT * FROM atleta WHERE Modalidade != 'Natação';
SELECT * FROM atleta WHERE qtdMedalha >= 3;

ALTER TABLE atleta MODIFY COLUMN Modalidade varchar(60);

DESC atleta;

DROP TABLE atleta;
