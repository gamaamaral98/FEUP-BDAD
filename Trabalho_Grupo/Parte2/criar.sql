.mode columns
.headers on

DROP TABLE IF EXISTS PESSOA;
DROP TABLE IF EXISTS CLIENTE;
DROP TABLE IF EXISTS PRODUTO;
DROP TABLE IF EXISTS COMPRA;
DROP TABLE IF EXISTS GESTOR;

CREATE TABLE PESSOA (
  ID INTEGER PRIMARY KEY,
  Nome TEXT DEFAULT "none", -- verificar se pode ser NULL ou não
  Idade INTEGER DEFAULT 18 CHECK(Idade > 17), --não podemos ter clientes menores de idade?
  Morada TEXT(100) DEFAULT "none",
  Genero TEXT(1) DEFAULT "F" CHECK( Genero = "F" or Genero = "M"),
  UNIQUE (Nome, Morada)
);

CREATE TABLE CLIENTE (
  NrCliente INTEGER PRIMARY KEY,
  Pessoa_ID INTEGER REFERENCES PESSOA,
  NIB INTEGER UNIQUE,
  UNIQUE(Pessoa_ID, NIB),
  UNIQUE(Pessoa_ID, NrCliente)
  --,CHECK (Pessoa_ID IN (SELECT ID FROM PESSOA)) Esta condição está nos power points mas da erro
);

CREATE TABLE GESTOR (
  ID INTEGER PRIMARY KEY,
  Pessoa_ID INTEGER REFERENCES PESSOA,
  NIB INTEGER UNIQUE,
  Ordenado INTEGER CHECK (Ordenado > 0),
  Contacto TEXT(14),
  Email TEXT(40),
  DataInicio DATE NOT NULL,
  DataFim DATE NOT NULL
  --,CHECK (Pessoa_ID IN (SELECT ID FROM PESSOA))
);
