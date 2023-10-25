create database escola;

show databases;

use escola;

create table aluno (
id_aluno int primary key auto_increment,
nome varchar(120) not null,
dt_nascimento date not null
);

create table curso (
id_curso int primary key auto_increment,
nomecurso varchar(80) not null,
periodo int not null
);

create table aluno_curso (
id_alunocurso int primary key auto_increment,
fk_curso_id int,
fk_aluno_id int
);

insert into aluno_curso (fk_curso_id, fk_aluno_id) value
(1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),
(2,11),(2,12),(2,13),(2,14),(2,15),(2,16),(2,17),(2,18),(2,19),(2,20),
(3,21),(3,22),(3,23),(3,24),(3,25),(3,26),(3,27),(3,28),(3,29),(3,30),
(3,1),(3,2),(3,3),(3,4),(3,5),(3,6),(3,7),(3,8),(3,9),(3,10),
(4,31),(4,32),(4,33),(4,34),(4,35),(4,36),(4,37),(4,38),(4,39),(4,40),
(5,41),(5,42),(5,43),(5,44),(5,45),(5,46),(5,47),(5,48),(5,49),(5,50);


alter table Aluno_curso add constraint fk_aluno_curso
foreign key (fk_curso_id)
references curso(id_curso)
on delete cascade;

alter table Aluno_curso add constraint fk_curso_aluno
foreign key (fk_aluno_id)
references aluno(id_aluno)
on delete cascade;

desc curso;

alter table aluno
add column email varchar(120) not null;

alter table curso
add column sala varchar(30) not null;

insert into curso (nomecurso,periodo,sala) values ('banco_de_dados','2','sala01');
insert into curso (nomecurso,periodo,sala) values ('marceneiro','1','sala02');
insert into curso (nomecurso,periodo,sala) values ('gastronomia','3','sala03');
insert into curso (nomecurso,periodo,sala) values ('autoconhecimento','4','sala04');
insert into curso (nomecurso,periodo,sala) values ('enfermagem','3','sala05');


insert into aluno (nome, dt_nascimento, email) values ('joao','2002-10-17','joao@email.com');
insert into aluno (nome,email,dt_nascimento) values ('jose', 'email@123', '2000-10-12');
insert into aluno (nome,email,dt_nascimento) value ('Maria','Maria@email.com','2001-10-12');
insert into aluno (nome,email,dt_nascimento) value ('Antonia','Antonia@email.com','1998-10-12');
insert into aluno (nome,email,dt_nascimento) value ('Pedro','pedro@email.com','2003-10-12');
insert into aluno (nome,email,dt_nascimento) value ('Francisca','Francisca@email.com','2000-10-12');
insert into aluno (nome,email,dt_nascimento) value ('Marcos','Marcos@email.com','1999-10-12');

insert into aluno (nome,email,dt_nascimento) value ('Geraldo','Geraldo@email.com','2000-09-11');
insert into aluno (nome,email,dt_nascimento) value ('Adriana','Adriana@email.com','2002-03-01');
insert into aluno (nome,email,dt_nascimento) value ('Sandra','Sandra@email.com','2003-10-05');
insert into aluno (nome,email,dt_nascimento) value ('Francisca','Francisca@email.com','1999-06-02');
insert into aluno (nome,email,dt_nascimento) value ('Marcos','Marcos@email.com','1998-05-12');

insert into aluno (nome,email,dt_nascimento) value ('Luis','Luis@email.com','2004-09-05');
insert into aluno (nome,email,dt_nascimento) value ('Fernando','Fernando@email.com','2003-08-02');
insert into aluno (nome,email,dt_nascimento) value ('Fabio','Fabio@email.com','2001-11-04');
insert into aluno (nome,email,dt_nascimento) value ('Roberto','Roberto@email.com','2000-09-07');
insert into aluno (nome,email,dt_nascimento) value ('Marcos','Marcos@email.com','1999-09-20');

insert into aluno (nome,email,dt_nascimento) values ('Edson','Edson@email.com','2004-10-25'),
('Andre','Andre@email.com','2000-01-25'), ('Josefa','Josefa@email.com','2001-10-05'), ('Sergio','Sergio@email.com','2000-03-08'),
('Patricia','Patricia@email.com','2002-05-09'), ('Daniel','Daniel@email.com','2000-07-23'),
('Rodrigo','Rodrigo@email.com','2001-03-20'), ('Rafael','Rafael@email.com','1999-02-03'), ('Joaquim','Joaquim@email.com','2000-04-25'),
('Vera','Vera@email.com','2003-06-02'), ('Ricardo','Ricardo@email.com','2000-07-26'),
('Eduardo','Eduardo@email.com','1998-05-20'), ('Josefa','Josefa@email.com','2002-01-08'), ('Sonia','Sonia@email.com','2002-09-01'),
('Alexandre','Alexandre@emaiil.com','2000-04-09'), ('Rita','Rita@email.com','2002-08-03'),
('Benedito','Benedito@email.com','2003-08-17'), ('Leandro','Leandro@email.com','2004-07-16'), ('Raimunda','Raimunda@email.com','2004-08-14'),
('Mario','Mario@email.com','2000-07-12'), ('Maya','Maya@emal.com','2003-05-17'),
('Lara','Lara@emal.com','2001-11-15'), ('Esther','Esther@emal.com','2003-02-18'), ('Giovanna','Giovanna@emal.com','2000-05-19'),
('Sarah','Sarah@emal.com','2000-11-09'), ('Lorena','Lorena@emal.com','2001-12-28'),
('Beatriz','Beatriz@emal.com','2003-11-25'), ('Rebeca','Rebeca@emal.com','1998-01-17'), ('Luna','Luna@emal.com','2002-02-17	'),
('Isadora','Isadora@emal.com','2001-07-12'), ('Catarina','Catarina@emal.com','2000-11-21'),
('Clara','Clara@emal.com','2000-01-05'), ('Marina','Marina@emal.com','1999-11-07'), ('Stella','Stella@emal.com','2001-12-02	'),
('Jade','Jade@emal.com','2000-12-02');