--Seleccionar números pares
SELECT BusinessEntityID, FirstName, LastName FROM Person.Person
WHERE BusinessEntityID % 2 = 0;

--Seleccionar números pares y excluir duplicados (DISTINCT)
SELECT DISTINCT BusinessEntityID, FirstName, LastName FROM Person.Person
WHERE BusinessEntityID % 2 = 0;

--Diferencia entre la cantidad total de nombres y la cantidad de DISTINCT nombres
SELECT
	COUNT(FirstName) - COUNT(DISTINCT FirstName) AS NAME_ROWS_DIFFERENCE
FROM Person.Person;

SELECT 
	COUNT(CITY) - COUNT(DISTINCT CITY) AS CITY_ROWS_DIFFERENCE
FROM STATION;