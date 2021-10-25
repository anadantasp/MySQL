create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe (
	id bigint auto_increment,
    nome varchar (255),
    skill varchar(150),
    hp int,
    arma varchar(255),
    primary key (id)
);

insert into tb_classe (nome,skill,hp,arma) values ("Feiticeiro","Bola de fogo",10,"Cajado");
insert into tb_classe (nome,skill,hp,arma) values ("Bruxo","Espada de prato",11,"Caldeirão");
insert into tb_classe (nome,skill,hp,arma) values ("Arqueiro","Chuva de flechas",26,"Arco e flecha");
insert into tb_classe (nome,skill,hp,arma) values ("Cavaleiro","Bravura",55,"Espada");
insert into tb_classe (nome,skill,hp,arma) values ("Curandeiro","Ressurreição",10,"Grimorio");

update tb_classe set skill = "Espada de prata" where id = 2;

select * from tb_classe;

create table tb_personagem (
	id bigint auto_increment,
    nome varchar (255) not null,
    nivel int,
    ataque int,
    defesa int,
    classe_id bigint,
    primary key (id),
    foreign key (classe_id) references tb_classe(id)
    
);

insert into tb_personagem (nome,nivel,ataque,defesa,classe_id) values ("Gandalf",450,2300,800,1);
insert into tb_personagem (nome,nivel,ataque,defesa,classe_id) values ("Howl",800,1700,1000,2);
insert into tb_personagem (nome,nivel,ataque,defesa,classe_id) values ("Legolas",1000,2500,1700,3);
insert into tb_personagem (nome,nivel,ataque,defesa,classe_id) values ("Aragorn",800,1200,2000,4);
insert into tb_personagem (nome,nivel,ataque,defesa,classe_id) values ("Willow",500,200,500,5);
insert into tb_personagem (nome,nivel,ataque,defesa,classe_id) values ("Merida",900,2100,1800,3);
insert into tb_personagem (nome,nivel,ataque,defesa,classe_id) values ("Geralt de Rivia",700,1500,2200,4);
insert into tb_personagem (nome,nivel,ataque,defesa,classe_id) values ("Eda",1000,2100,1500,2);

select * from tb_personagem where ataque > 2000;

select * from tb_personagem where defesa between 1000 and 2000;

select * from tb_personagem where nome like "%c%";

select * from tb_personagem inner join tb_classe
on tb_classe.id = tb_personagem.classe_id;

select * from tb_personagem inner join tb_classe
on tb_classe.id = tb_personagem.classe_id
where tb_classe.id = 2;








