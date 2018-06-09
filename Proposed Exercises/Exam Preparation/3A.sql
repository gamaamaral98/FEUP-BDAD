.mode columns
.headers on

SELECT DISTINCT SERVIDOR.hostname, Pessoa.nome
FROM SERVIDOR INNER JOIN PESSOA
ON Servidor.idResponsavel=Pessoa.idPessoa;
