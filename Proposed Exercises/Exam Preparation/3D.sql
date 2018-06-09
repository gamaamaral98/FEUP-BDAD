.mode columns
.headers on

SELECT nome
FROM (
  SELECT Aplicacao.nome, COUNT(*) as n
  FROM Aplicacao
  JOIN BUG USING (idAplicacao)
  GROUP BY idAplicacao
  ORDER BY n DESC
  LIMIT 1
);
