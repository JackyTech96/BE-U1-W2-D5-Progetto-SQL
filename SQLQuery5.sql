USE [ProgettoSettimanale]
GO
/****** Object:  StoredProcedure [dbo].[StoredProcedure9]    Script Date: 09/02/2024 12:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[StoredProcedure9] (@dataSelezionata date)
AS
BEGIN
	Select DataViolazione, Importo, DecurtamentoPunti FROM Verbale 
	WHERE DataViolazione = @dataSelezionata
END
