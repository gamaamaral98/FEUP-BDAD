--display das entregas a fazer num determinado dia

.mode	columns
.headers	on
.nullvalue	NULL

SELECT COMPRA.ID AS "ID da compra", COMPRA.LocalEntrega AS "Local de entrega"
FROM COMPRA
WHERE COMPRA.DataEntrega = '2018-3-25';
