SELECT 
   c.CustomerID,
   c.CustomerName,
   s.SupplierID,
   s.SupplierName,
   YEAR(OrderDate) as años,
   MONTH(OrderDate)as meses,
   SUM(p.Price * od.Quantity) as total
FROM example.Orders as o
INNER JOIN example.OrderDetails as od
ON o.OrderID = od.OrderID
INNER JOIN example.Product as p
ON od.ProductID = p.ProductID
INNER JOIN example.Customers as c
ON o.CustomerID = c.CustomerID
INNER JOIN example.Suppliers as s
On p.SupplierID = s.SupplierID
GROUP BY c.CustomerID,
         c.CustomerName,
         s.SupplierID,
         s.SupplierName,
         YEAR(OrderDate), 
         MONTH(OrderDate)