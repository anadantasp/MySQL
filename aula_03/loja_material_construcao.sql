create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria (
	id bigint auto_increment,
    descricao varchar (255) not null, 
    ativo boolean not null,
    primary key (id)
    
);

create table tb_produto(
	id bigint auto_increment,
    nome varchar (255) not null,
    preco decimal (10,8) not null,
    qtProduto int not null,
    categoria_id bigint,
    primary key (id),
    foreign key (categoria_id) references tb_categoria (id)
);

alter table tb_produto modify preco decimal (10,2) not null;

insert into tb_categoria (descricao,ativo) values ("Banheiros", true);
insert into tb_categoria (descricao,ativo) values ("Madeiras", true);
insert into tb_categoria (descricao,ativo) values ("Ferramentas", true);
insert into tb_categoria (descricao,ativo) values ("Iluminação", true);
insert into tb_categoria (descricao,ativo) values ("Pisos e Revestimentos", true);

insert into tb_produto (nome,preco,qtProduto,categoria_id) values ("vaso sanitário",299.00,500,1);
insert into tb_produto (nome,preco,qtProduto,categoria_id) values ("forros",74.90,1500,2);
insert into tb_produto (nome,preco,qtProduto,categoria_id) values ("furadeira",251.90,500,3);
insert into tb_produto (nome,preco,qtProduto,categoria_id) values ("cordão de luz",39.90,500,4);
insert into tb_produto (nome,preco,qtProduto,categoria_id) values ("metro white",59.00,500,5);
insert into tb_produto (nome,preco,qtProduto,categoria_id) values ("luminárias tartarugas",59.50,500,4);
insert into tb_produto (nome,preco,qtProduto,categoria_id) values ("esmerilhadeira",484.90,500,3);
insert into tb_produto (nome,preco,qtProduto) values ("prego",2.99,500);

select * from tb_categoria;
select * from tb_produto;

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3.00 and 60.00;

select * from tb_produto where nome like "%c%";


select tb_produto.nome,tb_produto.preco,tb_produto.qtproduto,tb_categoria.descricao
from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id;

select tb_produto.nome,tb_produto.preco,tb_produto.qtproduto,tb_categoria.descricao
from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id
where tb_categoria.id = 4;


