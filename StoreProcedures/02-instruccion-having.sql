use northwind

select o.OrderID, o.OrderDate, c.CompanyName, 
c.City, od.Quantity, od.UnitPrice
from Orders as o
inner join [Order Details] as od
on o.OrderID = od.OrderID
inner join Customers as c
on c.CustomerID = o.CustomerID
where c.city in ('San Cristóbal', 'México D.F.');
------------------------------------------------------------
select  c.CompanyName, 
count(o.OrderID) as [numero ordenes]
from Orders as o
inner join [Order Details] as od
on o.OrderID = od.OrderID
inner join Customers as c
on c.CustomerID = o.CustomerID
where c.city in ('San Cristóbal', 'México D.F.')
group by c.CompanyName
having count(*) > 18;


select c.CategoryName, p.ProductName, 
AVG(p.UnitPrice) as 'Promedio de Precios'
from 
categories as c
left join products as p
on c.CategoryID = p.CategoryID
where p.CategoryID is not null
group by c.CategoryName, p.ProductName
having max(p.UnitPrice) > 263
order by CategoryName 





