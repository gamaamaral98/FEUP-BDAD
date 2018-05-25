-- Descontos de 50% +

.mode	columns
.headers	on
.nullvalue	NULL

SELECT Desconto.Loja_Endereço AS "Loja", TIPOPRODUTO.Nome AS "Produto", Desconto.Percentage AS "Desconto %"
FROM Desconto INNER JOIN TIPOPRODUTO
ON DESCONTO.TipoProduto_ID=TIPOPRODUTO.ID AND Desconto.Percentage >= 50;
