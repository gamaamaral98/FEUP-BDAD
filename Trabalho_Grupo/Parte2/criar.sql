.mode columns
.headers on

DROP TABLE IF EXISTS PESSOA;
DROP TABLE IF EXISTS CLIENTE;
DROP TABLE IF EXISTS PRODUTO;
DROP TABLE IF EXISTS COMPRA;
DROP TABLE IF EXISTS GESTOR;
DROP TABLE IF EXISTS FUNCIONARIO;
DROP TABLE IF EXISTS LOJA;
DROP TABLE IF EXISTS PRODUTO;
DROP TABLE IF EXISTS TIPOPRODUTO;
DROP TABLE IF EXISTS DESCONTO;
DROP TABLE IF EXISTS COMPRA;
DROP TABLE IF EXISTS FORNECEDOR;
DROP TABLE IF EXISTS CENTRODISTRIBUICAO;
DROP TABLE IF EXISTS VENDAS;

CREATE TABLE PESSOA (
  ID INTEGER PRIMARY KEY,
  Nome TEXT NOT NULL, -- verificar se pode ser NULL ou não
  Idade INTEGER DEFAULT 18 CHECK(Idade > 17), --não podemos ter clientes menores de idade? --Acho que podes..
  NIB INTEGER DEFAULT NULL UNIQUE, --  afinal podemos ter um null e um unique na msm cena
  Morada TEXT(100) NOT NULL,
  Genero TEXT(1) DEFAULT "F" CHECK( Genero = "F" or Genero = "M"),
  UNIQUE (Nome, Morada)
);

CREATE TABLE CLIENTE (
  NrCliente INTEGER PRIMARY KEY,
  Pessoa_ID INTEGER UNIQUE REFERENCES PESSOA,
  UNIQUE(Pessoa_ID, NrCliente)
);

CREATE TABLE GESTOR (
  ID INTEGER PRIMARY KEY,
  Pessoa_ID INTEGER UNIQUE REFERENCES PESSOA,
  Ordenado REAL CHECK (Ordenado > 580), --minimum wage is aprox 580
  Contacto TEXT(14) UNIQUE,
  Email TEXT(40) UNIQUE,
  DataInicio DATE NOT NULL CHECK(DataInicio > 1910),
  DataFim DATE NOT NULL CHECK(DataFim > DataInicio),
  UNIQUE(Pessoa_ID, ID)
);

CREATE TABLE FUNCIONARIO (
  ID INTEGER PRIMARY KEY,
  Pessoa_ID INTEGER UNIQUE REFERENCES PESSOA,
  Ordenado REAL CHECK (Ordenado > 580) NOT NULL,
  RegimeTrabalho TEXT(50) NOT NULL,
  DuracaoContrato INTEGER CHECK (DuracaoContrato > 0) NOT NULL,
  DataInicio DATE NOT NULL CHECK(DataInicio > 1910),
  DataFim DATE NOT NULL CHECK (DataFim > DataInicio),
  UNIQUE(Pessoa_ID, ID)
);

CREATE TABLE LOJA (
  Endereço TEXT(70) PRIMARY KEY,
  Telefone TEXT(14) NOT NULL,
  Horario TEXT(20) NOT NULL,
  Gestor_ID INTEGER NOT NULL REFERENCES GESTOR,
  UNIQUE(Endereço, Gestor_ID),
  UNIQUE(Endereço, Telefone)
);

CREATE TABLE PRODUTO (
  ID INTEGER,
  QuantidadeProduto INTEGER DEFAULT 0 CHECK (QuantidadeProduto > -1),
  Nome TEXT(70) NOT NULL,
  TipoProduto_ID INTEGER NOT NULL REFERENCES TIPOPRODUTO,
  PRIMARY KEY(ID, Nome)
);

CREATE TABLE TIPOPRODUTO (
  ID INTEGER PRIMARY KEY,
  Nome TEXT NOT NULL,
  Preco REAL NOT NULL,
  BarCode TEXT(50) NOT NULL,
  DataValidade DATE NOT NULL,
  Fornecedor_ID NOT NULL REFERENCES FORNECEDOR
);

CREATE TABLE DESCONTO (
  ID INTEGER PRIMARY KEY,
  Percentage REAL NOT NULL CHECK(Percentage > 0 and Percentage < 100),
  DataInicio DATE NOT NULL CHECK(DataInicio > 1910),
  DataFim DATE NOT NULL CHECK (DataFim > DataInicio),
  Loja_Endereço TEXT (70) REFERENCES LOJA,
  TipoProduto_ID INTEGER REFERENCES TIPOPRODUTO
);

CREATE TABLE COMPRA (
  ID INTEGER PRIMARY KEY,
  PrecoTotal REAL NOT NULL CHECK (PrecoTotal > 0),
  DataCompra DATE NOT NULL,
  TipoPagamento TEXT(20) NOT NULL,
  DataEntrega DATE CHECK (DataCompra > DataEntrega),
  LocalEntrega TEXT(70),
  TipoProduto_ID INTEGER NOT NULL REFERENCES TIPOPRODUTO
);

CREATE TABLE FORNECEDOR (
  Nome TEXT PRIMARY KEY,
  Endereço TEXT(70) NOT NULL,
  Email TEXT(70) NOT NULL,
  Telefone TEXT(13) NOT NULL
);

CREATE TABLE CENTRODISTRIBUICAO (
  ID INTEGER PRIMARY KEY,
  Localizacao TEXT(70) NOT NULL,
  Horario TEXT(70) NOT NULL
);

CREATE TABLE VENDAS (
  TipoProduto_ID INTEGER NOT NULL,
  Loja_Endereço TEXT NOT NULL,
  Lucro REAL NOT NULL,
  QuantidadeVendida INTEGER NOT NULL CHECK (QuantidadeVendida > -1),
  Data DATE NOT NULL
);
