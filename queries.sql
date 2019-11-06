-- Multi-Table Query Practice --

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

SELECT c.CategoryName as Category, p.ProductName as Product
FROM [Product] as p
join Category as c on p.CategoryId = c.id;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

SELECT o.Id as Order, s.CompanyName as Shipper
From Shipper as s
join [Order] as o on s.Id = o.Id
when o.OrderDate < queryDate
when queryDate = date(2012-08-09);

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.




-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
