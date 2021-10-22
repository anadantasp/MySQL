create database db_rh;

use db_rh;

create table tb_funcionarios (
	id bigint auto_increment,
    nome varchar(255) not null,
    CPF varchar (15) not null,
    telefone varchar (15),
    email varchar (255),

    primary key (id)
);

insert into tb_funcionarios (nome, CPF, telefone, email) values ("Ana Prado","123.456.789-12","(11) 95678-9876","anaprado@generation.com");
insert into tb_funcionarios (nome, CPF, telefone, email) values ("Diego Luccas","987.654.321-12","(11) 93456-7890","diegoluccas@generation.com");
insert into tb_funcionarios (nome, CPF, telefone, email) values ("Olivia Rodrigues","876.543.210-98","(11) 99876-1234","oliviarodrigues@generation.com");
insert into tb_funcionarios (nome, CPF, telefone, email) values ("Martim Silva","234.567.890-56","(11) 92576-8711","martimsilva@generation.com");
insert into tb_funcionarios (nome, CPF, telefone, email) values ("Helena Ferreira","435.213.768-34","(11) 97895-2345","helenaferreira@generation.com");

select * from tb_funcionarios;

alter table tb_funcionarios add column salario decimal(8,2);

update tb_funcionarios set salario = 5000.00 where id = 1;
update tb_funcionarios set salario = 1850.00 where id = 2;
update tb_funcionarios set salario = 3200.00 where id = 3;
update tb_funcionarios set salario = 6000.00 where id = 4;
update tb_funcionarios set salario = 1200.00 where id = 5;

select * from tb_funcionarios where salario > 2000.00;
select * from tb_funcionarios where salario < 2000.00;

update tb_funcionarios set telefone = "(11) 96876-5228" where id = 5;

