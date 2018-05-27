-- lista informacao das compras de clientes numa determinada loja

.mode	columns
.headers	on
.nullvalue	NULL

SELECT DISTINCT PESSOA.Nome AS "Cliente", PRODUTO.Nome AS "Produto", PRODUTO.QuantidadeProduto AS "Quantidade", PRODUTO.Preco "euros / unidade", (PRODUTO.QuantidadeProduto * PRODUTO.Preco) AS "Custo total", COMPRA.DataCompra AS "Data"
FROM COMPRAEM, PRODUTO, COMPRA, PESSOA, CLIENTE
WHERE CLIENTE.NrCliente = COMPRAEM.Cliente_ID AND
      PESSOA.ID = CLIENTE.Pessoa_ID AND
      COMPRA.ID = COMPRAEM.Compra_ID AND
      PRODUTO.Compra_ID = COMPRA.ID AND
      COMPRAEM.Loja_Endereço = "R. Dr. Roberto Frias, 4200-465";
