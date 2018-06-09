DROP TRIGGER IF EXISTS alineaF;
 
CREATE TRIGGER alineaF
after INSERT ON Bug
WHEN NEW.vulnerabilidade = 'sim'
BEGIN
    UPDATE Bug
    SET prioridade=1
    WHERE Bug.idBug = NEW.idBug;
   
    UPDATE Servidor
    SET vulneravel='sim'
    WHERE EXISTS
       (SELECT *
        FROM Servidor AS S2
            NATURAL JOIN AplicacaoServidor
            NATURAL JOIN Aplicacao
        WHERE Aplicacao.idAplicacao = NEW.idAplicacao
        AND Servidor.idServidor = S2.idServidor);
END;