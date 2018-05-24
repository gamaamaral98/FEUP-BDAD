--mostra os nomes dos funcionários que trabalham numa dada loja

.mode	columns
.headers	on
.nullvalue	NULL

SELECT DISTINCT Pessoa.Nome, Funcionario.Ordenado
FROM TRABALHAEM INNER JOIN Pessoa, Funcionario
ON Funcionario.Pessoa_ID=Trabalhaem.Funcionario_ID AND Pessoa.ID=Funcionario.Pessoa_ID AND TRABALHAEM.Loja_Endereço="Rua Henrique de Sousa Reis, 4200-003";
