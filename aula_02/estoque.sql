/*Atividade 2
Crie um banco de dados para um e commerce, onde o sistema trabalhará com as
informações dos produtos deste ecommerce.
Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos produtos para se trabalhar com o serviço deste ecommerce.
Popule esta tabela com até 8 dados;
Faça um select que retorne os produtos com o valor maior do que 500.
Faça um select que retorne os produtos com o valor menor do que 500.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/



create database db_estoquecommerce;


use db_estoquecommerce;


create table tb_produtos (
	id bigint auto_increment,
    nome varchar (255) not null,
    categoria varchar (255),
    preco decimal(10,2),
    quantidade int,
    disponivel boolean,
    
    primary key (id)
    
);

insert into tb_produtos (nome, categoria, preco, quantidade, disponivel) values ("Planner do ano", "Papelaria", 169.10, 35, true);
insert into tb_produtos (nome, categoria, preco, quantidade, disponivel) values ("Raspador de língua", "Acessórios", 64.00, 60, true);
insert into tb_produtos (nome, categoria, preco, quantidade, disponivel) values ("Casaco", "Moda", 820.10, 2, true);
insert into tb_produtos (nome, categoria, preco, quantidade, disponivel) values ("Almofada Duo", "Decoração", 530, 10, true);
insert into tb_produtos (nome, categoria, preco, quantidade, disponivel) values ("Bolsa Viga", "Moda", 359.00, 0, false);
insert into tb_produtos (nome, categoria, preco, quantidade, disponivel) values ("Kit So Bags", "Sustentável", 259.00, 5, true);
insert into tb_produtos (nome, categoria, preco, quantidade, disponivel) values ("Panela de pressão elétrica ", "Eletroportáteis", 800.00, 0, false);
insert into tb_produtos (nome, categoria, preco, quantidade, disponivel) values ("Enchimento de duvet casal", "Cama, mesa e branho", 1200.00, 135, true);

select * from tb_produtos;

select * from tb_produtos where preco > 500;
select * from tb_produtos where preco < 500;

update tb_produtos set quantidade = 10 where nome = "Bolsa Viga";
update tb_produtos set disponivel = true where nome = "Bolsa Viga";

SET SQL_SAFE_UPDATES = 0;



