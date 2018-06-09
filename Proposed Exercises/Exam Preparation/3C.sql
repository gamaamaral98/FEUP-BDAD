.mode columns
.headers on

SELECT Servidor.hostname
FROM Servidor
NATURAL JOIN AplicacaoServidor
NATURAL JOIN Aplicacao
JOIN Bug USING(idAplicacao)
JOIN Pessoa
WHERE Servidor.idResponsavel = Pessoa.idPessoa
AND Pessoa.mail = "joao.almeida@cica.pt"
AND Servidor.hostname LIKE "alu%"
GROUP BY Servidor.hostname
HAVING COUNT(Bug.idBug) >= 1;
