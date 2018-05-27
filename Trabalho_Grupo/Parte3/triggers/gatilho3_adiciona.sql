-- Verifica se, quando se inserte em trabalhaem , o empregado e a loja existem

.mode columns
.header on
.nullvalue NULL
PRAGMA foreign_keys = ON;

CREATE TRIGGER CHECK_TRABALHAEM
BEFORE INSERT ON TRABALHAEM
FOR EACH ROW
WHEN NOT EXISTS (SELECT *
                 FROM FUNCIONARIO
                 WHERE Pessoa_ID = New.Funcionario_ID)
OR NOT EXISTS (SELECT *
               FROM LOJA
               WHERE Endereço = New.Loja_Endereço)
BEGIN
  SELECT RAISE (ROLLBACK, 'Empregado ou loja não existem.');
END;
