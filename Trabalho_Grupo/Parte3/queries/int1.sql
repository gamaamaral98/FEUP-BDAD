-- mostra lojas numa Localidade

.mode	columns
.headers	on
.nullvalue	NULL

SELECT DISTINCT Loja.Endereço, Loja.Telefone, Loja.Horario, Pessoa.Nome AS "Gestor", Gestor.Contacto
FROM Loja INNER JOIN Pessoa, Gestor
ON Pessoa.ID=Loja.Gestor_ID AND Gestor.Pessoa_ID=Loja.Gestor_ID AND Loja.Localidade="Porto";
