.mode	columns
.headers	on
.nullvalue	NULL

SELECT DISTINCT PESSOA.Nome, PESSOA.Idade
FROM FUNCIONARIO, CLIENTE, PESSOA
WHERE PESSOA.ID = CLIENTE.Pessoa_ID AND
CLIENTE.Pessoa_ID IN (SELECT FUNCIONARIO.Pessoa_ID as "ID"
                    FROM FUNCIONARIO);
