--Seleccionar números pares
SELECT BusinessEntityID, FirstName, LastName FROM Person.Person
WHERE BusinessEntityID % 2 = 0;