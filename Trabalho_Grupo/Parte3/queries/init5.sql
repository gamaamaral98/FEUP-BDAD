-- Descontos de 50% +

.mode	columns
.headers	on
.nullvalue	NULL

SELECT Desconto.Loja_Endereço, Desconto.TipoProduto_ID, Desconto.Percentage
FROM Desconto
WHERE Desconto.Percentage >= 50;
