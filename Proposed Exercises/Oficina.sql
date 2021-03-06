.mode columns
.headers on

DROP TABLE IF EXISTS MARCA;
DROP TABLE IF EXISTS MODELO;
DROP TABLE IF EXISTS CODPOSTAL;
DROP TABLE IF EXISTS CLIENTE;
DROP TABLE IF EXISTS CARRO;
DROP TABLE IF EXISTS REPARACAO;
DROP TABLE IF EXISTS PECA;
DROP TABLE IF EXISTS REPARACAOPECA;
DROP TABLE IF EXISTS PECAMODELO;
DROP TABLE IF EXISTS ESPECIALIDADE;
DROP TABLE IF EXISTS FUNCIONARIO;
DROP TABLE IF EXISTS FUNCIONARIOREPARACAO;

CREATE TABLE MARCA (
  idMarca INTEGER PRIMARY KEY,
  nome TEXT
);

CREATE TABLE MODELO (
  idMOdelo INTEGER PRIMARY KEY,
  nome TEXT,
  idMarca INTEGER REFERENCES MARCA
);

CREATE TABLE CODPOSTAL (
  codPostal1 TEXT PRIMARY KEY,
  localidade TEXT
);

CREATE TABLE CLIENTE (
  idCliente INTEGER PRIMARY KEY,
  nome TEXT,
  morada TEXT,
  codPostal1 TEXT REFERENCES CODPOSTAL,
  codPostal2 TEXT,
  telefone TEXT
);

CREATE TABLE CARRO (
  idCarro INTEGER PRIMARY KEY,
  matricula TEXT UNIQUE,
  idModelo INTEGER REFERENCES MODELO,
  idCliente INTEGER REFERENCES CLIENTE
);

CREATE TABLE REPARACAO (
  idReparacao INTEGER PRIMARY KEY,
  dataInicio DATE,
  dataFim DATE CHECK (dataFim > dataInicio),
  idCliente REFERENCES CLIENTE,
  idCarro REFERENCES CARRO
);

CREATE TABLE PECA (
  idPeca INTEGER PRIMARY KEY,
  codigo TEXT UNIQUE,
  desingacao TEXT,
  custoUnitario REAL CHECK (custoUnitario >= 0),
  quantidade INTEGER CHECK (quantidade >= 0)
);

CREATE TABLE REPARACAOPECA (
  idReparacao INTEGER REFERENCES REPARACAO,
  idPeca INTEGER REFERENCES PECA,
  quantidade INTEGER CHECK (quantidade >= 0),
  PRIMARY KEY (idReparacao, idPeca)
);

CREATE TABLE PECAMODELO (
  idPeca INTEGER REFERENCES PECA,
  idModelo INTEGER REFERENCES MODELO,
  PRIMARY KEY (idPeca, idModelo)
);

CREATE TABLE ESPECIALIDADE (
  idEspecialidade INTEGER PRIMARY KEY,
  nome TEXT,
  custoHorario REAL CHECK (custoHorario >= 0)
);

CREATE TABLE FUNCIONARIO (
  idFuncionario INTEGER PRIMARY KEY,
  nome TEXT,
  morada TEXT,
  codPostal1 TEXT REFERENCES CODPOSTAL,
  codPostal2 TEXT,
  telefone TEXT,
  idEspecialidade INTEGER REFERENCES ESPECIALIDADE
);

CREATE TABLE FUNCIONARIOREPARACAO (
  idFuncionario INTEGER REFERENCES FUNCIONARIO,
  idReparacao INTEGER REFERENCES REPARACAO,
  numHoras INTEGER CHECK (numHoras > 0),
  PRIMARY KEY (idFuncionario, idReparacao)
);
