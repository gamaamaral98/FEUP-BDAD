--mostra a quantidade vendida de cada tipo de produto, assim como o lucro originado pelas vendas desses produtos

.mode	columns
.headers	on
.nullvalue	NULL

SELECT TIPOPRODUTO.Nome, VENDAS.QuantidadeVendida AS "Quantidade vendida", VENDAS.Lucro AS "Lucro (euros)"
FROM VENDAS INNER JOIN TIPOPRODUTO
ON VENDAS.TipoProduto_ID=TIPOPRODUTO.ID AND VENDAS.Loja_Endereço="R. Dr. Roberto Frias, 4200-465";
