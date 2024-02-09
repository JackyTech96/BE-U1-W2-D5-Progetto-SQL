
CREATE PROCEDURE EliminaVerbale(@idEliminaVerbale int)
AS
BEGIN
DELETE FROM Verbale
Where IDVerbale = @idEliminaVerbale
END
GO
