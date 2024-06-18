-- Data Type Example: total spending per cust
SELECT -- info we want
  Customer.CustomerId,
  FirstName,
  LastName,
  Sum(TotalDue) -- source: customer join w order
FROM Customer
  JOIN Orders on Customer.CustomerID = Orders.CustomerID -- why?
GROUP BY Customer.CustomerID,
  FirstName,
  LastName -- 10 top amt due customers
ORDER BY Sum(TotalDue) DESC
LIMIT 10