
--1
-- SELECT COUNT(*) as NumTotVerbali from Verbale

--2
-- SELECT IDAnagrafica, COUNT(*) as NumVerbaliAnagrafica from Verbale Group By IDAnagrafica

--3
/*SELECT 
TV.IDViolazione,
TV.Descrizione,
COUNT(V.IDVerbale) as NumVerbaliViolazione
FROM
Tipo_Violazione AS TV 
INNER JOIN
Verbale AS V ON TV.IDViolazione = V.IDViolazione
Group By 
TV.IDViolazione,
TV.Descrizione*/

--4
/*SELECT
    A.IDAnagrafica,
    A.Cognome,
    A.Nome,
    SUM(V.DecurtamentoPunti) AS TotPuntiDecurtati
FROM
    ANAGRAFICA AS A
INNER JOIN
    VERBALE AS V ON A.IDAnagrafica = V.IDAnagrafica
GROUP BY
    A.IDAnagrafica, A.Cognome, A.Nome;*/
	
--5
/*SELECT 
A.Cognome,
A.Nome,
V.DataViolazione,
V.IndirizzoViolazione,
V.Importo,
V.DecurtamentoPunti
FROM 
Anagrafica AS A
INNER JOIN
Verbale AS V ON A.IDAnagrafica = V.IDAnagrafica
WHERE
A.Città = 'Palermo'*/

--6
/*SELECT
A.Cognome,
A.Nome,
A.Indirizzo,
V.DataViolazione,
V.Importo,
V.DecurtamentoPunti
FROM Anagrafica AS A
INNER JOIN
Verbale AS V ON A.IDAnagrafica = V.IDAnagrafica
WHERE
V.DataViolazione BETWEEN '2009-02-01 ' AND '2009-07-31 ';*/

--7
/*SELECT 
A.IDAnagrafica,
A.Cognome,
A.Nome,
A.Indirizzo,
SUM(V.Importo) TotImporto
FROM Anagrafica AS A
INNER JOIN 
Verbale AS V On A.IDAnagrafica = V.IDAnagrafica
GROUP BY
A.IDAnagrafica, A.Cognome, A.Nome, A.Indirizzo*/

--8
-- SELECT * From Anagrafica Where Città = 'Palermo'

--10
/*SELECT 
NominativoAgente,
COUNT(*) AS ConteggioViolazioni
FROM 
Verbale
GROUP BY NominativoAgente*/

--11
/*SELECT
A.Cognome,
A.Nome,
A.Indirizzo,
V.DataViolazione,
V.Importo,
V.DecurtamentoPunti
FROM
Anagrafica AS A
INNER JOIN
Verbale AS V ON A.IDAnagrafica = V.IDAnagrafica
WHERE V.DecurtamentoPunti>5*/

--12
/*SELECT
A.Cognome,
A.Nome,
A.Indirizzo,
V.DataViolazione,
V.Importo,
V.DecurtamentoPunti
FROM
Anagrafica AS A
INNER JOIN
Verbale AS V ON A.IDAnagrafica = V.IDAnagrafica
WHERE V.Importo>400*/