create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria (
	id bigint auto_increment,
    descricao varchar (255) not null, 
    ativo boolean not null,
    primary key (id)
    
);

create table tb_produto(
	id bigint auto_increment,
    nome varchar (255) not null,
    preco decimal (10,2) not null,
    qtVagas int not null,
    categoria_id bigint,
    professor varchar (255),
    primary key (id),
    foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_categoria (descricao,ativo) values ("Artesanato", true);
insert into tb_categoria (descricao,ativo) values ("Gastronomia", true);
insert into tb_categoria (descricao,ativo) values ("Linguagens de Programação", true);
insert into tb_categoria (descricao,ativo) values ("Desenvolvimento Web", true);
insert into tb_categoria (descricao,ativo) values ("Marketing", true);

insert into tb_produto (nome,preco,qtVagas,professor,categoria_id) values ("Confeitaria",3500.00,60,"Raiza Costa",2);
insert into tb_produto (nome,preco,qtVagas,professor,categoria_id) values ("Crochê Tunisiano Inverno",500.00,1000,"Andressa Lopes",1);
insert into tb_produto (nome,preco,qtVagas,professor,categoria_id) values ("Java",35.00,50,"Guanabara",3);
insert into tb_produto (nome,preco,qtVagas,professor,categoria_id) values ("Marketing Digital",700.00,1500,"Priscila Almeida",5);
insert into tb_produto (nome,preco,qtVagas,professor,categoria_id) values ("HTML5",59.00,120,"Leandro Albuquerque",4);
insert into tb_produto (nome,preco,qtVagas,professor,categoria_id) values ("JavaScript",59.90,120,"Maria Aparecida",4);
insert into tb_produto (nome,preco,qtVagas,professor,categoria_id) values ("Cerâmica para Ininiantes",250.00,300,"Olivia Silva",1);
insert into tb_produto (nome,preco,qtVagas,professor,categoria_id) values ("Python",39.90,50,"Júlia Faria",3);

update tb_produto set nome = "Cerâmica para iniciantes" where id = 7;

select * from tb_categoria;
select * from tb_produto;

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3.00 and 60.00;

select * from tb_produto where nome like "%j%";


select tb_produto.nome,tb_produto.preco,tb_produto.qtVagas,tb_produto.professor,tb_categoria.descricao
from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id;

select tb_produto.nome,tb_produto.preco,tb_produto.qtVagas,tb_produto.professor,tb_categoria.descricao
from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id
where tb_categoria.descricao = "artesanato";


