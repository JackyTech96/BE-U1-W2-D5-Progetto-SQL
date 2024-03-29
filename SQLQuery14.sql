USE [ProgettoSettimanale]
GO
/****** Object:  StoredProcedure [dbo].[VisualizzazioneContravvenzioniPerAnno]    Script Date: 09/02/2024 14:19:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[VisualizzazioneContravvenzioniPerAnno] (@Anno int)
AS
BEGIN
SELECT
A.Cognome,
A.Nome,
A.Indirizzo,
V.DataViolazione,
V.Importo,
V.DecurtamentoPunti
FROM
Anagrafica AS A
INNER JOIN
Verbale AS V ON A.IDAnagrafica=V.IDAnagrafica
WHERE 
YEAR(V.DataViolazione) = @Anno
END
