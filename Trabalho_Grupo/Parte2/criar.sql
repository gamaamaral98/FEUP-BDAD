.mode columns
.headers on

DROP TABLE IF EXISTS PESSOA;
DROP TABLE IF EXISTS CLIENTE;
DROP TABLE IF EXISTS PRODUTO;
DROP TABLE IF EXISTS COMPRA;

CREATE TABLE PESSOA (
  ID INTEGER PRIMARY KEY,
  Nome TEXT DEFAULT "none", -- verificar se pode ser NULL ou não
  Idade INTEGER DEFAULT 18 CHECK(Idade > 17), --não podemos ter clientes menores de idade?
  Morada TEXT(100) DEFAULT "none",
  Genero TEXT(1) DEFAULT "F" CHECK( Genero = "F" or Genero = "M")
);
