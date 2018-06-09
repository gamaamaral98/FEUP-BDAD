.mode columns
.headers on

SELECT DISTINCT SERVIDOR.hostname, BUG.descricao, PESSOA.nome
FROM SERVIDOR, BUG, APLICACAOSERVIDOR, Pessoa
WHERE Bug.vulnerabilidade='sim' AND PESSOA.idPessoa = SERVIDOR.idResponsavel AND BUG.idBug IN (SELECT DISTINCT idBug
  FROM Bug
  WHERE idAplicacao IN (SELECT DISTINCT idAplicacao
    FROM AplicacaoServidor
    WHERE idServidor = SERVIDOR.idServidor
  ))
ORDER BY SERVIDOR.hostname ASC;
