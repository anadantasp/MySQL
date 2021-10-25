create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria (
	id bigint auto_increment,
    descricao varchar (255) not null,
    tamanho varchar (255),
    ativo boolean not null,
    
    primary key(id)
);

alter table tb_categoria modify tamanho varchar (255);

create table tb_pizza (
	id bigint auto_increment,
    sabor varchar (255) not null,
    preco decimal (4,2),
    categoria_id bigint, 
    
    primary key (id),
    foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_categoria (descricao,tamanho,ativo) values ("pizza salgada","broto",true);
insert into tb_categoria (descricao,tamanho,ativo) values ("pizza salgada","grande",true);
insert into tb_categoria (descricao,tamanho,ativo) values ("pizza doce","broto",true);
insert into tb_categoria (descricao,tamanho,ativo) values ("pizza doce","grande",true);
insert into tb_categoria (descricao,ativo) values ("bebidas",true);


insert into tb_pizza (sabor,preco,categoria_id) values ("Portuguesa",53.00,2);
insert into tb_pizza (sabor,preco,categoria_id) values ("Jardineira",75.00,2);
insert into tb_pizza (sabor,preco,categoria_id) values ("Brigadeiro",48,4);
insert into tb_pizza (sabor,preco,categoria_id) values ("Refrigerante",12.00,5);
insert into tb_pizza (sabor,preco,categoria_id) values ("Brócolis",34.00,1);
insert into tb_pizza (sabor,preco,categoria_id) values ("Mussarela",46.00,2);
insert into tb_pizza (sabor,preco,categoria_id) values ("Calabresa",46.00,2);
insert into tb_pizza (sabor,preco,categoria_id) values ("Banana",38.00,3);

select * from tb_pizza;
select * from tb_categoria;

select * from tb_pizza where preco > 45.00;

select * from tb_pizza where preco between 29.00 and 60;

select * from tb_pizza where sabor like "%c%";

select tb_pizza.sabor, tb_pizza.preco, tb_categoria.descricao, tb_categoria.tamanho
from tb_pizza inner join tb_categoria 
on tb_categoria.id = tb_pizza.categoria_id
order by descricao;

select tb_pizza.sabor, tb_pizza.preco, tb_categoria.descricao
from tb_pizza inner join tb_categoria 
on tb_categoria.id = tb_pizza.categoria_id
where tb_categoria.id = 2;






