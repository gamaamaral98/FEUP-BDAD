<<<<<<< HEAD
<<<<<<< HEAD
.mode columns
.header on
.nullvalue NULL 

PRAGMA foreign_keys = ON;

CREATE TRIGGER Verifica_Pessoa
=======
CREATE TRIGGER VERIFICA_PESSOA
>>>>>>> bd4dc90f5bfe10546500e5cbb902691703abda10
BEFORE UPDATE OF NIB ON PESSOA
FOR EACH ROW
WHEN EXISTS (SELECT *
             FROM PESSOA
             WHERE NIB = New.NIB)
BEGIN
  SELECT RAISE (ROLLBACK, 'NIB ja existe.');
END;
