-- Multi-Table Query Practice --

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

SELECT c.CategoryName as Category, p.ProductName as Product
FROM [Product] as p
join Category as c on p.CategoryId = c.id;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

select o.Id as Order, s.CompanyName as Shipper
from [Order] as o
join Shipper as s on o.Id = s.Id
when o.OrderDate < date('2012-08-09'); 

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.


select p.ProductName as Product, od.Quantity as OrderDetail
from OrderDetail as od
join Product as p on od.productid = p.id
where orderid = "10251"
order by p.ProductName;


-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

select o.Id as [Order], c.CompanyName as Company, e.LastName as Employee
from [Order] as o 
join Customer as c on (c.id=o.customerid) 
INNER JOIN Employee AS e ON (e.id = o.employeeid);