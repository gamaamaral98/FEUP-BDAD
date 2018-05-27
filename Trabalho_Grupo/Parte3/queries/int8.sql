--Produtos que são fornecidos as lojas e quem os fornece

.mode	columns
.headers	on
.nullvalue	NULL

SELECT Fornecedor.Nome AS "Fornecedor", EFORNECIDA.Loja_Endereço AS "Loja", TIPOPRODUTO.Nome AS "Tipo de Produto"
FROM FORNECEDOR, CENTRODISTRIBUICAO, LOJA, EFORNECIDA, DISTRIBUI, FORNECEPRODUTOS, TIPOPRODUTO
WHERE Fornecedor.Nome = FORNECEPRODUTOS.Fornecedor_Nome AND
      CENTRODISTRIBUICAO.ID = FORNECEPRODUTOS.Centro_DistribuicaoID AND
      CENTRODISTRIBUICAO.ID = EFORNECIDA.Centro_DistribuicaoID AND
      LOJA.Endereço = EFORNECIDA.Loja_Endereço AND
      CENTRODISTRIBUICAO.ID = DISTRIBUI.Centro_DistribuicaoID AND
      DISTRIBUI.TipoProduto_ID = TIPOPRODUTO.ID;
