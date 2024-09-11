CREATE DATABASE Shitech;
USE Shitech;

CREATE TABLE cadastro(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nivel VARCHAR(45), 
    CONSTRAINT chknivel CHECK(nivel IN('administrador','gerente','funcionario')),
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
DESC cadastro;

CREATE TABLE produto(
id INT PRIMARY KEY AUTO_INCREMENT,
tipo CHAR(10),
CONSTRAINT chkTipo CHECK (tipo in('Shimeji', 'Champignon')),
dia date,
horario TIME,
temperaturaºC DECIMAL(5,2),
umidade DECIMAL(5,2)	
);

INSERT INTO produto (tipo, dia, horario, temperaturaºC, umidade) VALUES
('Champignon','2024-09-01','08:00:00',22.5, 85.0),
('Champignon','2024-09-01','08:30:00',23.0, 80.0),
('Champignon','2024-09-01','09:00:00',21.5, 82.0),
('Shimeji','2024-09-02','14:30:00',22.0, 83.0),
('Shimeji','2024-09-02','15:00:00',23.5, 79.0),
('Shimeji','2024-09-02','15:30:00',21.3, 83.0),
('Champignon','2024-09-03','09:00:00',22.0, 83.0),
('Champignon','2024-09-03','09:30:00',22.5, 83.0),
('Champignon','2024-09-03','10:00:00',23.0, 83.0),
('Shimeji','2024-09-04','12:00:00',22.7, 83.0),
('Shimeji','2024-09-04','12:30:00',23.1, 83.0),
('Shimeji','2024-09-04','13:00:00',21.0, 83.0);

SELECT * FROM produto;
DESC produto;

CREATE TABLE cliente(
id INT PRIMARY KEY AUTO_INCREMENT,
nomeEmpresa VARCHAR(45),
CNPJ CHAR(18),
responsavel VARCHAR(45)	
);

INSERT INTO cliente (nomeEmpresa, CNPJ, responsavel) VALUES
('EmpresaXPTO', '62.526.818/0001-08', 'Jeremias da Silva'),
('EmpresaXPTO2', '09.036.250/0001-56', 'Ronaldo Roberto Oliveira'),
('EmpresaXPTO3', '65.210.622/0001-90', 'Gabriel Souza'),
('EmpresaXPTO4', '65.210.622/0001-90', 'Odair Afonso'),
('EmpresaXPTO5', '76.923.683/0001-10', 'Jefferson Camargo');
-- TODOS OS CNPJ's E NOMES SÃO FICTICIOS.
SELECT * FROM cliente;
desc cliente;

