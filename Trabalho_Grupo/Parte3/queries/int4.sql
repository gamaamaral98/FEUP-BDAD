--esta interrogação diz o lucro total por lojas

.mode	columns
.headers	on
.nullvalue	NULL

SELECT VENDAS.Loja_Endereço AS "Loja", SUM(VENDAS.Lucro) AS "Lucro Total (euros)"
FROM VENDAS INNER JOIN TIPOPRODUTO
ON VENDAS.TipoProduto_ID=TIPOPRODUTO.ID
GROUP BY VENDAS.Loja_Endereço;
