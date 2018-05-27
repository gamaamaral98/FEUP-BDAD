.mode columns
.header on
.nullvalue NULL 

PRAGMA foreign_keys = ON;

CREATE TRIGGER Verifica_Pessoa
BEFORE UPDATE OF NIB ON PESSOA
FOR EACH ROW
WHEN EXISTS (SELECT *
             FROM PESSOA
             WHERE NIB = New.NIB)
BEGIN
  SELECT RAISE (ROLLBACK, 'NIB ja existe.');
END;
