USE rdsadmin;
GO
IF OBJECT_ID (N'#Bicycles',N'U') IS NOT NULL
DROP TABLE #Bicycles;
GO
SELECT * 
INTO #Bicycles
FROM rdsadmin.Production.Product
WHERE ProductNumber LIKE 'BK%';
GO
