.mode columns
.headers on

DROP TABLE IF EXISTS ALUNO;
DROP TABLE IF EXISTS PROF;
DROP TABLE IF EXISTS CADEIRA;
DROP TABLE IF EXISTS PROVA;
DROP VIEW IF EXISTS ProfCadeiras;


CREATE TABLE ALUNO (
  nr INTEGER PRIMARY KEY,
  nome TEXT NOT NULL
);

CREATE TABLE PROF (
  sigla TEXT PRIMARY KEY,
  nome TEXT NOT NULL
);

CREATE TABLE CADEIRA (
  codigo TEXT PRIMARY KEY,
  design TEXT NOT NULL,
  curso TEXT NOT NULL,
  regente TEXT NOT NULL REFERENCES PROF
);

CREATE TABLE PROVA(
  nr INTEGER,
  cod TEXT,
  data DATE,
  nota INTEGER CHECK (nota > -1 & nota < 21) DEFAULT 0,
  PRIMARY KEY (nr, cod, data)
);

INSERT INTO ALUNO VALUES (100, "João");
INSERT INTO ALUNO VALUES (110, "Manuel");
INSERT INTO ALUNO VALUES (120, "Rui");
INSERT INTO ALUNO VALUES (130, "Abel");
INSERT INTO ALUNO VALUES (140, "Fernano");
INSERT INTO ALUNO VALUES (150, "Ismael");

INSERT INTO PROF VALUES ("ECO", "Eugénio");
INSERT INTO PROF VALUES ("FNF", "Fernando");
INSERT INTO PROF VALUES ("JLS", "João");

INSERT INTO CADEIRA VALUES ("TS1", "Teoria de Sistemas 1", "IS", "FNF");
INSERT INTO CADEIRA VALUES ("BD", "Bases de Dados", "IS", "ECO");
INSERT INTO CADEIRA VALUES ("EIA", "Estruturas de Informação e Algoritmos", "IS", "ECO");
INSERT INTO CADEIRA VALUES ("EP", "Eletrónica de Potência", "IS", "JLS");
INSERT INTO CADEIRA VALUES ("IE", "Instalações Elétricas", "IS", "JLS");

INSERT INTO PROVA VALUES(100, "TS1", "92-02-11", 8);
INSERT INTO PROVA VALUES(100, "TS1", "93-02-02", 11);
INSERT INTO PROVA VALUES(100, "BD", "93-02-04", 17);
INSERT INTO PROVA VALUES(100, "EIA", "92-01-29", 16);
INSERT INTO PROVA VALUES(100, "EIA", "93-02-02", 13);
INSERT INTO PROVA VALUES(110, "EP", "92-01-30", 12);
INSERT INTO PROVA VALUES(110, "IE", "92-02-05", 10);
INSERT INTO PROVA VALUES(110, "IE", "93-02-01", 14);
INSERT INTO PROVA VALUES(120, "TS1", "93-01-31", 15);
INSERT INTO PROVA VALUES(120, "EP", "93-02-04", 13);
INSERT INTO PROVA VALUES(130, "BD", "93-02-04", 12);
INSERT INTO PROVA VALUES(130, "EIA", "93-02-02", 7);
INSERT INTO PROVA VALUES(130, "TS1", "92-02-11", 8);
INSERT INTO PROVA VALUES(140, "TS1", "93-01-31", 10);
INSERT INTO PROVA VALUES(140, "TS1", "92-02-11", 13);
INSERT INTO PROVA VALUES(140, "EIA", "93-02-02", 11);
INSERT INTO PROVA VALUES(150, "TS1", "92-02-11", 10);
INSERT INTO PROVA VALUES(150, "EP", "93-02-02", 11);
INSERT INTO PROVA VALUES(150, "BD", "93-02-04", 17);
INSERT INTO PROVA VALUES(150, "EIA", "92-01-29", 16);
INSERT INTO PROVA VALUES(150, "IE", "93-02-02", 13);



-- http://www.sqlitetutorial.net/sqlite-inner-join/
-- CREATE VIEW ProfCadeiras AS SELECT codigo, CADEIRA.regente, PROF.nome FROM CADEIRA INNER JOIN PROF ON PROF.sigla = CADEIRA.regente;
