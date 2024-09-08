create database champignon;
use champignon;
create table champignon (
id int primary key auto_increment,
dia date,
horario time,
temperaturaºC float (3.1),
umidade float (3.1)
);

insert into champignon (dia, horario, temperaturaºC, umidade) values
('2024-02-22', '19:00:00', 15.3, 60),
('2024-02-22', '19:00:15', 19.5, 63),
('2024-02-22', '19:00:30', 14.7, 57),
('2024-02-22', '19:00:45', 11.4, 67),
('2024-02-22', '19:01:00', 18.7, 55);

select * from champignon;

select * from champignon
where horario < '19:01:00';
