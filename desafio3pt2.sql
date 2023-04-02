insert into desafio.tb_empresa
(CNPJ,razao_social)
values
('4159673022','escola'),
('7176795738','gas e agua'),
('1124639868','hospital');



insert into desafio.tb_cargo
(nome_do_cargo)
values
('professor'),
('entregador'),
('medico');


insert into desafio.tb_acoes
(id_guardar_operacoes)
values
('1'),
('2'),
('3'),
('4');


insert into desafio.tb_salario
(id_cargo, pagamento)
values 
(2,000);


insert into desafio.tb_funcionario
(titulo_eleitor,endereco,data_de_nascimento,id_salario,id_cargo,nome_completo,cpf,numero_telefone,cnpj)
values
(12111970,'rua das flores','2000/10/01',1,1,'fernando','424.462.098.69',199875062,'4159673022'),
(15893300,'rua do cravo','1999/11/11',2,2,'carla','999.226.000.77',013466678,'7176795738');


insert into desafio.tb_dependente
(nome_da_mae,cpf,id_funcionario,data_de_nascimento)
values 
('carolina','888.999.111.20','424.462.098.69','01/01/1964'),
('marilu','999.555.227.97','999.226.000.77','21/06/1990');