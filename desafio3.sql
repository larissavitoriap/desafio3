


drop table desafio.tb_empresa cascade;
drop table desafio.tb_cargo cascade;
drop table desafio.tb_acoes cascade;
drop table desafio.tb_salario cascade;
drop table desafio.tb_funcionario cascade;
drop table desafio.tb_dependente cascade;

create table desafio.tb_empresa(
CNPJ varchar(50) PRIMARY KEY,
razao_social varchar(100)
);

create table desafio.tb_cargo(
CBO int primary key generated always as identity,
nome_do_cargo varchar(50)
);

create table desafio.tb_acoes(
id_empresa int primary key generated always as identity,
id_guardar_operacoes varchar(100)
);

create table desafio.tb_salario(
id_salario int PRIMARY KEY GENERATED ALWAYS AS identity,
pagamento numeric(12,2),
id_cargo int,
constraint id_cargo
foreign key(id_cargo)
references desafio.tb_cargo(CBO)
);

create table desafio.tb_funcionario(
titulo_eleitor varchar(50),
endereco varchar(50),
data_de_nascimento date,
id_salario int,
id_cargo int,
nome_completo varchar(50),
cpf varchar(50) primary key,
numero_telefone numeric(50),
CNPJ varchar(50),
constraint id_cargo
foreign key (id_cargo)
references desafio.tb_cargo(CBO),
constraint id_CNPJ
foreign key (CNPJ)
REFERENCES desafio.tb_empresa(CNPJ)
);
 
CREATE TABLE desafio.tb_dependente(
cpf varchar(50)primary key,
nome_da_mae varchar(50),
data_de_nascimento date,
id_funcionario varchar,
constraint pk_cpf
foreign key (id_funcionario)
references desafio.tb_funcionario(cpf)
);