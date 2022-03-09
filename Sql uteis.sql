drop table tabela_vendedores;

//apaga a tabela_vendedores.

//cria tabela de vendedores com matricula, nome, data_admissao, ferias.
create table tabela_vendedores {

matricula varchar(5),
nome varchar(100),
percentual_comissao float,
data_admissao date,
de_ferias number(1)
);

//altera a tabela de vendedores adicionando uma chave primaria, no caso a matricula(numero que nao se repete).
alter table tabela_vendedores add constraint pk_tabela_vendedores primary key (matricula);


//insere dados na tabela vendedores (matricula,nome,percentual_comissao,data_admissao e de_ferias.
insert into tabela_vendedores (
	matricula, nome, percentual_comissao, data_admissao, de_ferias) 
	values ('00235', 'Márcio Almeida Silva', 0.08, TO_DATE('15/08/2014','DD/MM/YYYY'),0
	
	);
	
insert into tabela_vendedores (
	matricula, nome, percentual_comissao, data_admissao, de_ferias)
	values ('00236', 'Cláudia Morais',0.08,TO_DATE('17/09/2013', 'DD/MM/YYYY',), 1
	);
	
insert into tabela_vendedores (
	matricula, nome, percentual_comissao, data_admissao, de_ferias)
	values ('00237', 'Roberta Martins', 0.11, TO_DATE('21/08/2016', 'DD/MM/YYYY'), 1 
	);
insert into tabela_vendedores (
	matricula, nome, percentual_comissao, data_admissao,de_ferias)
	values ('00238','Péricles Alves', 0.11,TO_DATE('21/08/2016', 'DD/MM/YYYY'),0
	);
	 
	
