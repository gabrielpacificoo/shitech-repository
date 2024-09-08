create database shimeji;
use shimeji;
create table shimeji (
id int primary key auto_increment,
dia date,
horario time,
temperaturaºC float (3.1),
umidade float (3.1)
);

insert into shimeji (dia, horario, temperaturaºC, umidade) values
('2024-02-22', '13:44:08', 12.8, 70),
('2024-02-22', '13:44:23', 13.9, 42),
('2024-02-22', '13:46:38', 11.2, 59),
('2024-02-22', '13:47:53', 12.4, 65),
('2024-02-22', '13:48:08', 15.1, 62);

select * from shimeji;

select * from shimeji
where horario > '13:44:08';