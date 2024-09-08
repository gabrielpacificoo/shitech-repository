CREATE DATABASE Shitech;
USE Shitech;

CREATE TABLE cadastro(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nivel VARCHAR(45) CONSTRAINT chknivel CHECK(nivel IN('administrador','gerente','funcionario')),
    usuario VARCHAR(45), 
    cpf CHAR(14),
    email VARCHAR(50),
    senha VARCHAR(50)
);

INSERT INTO cadastro (nivel, usuario, cpf, email, senha) VALUES
('administrador', 'Guilherme Augusto Figueiredo', '123.456.789-09','guilherme.figueiredo@shitech.com', 'shitech123'),
('administrador', 'Gabriel Feitosa Pacifico', '321.654.789-10','gabriel.feitosa@shitech.com', 'shitech321'),
('administrador', 'Maria Eduarda Silva da Costa Guilherme', '032.423.735-04','maria.costa@shitech.com', 'shitech234'),
('administrador', 'Victor Silva de Lima', '042.345.655-01','victor.lima@shitech.com', 'shitech754'),
('administrador', 'Kaio Gabriel Ricz', '065.245.743-03','kaio.ricz@shitech.com', 'shitech723'),
('gerente', 'Ronaldo Roberto Oliveira', '512.353.645-05','ronaldo.oliveira@empresa.com', 'empresa123'),
('funcionario', 'Viviane da Silva', '098.321.532-03','viviane.silva@empresa.com', 'empresa532'),
('funcionario', 'Pedro Pedroso', '234.332.876-09','pedro.pedroso@empresa.com', 'empresa532'),
('funcionario', 'Marcos Gustavo', '643.312.541-03','marcos.gustavo@empresa.com', 'empresa532');
-- TODOS OS CPF'S, EMAILS E SENHAS UTILIZADOS SÃO FICTICIOS.
SELECT * FROM cadastro;
desc cadastro;

CREATE TABLE champignon(
id INT PRIMARY KEY AUTO_INCREMENT,
dia date,
horario TIME,
temperaturaºC DECIMAL(5,2),
umidade DECIMAL(5,2)	
);
INSERT INTO champignon (dia, horario, temperaturaºC, umidade) VALUES
('2024-09-01','08:00:00',22.5, 85.0),
('2024-09-01','08:30:00',23.0, 80.0),
('2024-09-01','09:00:00',21.5, 82.0),
('2024-09-02','14:30:00',22.0, 83.0),
('2024-09-02','15:00:00',23.5, 79.0),
('2024-09-02','15:30:00',21.3, 83.0),
('2024-09-03','09:00:00',22.0, 83.0),
('2024-09-03','09:30:00',22.5, 83.0),
('2024-09-03','10:00:00',23.0, 83.0),
('2024-09-04','12:00:00',22.7, 83.0),
('2024-09-04','12:30:00',23.1, 83.0),
('2024-09-04','13:00:00',21.0, 83.0);

SELECT * FROM champignon;
desc champignon;

CREATE TABLE shimeji(
id INT PRIMARY KEY AUTO_INCREMENT,
dia date,
horario TIME,
temperaturaºC DECIMAL(5,2),
umidade DECIMAL(5,2)	
);

INSERT INTO shimeji (dia, horario, temperaturaºC, umidade) VALUES
('2024-09-01', '08:00:00', 22.5, 85.0),
('2024-09-01', '08:30:00', 23.0, 80.0),
('2024-09-01', '09:00:00', 21.5, 82.0),
('2024-09-02', '14:30:00', 22.0, 83.0),
('2024-09-02', '15:00:00', 23.5, 79.0),
('2024-09-02', '15:30:00', 21.3, 83.0),
('2024-09-03', '09:00:00', 22.0, 83.0),
('2024-09-03', '09:30:00', 22.5, 83.0),
('2024-09-03', '10:00:00', 23.0, 83.0),
('2024-09-04', '12:00:00', 22.7, 83.0),
('2024-09-04', '12:30:00', 23.1, 83.0),
('2024-09-04', '13:00:00', 21.0, 83.0);
SELECT * FROM shimeji;
desc shimeji;
