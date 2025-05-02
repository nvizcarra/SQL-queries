--Seleccionar números pares
SELECT BusinessEntityID, FirstName, LastName FROM Person.Person
WHERE BusinessEntityID % 2 = 0;

--Seleccionar números pares y excluir duplicados (DISTINCT)
SELECT DISTINCT BusinessEntityID, FirstName, LastName FROM Person.Person
WHERE BusinessEntityID % 2 = 0;