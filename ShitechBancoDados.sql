create database Shitech;
use Shitech;
create table cadastro (
idcadastro int primary key auto_increment,
nivel varchar(45) constraint chknivel check(nivel in('administrador', 'gerente', 'funcionario')),
usuário varchar(45),
cpf char (11),
email varchar(50),
senha varchar(50)
);

insert into cadastro (nivel, usuário, cpf, email, senha) values
('administrador', 'Kaio Ricz', '54538719876', 'kaio.ricz@sptech.school', 'Khalix1523021'),
('administrador', 'Guilherme Figueredo', '92739719226', 'guilherme.figueiredo@sptech.school', 'Asusblock'),
('administrador', 'Gariel Pacifico', '22397414289', 'gabriel.pacifico@sptech.school', 'Cocageladinha'),
('administrador', 'Maria Guilherme', '92739719226', 'maria.guilherme@sptech.school', 'P0k3m0n'),
('administrador', 'Victor Lima', 34566551362, 'victor.slima@sptech.school', 'Squick'),
('gerente', 'Fernando Brandão', 19220032421, 'fernando.brandao@sptech.school', 'estufashitech'),
('gerente', 'Vivian Silva', 51362345665, 'vivian.silva@sptech.school', 'projetoinovação'),
('funcionario', 'Clara Faria', 56634551419, 'clara.faria@sptech.school', 'aplicationgit'),
('funcionario', 'braian', 65513900362, 'braian.braga@sptech.school', 'lógicapura'),
('funcionario', 'julia.lima', 13623278554, 'julia.lima@sptech.school', 'horadoshow');

select * from cadastro;



