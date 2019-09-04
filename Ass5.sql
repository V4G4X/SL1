1.Display ALL the Purchase orders OF a specific Customer.
SELECT
  *
FROM
  Orders
WHERE
  UID = 44;
2.Get Customer
  AND Data Item Information FOR a Specific Purchase ORDER
SELECT
  fName,
  lName,
  phone,
  email,
  Item.name,
  Item.supplier,
  amount,
  quantity
FROM
  USER,
  Orders,
  Contains,
  Item
WHERE
  User.UID = Orders.UID
  AND Orders.OID = 43
  AND Contains.OID = Orders.OID
  AND Item.item_ID = Contains.item_ID;
3.Get the Total Value OF Purchase Orders.
SELECT
  SUM(Orders.ttl_amt) AS Total_Order_Value
FROM
  Orders;
4.List the Purchase Orders IN descending ORDER AS per total.
SELECT
  *
FROM
  Orders
ORDER BY
  ttl_amt DESC;
5.Display the name OF customers whose FIRST name starts WITH Rav.(String matching :Like OPERATOR)
SELECT
  fName,
  lName
FROM
  USER
WHERE
  fName LIKE "Sa%";
6.Display the name OF customer whose ORDER amount IS greater than ALL the customers.
SELECT
  fName,
  lName
FROM
  USER
WHERE
  UID = (
    SELECT
      UID
    FROM
      Orders
    WHERE
      ttl_amt = (
        SELECT
          MAX(Orders.ttl_amt)
        FROM
          Orders
      )
  );
7.Display ORDER details OF customer whose city name IS Pune
  AND purchase date IS 2018 - 11 - 09
SELECT
  Orders.OID,
  Orders.timestmp,
  Orders.stat,
  Orders.UID
FROM
  Address,
  USER,
  Orders
WHERE
  Address.City LIKE 'Cintra'
  AND Address.UID = User.UID
  AND Orders.UID = User.UID
  AND timestmp LIKE '2018-11-09%';
8.
ADD
  discount OF 5 % TO ALL the customers whose ORDER IS more than Rs.5000 / -.
UPDATE
  Orders
SET
  Orders.ttl_amt = Orders.ttl_amt * '0.95'
WHERE
  Orders.ttl_amt > '5000';
9.Delete Purchase ORDER 1001.
DELETE FROM
  Orders
WHERE
  OID = 51;