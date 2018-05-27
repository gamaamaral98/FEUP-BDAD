#!/usr/bin/python

from random import randint
import os

id = 6

possiblidadesPagamento = ["Multibanco", "Dinheiro"]

for i in range (100):
    dia = randint(1, 28)
    mes = randint(1, 12)
    dataTOFormat = "'2018-{}-{}'"
    data = dataTOFormat.format(mes,dia)
    pagamento = '"'
    pagamento += possiblidadesPagamento[randint(0, 1)]
    pagamento += '"'
    valor = randint(1, 100)
    stm = "INSERT INTO COMPRA VALUES ({}, {}, {}, {}, NULL, NULL);"
    stm2 = stm.format(id, valor, data,pagamento)
    print(stm2)
    id += 1

lojas = ["Rua Henrique de Sousa Reis, 4200-003", "Avenida Robert Smith, 4710-249", "R. Dr. Roberto Frias, 4200-465", "Rua da Graça, 1170-166"]

for i in range(6, id):
    clienteID = randint(1, 20)
    loja = '"'
    loja += lojas[randint(0, 3)]
    loja += '"'
    stm3 = "INSERT INTO COMPRAEM VALUES ({}, {}, {});"
    stm4 = stm3.format(clienteID, loja, i)
    print(stm4)

produtos = ["KitKat", "Wonka", "Estrelitas", "Cheerios", "Atum Bife", "Cerveja", "Croissant", "Natas", "Cortiça", "Coca-Cola", "Fita cola",  "Lagartas", "Pizza", "Trina", "Vodka", "Bacalhau", "hamburguer"]

for i in range(6, id):
    preco = randint(1, 10)
    quantidade = randint(1, 5)
    nome = '"'
    nome += produtos[randint(0, len(produtos) - 1)]
    nome += '"'
    tipoProdutoID = randint(1, 6)
    compraID = randint(6, id-1)
    stm5 = "INSERT INTO PRODUTO VALUES ({}, {}, {}, {}, {}, {});"
    stm6 = stm5.format(i, preco, quantidade, nome, tipoProdutoID, compraID)
    print(stm6)
    
