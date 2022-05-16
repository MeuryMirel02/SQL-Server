create database exercicio

create table filmes(
id_filmes int not null,
nome varchar(30),
genero varchar(10),
id_midia int not null,
idiomas varchar (10),
tipo varchar(10),
secao int not null,
preco varchar(10), 


CONSTRAINT Pk_filmes PRIMARY KEY (id_filmes, id_midia)


);

insert into filmes values 

(656560,'DIVERTIDAMENTE','COMÉDIA', 1001,'DUB','DVD',25,'3,50'), 
(656561,'ROCKY:UM LUTADOR',' DRAMA', 1002,'DUB','VHS',25,'3,50'), 
(656562,'AS MEMÓRIAS DE MARNIE',' DRAMA', 1003,'LEG','DVD',25,'3,50'), 
(656563,'UM SONHO DE LIBERDADE',' DRAMA', 1004,'LEG','VHS',25,'3,50'), 
(323234,'NO LIMITE DO AMANHÃ','FICÇÃO',2550,'DUB','DVD',32,'4,20'),
(323231,'OS CAÇA-FANTASMA','FICÇÃO',2551,'DUB','VHS',32,'4,20'),
(323232,'NO LIMITE DO AMANHÃ','FICÇÃO',2552,'LEG','DVD',32,'4,20'),
(323233,'O PODEROSO CHEFÃO','FICÇÃO',2553,'LEG','VHS',32,'4,20');





CREATE table v_filmes (
id_filmes int not null,
nome varchar(30),
genero varchar(10)

primary key (id_filmes)
);


INSERT INTO v_filmes values 
(656560,'DIVERTIDAMENTE','COMÉDIA'),
(656561,'ROCKY:UM LUTADOR',' DRAMA'),
(656562,'AS MEMÓRIAS DE MARNIE',' DRAMA'),
(656563,'UM SONHO DE LIBERDADE',' DRAMA'),
(323234,'NO LIMITE DO AMANHÃ','FICÇÃO'),
(323231,'OS CAÇA-FANTASMA','FICÇÃO'),
(323232,'NO LIMITE DO AMANHÃ','FICÇÃO'),
(323233,'O PODEROSO CHEFÃO','FICÇÃO');


UPDATE v_filmes
SET NOME = 'O PODEROSO CHEFÃO' WHERE id_filmes = 323233



create table midia (
id_midia int not null,
id_filmes int not null, 
idioma varchar (10),
tipo varchar(10) not null,
secao int not null, 
preco varchar (10)

primary key (id_midia)
FOREIGN KEY (id_filmes) REFERENCES v_filmes(id_filmes)
);

INSERT INTO MIDIA (id_midia, id_filmes, idioma, tipo,secao,preco)
values  (1001,656560 ,'DUB','DVD','25','3,50'),
		(1002,656561 ,'DUB','VHS','25','3,50'),
		(1003,656562 ,'LEG','DVD','25','3,50'),
		(1004,656563 ,'LEG','VHS','25','3,50'),
		(2550,323234 ,'DUB','DVD','32','4,20'),
		(2551,323231 ,'DUB','VHS','32','4,20'),
		(2552,323232 ,'LEG','DVD','32','4,20'),
		(2553,323233 ,'LEG','VHS','32','4,20');




---2FN: NO
select * from filmes

--- 2FN: OK
select * from midia
select * from v_filmes



--- CREATING 'VIEWS'
create view [filmes_VHS]
	as select id_filmes, tipo,secao from midia where tipo = 'VHS';
	
	

---VIEWING A 'VIEWS'
select * from filmes_VHS

---EXCUINDO UMA 'VIEWS'
drop view filmes_VHS






