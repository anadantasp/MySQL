create database db_escola;

use db_escola;

create table tb_estudantes(
	id bigint auto_increment,
    nome varchar (255) not null,
    idade int (2),
    genero varchar (255),
    numMatrícula bigint not null,
    situacao boolean,
    
    primary key (id)
    
);

alter table tb_estudantes modify idade int;
alter table tb_estudantes change numMatrícula numMatricula varchar (255);
alter table tb_estudantes modify genero char;


insert into tb_estudantes (nome, idade, genero, numMatricula, situacao) values ("Ana", 12, "F", 54878, true);
insert into tb_estudantes (nome, idade, genero, numMatricula, situacao) values ("Maria", 9, "F", 98765, false);
insert into tb_estudantes (nome, idade, genero, numMatricula, situacao) values ("Carlos", 17, "M", 25678, true);
insert into tb_estudantes (nome, idade, genero, numMatricula, situacao) values ("Pedro", 5, "M", 76548, true);
insert into tb_estudantes (nome, idade, genero, numMatricula, situacao) values ("Aline", 13, "O", 98712, false);
insert into tb_estudantes (nome, idade, genero, numMatricula, situacao) values ("Larissa", 17, "F", 34675, true);
insert into tb_estudantes (nome, idade, genero, numMatricula, situacao) values ("Danilo", 14, "O", 56444, true);
insert into tb_estudantes (nome, idade, genero, numMatricula, situacao) values ("Rafael", 6, "M", 71523, true);

select * from tb_estudantes;

alter table tb_estudantes add column nota decimal(4,2);

update tb_estudantes set nota = 9.75 where id = 1;
update tb_estudantes set nota = 6.4 where id = 2;
update tb_estudantes set nota = 5.3 where id = 3;
update tb_estudantes set nota = 8.0 where id = 4;
update tb_estudantes set nota = 7.1 where id = 5;
update tb_estudantes set nota = 3.4 where id = 6;
update tb_estudantes set nota = 6.0 where id = 7;
update tb_estudantes set nota = 9.5 where id = 8;

select * from tb_estudantes where nota > 7;
select * from tb_estudantes where nota < 7;



