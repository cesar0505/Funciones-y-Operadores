
--Primero seleccionamos la base de datos donde trabajaremos 

USE Northwind
------------------------------------------------------------------------------------------------------------------------------------------------
                                                --CESAR ALBERTO MU�OZ PINEDA--
                                                    --CODIGO SMIS012721--
------------------------------------------------------------------------------------------------------------------------------------------------
--1.Utilice la funci�n DATEDIFF para obtener la diferencia en d�as entre OrderData y RequiredDate de la tabla orders.

SELECT CustomerID,OrderID,DATEDIFF(DAY, OrderDate,RequiredDate)
FROM Orders;
------------------------------------------------------------------------------------------------------------------------------------------------

--2.Muestra el n�mero de clientes, la primera fecha y la fecha m�s reciente de la tabla orders.

SELECT COUNT(CustomerID)Total_Clientes,MIN(OrderDate)Primer_Fecha,MAX(ShippedDate)Fecha_Mas_Reciente
FROM Orders
------------------------------------------------------------------------------------------------------------------------------------------------

--3. Mostrar companyName de la tabla customers, en donde City sea diferente de Country y country no sea Mexico.

SELECT CompanyName,City,Country
FROM Customers
WHERE City!=Country AND NOT Country='Mexico'
------------------------------------------------------------------------------------------------------------------------------------------------

--4.Mostrar la cantidad de pedidos realizados por un cliente de la tabla orders en donde los pedidos sean mayores a 5 y menores a 10  (Muestre 3 resultados, el primero utilizando >=,<=; el segundo utilizando BETWEEN y el tercero utilizando IN).

SELECT CustomerID,EmployeeID
FROM Orders
WHERE EmployeeID>=5 OR EmployeeID<=10 ORDER BY EmployeeID; 

SELECT CustomerID,EmployeeID
FROM Orders
WHERE EmployeeID BETWEEN 5 AND 10; 

SELECT CustomerID,EmployeeID
FROM Orders
WHERE EmployeeID IN(5,10); 
------------------------------------------------------------------------------------------------------------------------------------------------

--5 Mostrar el c�digo del cliente y la fecha que realizo la orden de la tabla orders, deber� mostrar solo las del a�o 1998, utilice el operador LIKE y la funci�n YEAR

SELECT 
CustomerID,EmployeeID,YEAR(OrderDate)
FROM Orders
WHERE YEAR (OrderDate) LIKE '1998%'
ORDER BY CustomerID;

------------------------------------------------------------------------------------------------------------------------------------------------
