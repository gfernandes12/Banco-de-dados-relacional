create database	db_game_online;

use db_game_online;

create table tb_classes(
id bigint auto_increment,
nome varchar(255),
descricao varchar(255),
primary key(id)
);

create table tb_personagens(
id bigint auto_increment,
nome varchar(255),
ataque int,
defesa int,
primary key(id),
classe_id bigint,
foreign key(classe_id) references tb_classes(id)
);

select * from tb_personagens;
select * from tb_classes;

insert into tb_classes(nome, descricao) values ('cavaleiro','pega espada e bate');
insert into tb_classes(nome, descricao) values ('suporte','projeta escudo');
insert into tb_classes(nome, descricao) values ('mago','solta poder');
insert into tb_classes(nome, descricao) values ('atirador','atira balas');
insert into tb_classes(nome, descricao) values ('ladrao','rouba com faca');

insert into tb_personagens(nome,ataque,defesa,classe_id) values ('daclor',2000, 1000,1);
insert into tb_personagens(nome,ataque,defesa,classe_id) values ('bocadas',4000, 5000,3);
insert into tb_personagens(nome,ataque,defesa,classe_id) values ('neyma',5000, 2000,2);
insert into tb_personagens(nome,ataque,defesa,classe_id) values ('rasha',3900, 1500,2);
insert into tb_personagens(nome,ataque,defesa,classe_id) values ('josias',7000, 2500,5);
insert into tb_personagens(nome,ataque,defesa,classe_id) values ('cabeca',5000, 5000,4);
insert into tb_personagens(nome,ataque,defesa,classe_id) values ('dentinho',6500, 4300,1);
insert into tb_personagens(nome,ataque,defesa,classe_id) values ('guga',1700, 4000,3);

update tb_personagens set defesa = 1500 where id =4;

select * from tb_personagens where ataque > 2000;
select * from tb_personagens where defesa > 1000 and defesa < 2000;

select * from tb_personagens where nome like "%c%;";

select * from tb_personagens inner join tb_classes on tb_classes.id = tb_personagens.classe_id;

select * from tb_personagens inner join tb_classes on tb_classes.id = tb_personagens.classe_id where tb_classes.id = 3;




