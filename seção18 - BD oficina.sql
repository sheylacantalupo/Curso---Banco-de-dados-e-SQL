-- exercício de fixação

create database oficina;

use oficina;

create table cliente(
idcliente int primary key auto_increment,
nome varchar(30) not null,
sexo enum('M', 'F') not null,
id_carro int unique
);

create table telefone(
idtelefone int primary key auto_increment,
tipo enum ('RES','COM','CEL') not null,
numero varchar(30) not null,
id_cliente int
);

create table marca(
idmarca int primary key auto_increment,
marca varchar(30) unique
);

create table carro(
idcarro int primary key auto_increment,
modelo varchar(30) not null,
placa varchar(30) not null unique,
id_marca int
);

create table cor(
idcor int primary key auto_increment,
cor varchar(30) unique
);

create table carro_cor(
id_carro int,
id_cor int,
primary key(id_carro, id_cor)
);

-- constraints
alter table telefone
add constraint fk_telefone_cliente
foreign key(id_cliente)
references cliente(idcliente);

alter table cliente
add constraint fk_cliente_carro
foreign key(id_carro)
references carro(idcarro);

alter table carro
add constraint fk_carro_marca
foreign key(id_marca)
references marca(idmarca);

alter table carro_cor
add constraint fk_cor
foreign key(id_cor)
references carro(idcarro);








