create database db_pizzaria;

use db_pizzaria;

create table tb_categorias(
id bigint auto_increment,
tamanho varchar(255),
tempo_preparo int,
primary key(id)
);

create table tb_pizzas(
tipo varchar(255),
sabor varchar(255),
quantidade int,
valor double,
primary key(id),
categoria_id bigint,
foreign key (categoria_id) references tb_categorias(id)
);


select * from tb_categorias;
select * from tb_pizzas;

insert into tb_categorias (tamanho, tempo_preparo) values ('grande',60);
insert into tb_categorias (tamanho, tempo_preparo) values ('broto',30);
insert into tb_categorias (tamanho, tempo_preparo) values ('media',45);
insert into tb_categorias (tamanho, tempo_preparo) values ('jumbo',75);
insert into tb_categorias (tamanho, tempo_preparo) values ('infantil',15);

insert into tb_pizzas (tipo, sabor, quantidade, valor,categoria_id) values ('doce','brigadeiro',2,50, 3);
insert into tb_pizzas (tipo, sabor, quantidade, valor,categoria_id) values ('salgada','calabresa',1,35, 3);
insert into tb_pizzas (tipo, sabor, quantidade, valor,categoria_id) values ('salgada','queijo',3,32, 4);
insert into tb_pizzas (tipo, sabor, quantidade, valor,categoria_id) values ('doce','morango',4,55, 5);
insert into tb_pizzas (tipo, sabor, quantidade, valor,categoria_id) values ('salgada','toscana',3,40, 2);
insert into tb_pizzas (tipo, sabor, quantidade, valor,categoria_id) values ('doce','banana',2,45, 1);
insert into tb_pizzas (tipo, sabor, quantidade, valor,categoria_id) values ('salgada','frango',1,42, 5);
insert into tb_pizzas (tipo, sabor, quantidade, valor,categoria_id) values ('doce','canela',3,53, 3);

select * from tb_pizzas where valor > 45;
select * from tb_pizzas where valor > 50 and valor < 100;

select * from tb_pizzas where sabor like "%m%";

select * from tb_pizzas inner join tb_categorias on tb_categorias.id = tb_pizzas.categoria.id;

select tb_pizzas.sabor, tb_categorias.tempo_preparo from tb_pizzas inner join tb_categorias on tb_categorias.id = tb_pizzas.categoria_id where tb_categorias.id = 5;




