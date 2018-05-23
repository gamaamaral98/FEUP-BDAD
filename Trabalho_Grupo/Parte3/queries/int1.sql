-- mostra lojas numa Localidade

.mode	columns
.headers	on
.nullvalue	NULL

CREATE VIEW  GESTORESBASICINFO AS
SELECT GESTOR.Pessoa_ID, GESTOR.Contacto, PESSOA.Nome
FROM GESTOR, PESSOA
WHERE PESSOA.ID=GESTOR.Pessoa_ID;

SELECT DISTINCT Loja.Endereço, Loja.Telefone, Loja.Horario, GESTORESBASICINFO.Nome AS "Gestor", GESTORESBASICINFO.Contacto
FROM LOJA, GESTOR, GESTORESBASICINFO
where LOJA.localidade="Porto" AND Loja.Gestor_ID=GESTORESBASICINFO.Pessoa_ID;
