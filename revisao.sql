/*A*/
create database revisao;
use revisao;  
create table loja( 
	nome varchar(80) primary key not null,
    localizacao varchar(80) not null,
	Cnpj char(14) not null
);
create table usuario(
	nome varchar(80) primary key not null,
    cep char(8),
    cod_user int not null AUTO_INCREMENT
);
create table produtos(
	nome varchar(80) primary key not null,
    cod_prodt int not null AUTO_INCREMENT,
    preco double not null
);

/*B*/

insert into loja (nome, localizacao, Cnpj)
value("Maxshoes", "MG_BH", "26995897000124"),
("Vintage", "RJ_Copacabana", "26295897040174"),
("Lostbuy", "Sp_SaoPaulo", "16995897000126");

insert into usuario (nome, cep, cod_user)
value("Erica", "31030420", "0"),
("Ewerton", "31030423", "2"),
("Guilherme", "31030428", "3");

insert into produtos (nome, cod_prodt, preco)
value("regata nike", "0", "120"),
("tenis nike", "2", "600"),
("bola nba", "3", "100");

/*C*/
delete from loja where nome = "Vintage";
delete from usuario where nome = "Guilherme";
delete from produtos where nome = "tenis nike";

/*D*/
update loja
set localizacao = "Manaus"
where nome = "Lostbuy";

update product
set preco = "70"
where nome = "bola nba";

update usuario
set cep = "31030529"
where nome = "Ewerton";
