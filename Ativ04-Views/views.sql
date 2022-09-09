-- Criar Views para todas consultas abaixo:
-- 063. Criar View para consulta abaixo:
Select
    o.orderId, o.orderDate, e.firstName, d.productId, d.quantity, p.price, SUM(d.quantity * p.price) as Total
FROM
    Orders o
    Inner Join Employees e ON (e.employeeId = o.employeeId)
    Inner Join OrderDetails d ON (d.orderId = o.orderId)
    Inner Join Products p ON (p.productId = d.productId)
GROUP BY o.orderId, o.orderDate, e.firstName
ORDER BY Total DESC

-- 064. Criar View para consulta abaixo:
SELECT
    o.OrderID, o.OrderDate, e.FirstName, p.ProductName, c.CategoryName, d.Quantity , p.Price, d.Quantity * p.Price As 'Total Produto'
FROM
    Orders o
    Inner JOIN Employees e On (e.EmployeeID = o.EmployeeID)
    Inner JOIN OrderDetails d On (d.orderid = o.orderid)
    Inner JOIN Products p ON (p.ProductID = d.ProductID )
    Inner JOIN Categories c ON (c.CategoryID = p.CategoryID)

-- 065. Criar View para consulta abaixo:
SELECT
    c.customername,
    SUM(d.Quantity * p.Price) as 'Total de Vendas',
    AVG(d.Quantity * p.Price) as 'Média de Vendas'
FROM
    Orders o
    INNER JOIN OrderDetails d ON (d.OrderID= o.OrderID)
    INNER JOIN Customers c ON (c.CustomerID = o.CustomerID )
    INNER JOIN Products p ON (p.ProductID = d.ProductID)
GROUP BY c.customername
ORDER BY 3 DESC

-- 066. Criar View para consulta abaixo:
SELECT
    c.categoryname,
    SUM(d.Quantity * p.Price) as 'Total de Vendas',
    AVG(d.Quantity * p.Price) as 'Média de Vendas'
FROM
    OrderDetails d
    INNER JOIN Products p ON (p.ProductID = d.ProductID)
    INNER JOIN Categories c ON (c.categoryid = p.categoryid )
GROUP BY c.categoryname
ORDER BY 3 DESC

-- 067. Criar View para consulta abaixo:
SELECT
    e.LastName+', '+e.FirstName as 'Empregado',
    SUM(d.Quantity * p.Price) as 'Total de Vendas',
    AVG(d.Quantity * p.Price) as 'Média de Vendas'
FROM
    Orders o
    INNER JOIN OrderDetails d ON (d.OrderID= o.OrderID)
    INNER JOIN Employees e ON (e.employeeid = o.employeeid )
    INNER JOIN Products p ON (p.ProductID = d.ProductID)
GROUP BY e.LastName+', '+e.FirstName
ORDER BY 3 DESC

-- 068. Criar View para consulta abaixo:
SELECT
    s.ShipperName,
    SUM(d.Quantity * p.Price) as 'Total de Vendas',
    AVG(d.Quantity * p.Price) as 'Média de Vendas'
FROM
    Orders o
    INNER JOIN OrderDetails d ON (d.OrderID= o.OrderID)
    INNER JOIN Shippers s ON (s.ShipperID= o.ShipperID)
    INNER JOIN Products p ON (p.ProductID = d.ProductID)
GROUP BY s.ShipperName
ORDER BY 3 DESC
