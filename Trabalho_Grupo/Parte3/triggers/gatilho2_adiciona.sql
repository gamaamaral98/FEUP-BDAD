--tigger que quando se apaga um tipo de produto, apaga registos em PRODUTO, DESCONTO, DISTRIBUI e VENDAS que tenha o ID desse tipo de produto
CREATE TRIGGER Produtos_Eiminacao
BEFORE DELETE ON TIPOPRODUTO
FOR EACH ROW
BEGIN
  DELETE FROM PRODUTO
  WHERE TipoProduto_ID=Old.ID;
  DELETE FROM DESCONTO
  WHERE TipoProduto_ID=Old.ID;
  DELETE FROM DISTRIBUI
  WHERE TipoProduto_ID=Old.ID;
  DELETE FROM VENDAS
  WHERE TipoProduto_ID=Old.ID;
END;
