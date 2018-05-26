-- lista as compras dum cliente

.mode	columns
.headers	on
.nullvalue	NULL

SELECT DISTINCT LOJA.Endereço AS "Loja", PRODUTO.Nome AS "Produto", PRODUTO.QuantidadeProduto AS "Quantidade", PRODUTO.Preco "euros / unidade", (PRODUTO.QuantidadeProduto * PRODUTO.Preco) AS "Custo total", COMPRA.DataCompra AS "Data"
FROM COMPRAEM, PRODUTO, COMPRA, PESSOA, CLIENTE, LOJA
WHERE Loja.Endereço = COMPRAEM.Loja_Endereço AND
              COMPRA.ID = COMPRAEM.Compra_ID AND
               PRODUTO.Compra_ID = COMPRA.ID AND
               COMPRAEM.Cliente_ID IN (SELECT NrCliente
                                       FROM CLIENTE
                                       WHERE Pessoa_ID IN (SELECT ID
                                                           FROM PESSOA
                                                           WHERE Nome = "Alexandra Mendes"
                                       ));
