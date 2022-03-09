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
	 
	select * from tabela_vendedores; // consula dados da tabela.
	// atualiza um produto da tabela tb_produtos -> seta embalagem+nome=lata; e preço_lista=2.46 ->where todos os 
	produtos que tem o código = '544931'.
 update tb_produtos set
        embalagem = 'Lata',
        preco_lista =2.46
    where produto = '544931';
    
    update tb_produtos set
        embalagem = 'Garrafa'
    where produto = '1078680';


// Executando os comandos abaixo vc vair ver os itens atualizados
SELECT * FROM TB_PRODUTOS;

// executando o comando abaixo vc deleta um produto
DELETE FROM TB_PRODUTOS
WHERE PRODUTO = '1078680';

// executando o comando abaixo vc cria uma chave primaria para a tabela produto
ALTER TABLE TB_PRODUTOS ADD CONSTRAINT PK_TB_PRODUTOS 
PRIMARY KEY (PRODUTO);

//excutando o comando abaixo vc insere um novo cliente na tb_clientes
INSERT INTO TB_CLIENTES (
    CPF, NOME, ENDERECO1, ENDERECO2, 
    BAIRRO, CIDADE, ESTADO, CEP, IDADE, 
    SEXO, LIMITE_CREDITO, VOLUME_COMPRA, 
    PRIMEIRA_COMPRA, DATA_NASCIMENTO
) VALUES (
    '00388934777', 'João da Silva', 'Rua Projetada A número 10', 
    NULL , 'VILA ROMAN', 'TRÊS RIOS', 'RJ', '22222222', 53, 'M', 
    20000.00, 2000, 0, TO_DATE('12/10/1965','MM/DD/YYYY')
);

//Mesmo com a tabela já criada, você pode incluir novas colunas nela, por exemplo:

ALTER TABLE TB_CLIENTES ADD DATA_NASCIMENTO DATE;

//Crie uma nova consulta e inclua uma chave primária na tabela de clientes:
ALTER TABLE TB_CLIENTES ADD CONSTRAINT PK_TB_CLIENTES PRIMARY KEY (CPF);

