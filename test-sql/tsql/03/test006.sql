SELECT custid
FROM Sales.Orders
WHERE empid IN
  (SELECT empid FROM HR.Employees
   WHERE country = N'USA')
GROUP BY custid
HAVING COUNT(DISTINCT empid) =
  (SELECT COUNT(*) FROM HR.Employees
   WHERE country = N'USA');
