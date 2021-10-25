create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria (
	id bigint auto_increment,
    descricao varchar (255) not null,
    ativo boolean not null,
    primary key (id) 
);

create table tb_produto (
	id bigint auto_increment,
    nome varchar (255) not null,
    preco decimal (8,2) not null,
    qtproduto int not null, 
    categoria_id bigint,
    primary key (id),
    foreign key (categoria_id) references tb_categoria (id)
    
);

insert into tb_categoria (descricao,ativo) values ("Medicamentos", true);
insert into tb_categoria (descricao,ativo) values ("Higiene Pessoal", true);
insert into tb_categoria (descricao,ativo) values ("Dermocosméticos", true);
insert into tb_categoria (descricao,ativo) values ("Mamãe & Bebê", true);
insert into tb_categoria (descricao,ativo) values ("Covid-19", true);

insert into tb_produto (nome,preco,qtproduto,categoria_id) values ("Neosaldina",24.89,250,1);
insert into tb_produto (nome,preco,qtproduto,categoria_id) values ("Buscopan Composto",17.49,250,1);
insert into tb_produto (nome,preco,qtproduto,categoria_id) values ("Sabonete Líquido",20.00,100,2);
insert into tb_produto (nome,preco,qtproduto,categoria_id) values ("Hidratante Facial",90.00,250,3);
insert into tb_produto (nome,preco,qtproduto,categoria_id) values ("Fraldas",75.95,250,4);
insert into tb_produto (nome,preco,qtproduto,categoria_id) values ("Teste covid",200.00,1000,5);
insert into tb_produto (nome,preco,qtproduto,categoria_id) values ("PFF2",10.00,250,5);
insert into tb_produto (nome,preco,qtproduto,categoria_id) values ("alcool em gel",8.00,250,5);

select * from tb_produto where preco > 50.00;

select * from tb_produto where preco between 3.00 and 60.00;

select * from tb_produto where nome like "%b%";

select tb_produto.nome, tb_produto.preco, tb_produto.qtproduto, tb_categoria.descricao 
from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id;

select tb_produto.nome, tb_produto.preco, tb_produto.qtproduto, tb_categoria.descricao 
from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id
where tb_categoria.id = 5;


