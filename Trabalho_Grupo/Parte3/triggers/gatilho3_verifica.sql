.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

SELECT COUNT(*) AS "Nº de trabalhadores"
FROM TRABALHAEM;

INSERT INTO TRABALHAEM VALUES(1, "DASDA");
INSERT INTO TRABALHAEM VALUES(1231213123, "Rua da Graça, 1170-166");

SELECT COUNT(*) AS "Nº de trabalhadores"
FROM TRABALHAEM;
