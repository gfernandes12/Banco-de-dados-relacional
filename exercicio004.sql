create database db_farmacia_bem_estar;

use db_farmacia_bem_estar;

create table tb_categorias(
id bigint auto_increment,
com_receita varchar(255),
generico varchar(255),
primary key(id)
);

create table tb_produtos(
id bigint auto_increment,
nome varchar(255),
categoria varchar(255),
valor double,
primary key(id),
categoria_id bigint,
foreign key(categoria_id) references tb_categorias(id)
);


select * from tb_categorias;
select * from tb_produtos;

insert into tb_categorias (com_receita, generico) values ('sim','nao');
insert into tb_categorias (com_receita, generico) values ('nao','nao');
insert into tb_categorias (com_receita, generico) values ('sim','sim');
insert into tb_categorias (com_receita, generico) values ('nao','sim');

insert into tb_produtos (nome, categoria, valor,categoria_id) values ('amoxilina','dor de garganta',150.50, 2);
insert into tb_produtos (nome, categoria, valor,categoria_id) values ('paracetamol','dor de cabeca',9.80, 3);
insert into tb_produtos (nome, categoria, valor,categoria_id) values ('zolpidem','calmante',35.30, 1);
insert into tb_produtos (nome, categoria, valor,categoria_id) values ('dipirona','febre',12.50, 3);
insert into tb_produtos (nome, categoria, valor,categoria_id) values ('rivotril','calmante',49.50, 1);
insert into tb_produtos (nome, categoria, valor,categoria_id) values ('buscopan','dor de estomago',18.30, 4);
insert into tb_produtos (nome, categoria, valor,categoria_id) values ('aspirina','dor',28.80, 2);
insert into tb_produtos (nome, categoria, valor,categoria_id) values ('atroveran','colica',17.50, 4);

select * from tb_produtos where valor > 50;
select * from tb_produtos where valor  > 5 and valor < 60;

select * from tb_produtos where nome like "%m%";

select tb_produtos.nome, tb_produtos.valor, tb_categorias.com_receita from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.categoria.id;

select * from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.categoria_id where tb_categorias.id = 2;

