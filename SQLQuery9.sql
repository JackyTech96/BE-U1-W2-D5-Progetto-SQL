
CREATE PROCEDURE VisualizzazioneDecurtamentoPuntiPerData (@data date)
AS
BEGIN
	SELECT
	SUM(DecurtamentoPunti) AS TotDecurtamentoPunti
	FROM
	Verbale
	WHERE
	DataViolazione=@data
	
END
GO
