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

--Seleccionar el nombre más corto
SELECT TOP 1 FirstName, DATALENGTH(FirstName) AS NAME_LENGTH 
FROM Person.Person
ORDER BY DATALENGTH(FirstName) ASC, FirstName	ASC;

--Seleccionar el nombre más largo
SELECT TOP 1 FirstName, DATALENGTH(FirstName) AS NAME_LENGTH 
FROM Person.Person
ORDER BY DATALENGTH(FirstName) DESC, FirstName	DESC;

--Seleccionar registros que comiencen con vocales
SELECT DISTINCT FirstName 
FROM Person.Person
WHERE FirstName LIKE 'A%'
    OR FirstName LIKE 'E%'
    OR FirstName LIKE 'I%'
    OR FirstName LIKE 'O%'
    OR FirstName LIKE 'U%';

--Seleccionar registros que terminen con vocales
SELECT DISTINCT FirstName 
FROM Person.Person
WHERE FirstName LIKE '%A'
    OR FirstName LIKE '%E'
    OR FirstName LIKE '%I'
    OR FirstName LIKE '%O'
    OR FirstName LIKE '%U';
