.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

-- da update do das vendas dum tipo de produto, ainda nao funciona
CREATE TRIGGER Nova_compra
AFTER INSERT ON COMPRAEM
FOR EACH ROW
BEGIN
  UPDATE VENDAS
  SET Lucro = Lucro + (SELECT (QuantidadeProduto * Preco) as "Total"
                       FROM PRODUTO
                       WHERE PRODUTO.Compra_ID = New.Compra_ID AND PRODUTO.TipoProduto_ID = VENDAS.TipoProduto_ID)
  WHERE VENDAS.Loja_Endereço = New.Loja_Endereço;
END;
