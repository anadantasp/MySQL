create database db_cidade_das_frutas;

use db_cidade_das_frutas;

create table tb_categoria (
	id bigint auto_increment,
    drescricao varchar (255) not null,
    ativo boolean not null, 
    primary key (id)
);

alter table tb_categoria change drescricao descricao varchar (255) not null;

create table tb_produto (
	id bigint auto_increment,
    nome varchar (255) not null,
    preco decimal(8,2) not null, 
    qtproduto int not null,
    dtrecebimento date,
    categoria_id bigint,
    primary key (id),
    foreign key (categoria_id) references tb_categoria (id)

);

insert into tb_categoria (descricao,ativo) values ("Frutas",true);
insert into tb_categoria (descricao,ativo) values ("Verduras",true);
insert into tb_categoria (descricao,ativo) values ("Legumes",true);
insert into tb_categoria (descricao,ativo) values ("Temperos",true);
insert into tb_categoria (descricao,ativo) values ("Cogumelos",true);

insert into tb_produto (nome,preco,dtrecebimento,qtproduto,categoria_id) values ("mamão",2.99,"2021-10-25",35,1);
insert into tb_produto (nome,preco,dtrecebimento,qtproduto,categoria_id) values ("cenoura",4.10,"2021-10-25",35,3);
insert into tb_produto (nome,preco,dtrecebimento,qtproduto,categoria_id) values ("laranja",14.99,"2021-10-25",120,1);
insert into tb_produto (nome,preco,dtrecebimento,qtproduto,categoria_id) values ("brocólis",6.00,"2021-10-25",35,2);
insert into tb_produto (nome,preco,dtrecebimento,qtproduto,categoria_id) values ("couve-flor",6.00,"2021-10-25",35,2);
insert into tb_produto (nome,preco,dtrecebimento,qtproduto,categoria_id) values ("shimeji",55.00,"2021-10-25",50,5);
insert into tb_produto (nome,preco,dtrecebimento,qtproduto,categoria_id) values ("alho",12.40,"2021-10-25",150,4);
insert into tb_produto (nome,preco,dtrecebimento,qtproduto,categoria_id) values ("cebola",20.00,"2021-10-25",150,4);
insert into tb_produto (nome, preco, qtproduto) values ("Sacola Reutilizável",20.00,30);

select * from tb_categoria;
select * from tb_produto;

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3.00 and 60.00;

select * from tb_produto where nome like "%c%";



select tb_produto.nome,tb_produto.preco,tb_produto.dtrecebimento,tb_produto.qtproduto,tb_categoria.descricao
from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id;


select tb_produto.nome,tb_produto.preco,tb_produto.dtrecebimento,tb_produto.qtproduto,tb_categoria.descricao
from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id
where tb_categoria.descricao = "verduras";






