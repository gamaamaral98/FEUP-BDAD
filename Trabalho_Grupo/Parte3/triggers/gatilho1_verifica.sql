.mode columns
.header on
.nullvalue NULL 

PRAGMA foreign_keys = ON;

select count(*) AS "Nº de pessoas com NIB=20181504"
FROM PESSOA
WHERE NIB=20181504;

UPDATE pessoa
SET nib = 20181504
WHERE id = 1;

select count(*) AS "Nº de pessoas com NIB=20181504"
FROM PESSOA
WHERE NIB=20181504;
