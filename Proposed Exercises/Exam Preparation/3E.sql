DROP TRIGGER IF EXISTS alineaE;

CREATE TRIGGER alineaE
after INSERT ON AplicacaoServidor
WHEN (
    SELECT COUNT(*) AS nBugs
    FROM AplicacaoServidor
        NATURAL JOIN Aplicacao
        JOIN Bug USING(idAplicacao)
    WHERE vulnerabilidade='sim'
        AND idAplicacao=NEW.idAplicacao
    GROUP BY idAplicacao ) > 0
BEGIN
    UPDATE Servidor
    SET vulneravel='sim'
    WHERE Servidor.idServidor = NEW.idServidor;
END;
