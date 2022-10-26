create database livraria;

use livraria;

create table livro(
nome varchar(100) not null,
autor varchar(100) not null,
sexo char(1) not null, 
paginas int not null,
editora varchar(30) not null,
valor float(10,2) not null,
uf char(2),
ano int(4),
check (sexo in('F', 'M'))
);
drop table livro;
show databases;

insert into livro values('Cavaleiro Real', 'Ana Claudia', 'F', 465, 'Atlas', 49.9, 'RJ', 2009),
('SQL para leigos', 'João Nunes', 'M', 450, 'Addison', 98, 'SP', 2018),
('Receitas Caseiras', 'Celia Tavares', 'F', 210, 'Atlas', 45, 'RJ', 2008),
('Pessoas Efetivas', 'Eduardo Santos', 'M', 390, 'Beta', 78.99, 'RJ', 2018),
('Habitos Saudáveis', 'Eduardo Santos', 'M', 630, 'Beta', 150.98, 'RJ', 2019),
('A Casa Marrom', 'Hermes Macedo', 'M', 250, 'Bubba', 60, 'MG', 2016),
('Estacio Querido', 'Geraldo Francisco', 'M', 310, 'Insignia', 100, 'ES', 2015),
('Pra sempre amigas', 'Leda Silva', 'F', 510, 'Insignia', 78.98, 'ES', 2011),
('Copas Inesqueciveis', 'Marco Alcantara', 'M', 200, 'Larson', 130.98, 'RS', 2018),
('O poder da mente', 'Clara Mafra', 'F', 120, 'Continental', 56.58, 'SP', 2017)
;

select * from livro;

select nome as Nome, editora as Editora from livro;

select nome as Nome, uf as Estado from livro where sexo = 'M';

select nome as Nome, paginas as Numero_de_páginas from livro where sexo = 'F';

select nome as Nome, valor as Valor_do_livro from livro where uf = 'SP';

select autor, sexo 
from livro 
where sexo = 'M' 
and (uf = 'SP' or uf = 'RJ');

select * from livro;

select sexo, count(*) from livro group by sexo;

select uf, count(*) from livro group by uf;


