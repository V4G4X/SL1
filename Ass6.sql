-- A]. Aggregate functions (count, sum, avgetc)
--  Get the total no of customers.
SELECT
  COUNT(UID) AS User_Count
FROM
  USER;
--  Display average purchase amount of all the customers.
SELECT
  AVG(Orders.ttl_amt) AS Average_Order_Cost
FROM
  Orders;
--  Display total purchase amount of all the customers.
SELECT
  SUM(Orders.ttl_amt) AS Average_Order_Cost
FROM
  Orders;
-- B]. Built in functions (now (), date (), day (), time () etc)
  --  Find DAYNAME, MONTHNAME and YEAR of the purchase order made on “2018-07-28”
SELECT
  DAYNAME ('2018-07-28') AS DAY,
  MONTHNAME ('2018-07-28') AS MONTH,
  YEAR ('2018-07-28') AS YEAR;
--  Get current date & time, current time, current date
SELECT
  CURRENT_TIMESTAMP,
  CURRENT_TIME,
  CURRENT_DATE;
--  Get 6 month future & past date using interval function based on current date and name the column accordingly.
SELECT
  DATE_SUB (CURRENT_DATE, INTERVAL 6 MONTH) AS '6 MONTHS BEFORE',
  DATE_ADD (CURRENT_DATE, INTERVAL 6 MONTH) AS '6 MONTHS LATER';
--  Find purchase details of the customers, group by product category.
SELECT
  category,
  COUNT(*)
FROM
  Item
GROUP BY
  category;
-- Show User details,
  -- link
  -- User.UID <---> Order.UID
  -- Order.OID <------> Contains.OID
  -- Contains.item_ID <---------> Item.item_ID
SELECT
  fName,
  lName,
  phone,
  email,
  Orders.stat,
  category
FROM
  USER,
  Orders,
  Contains,
  Item
WHERE
  User.UID = Orders.UID
  AND Order.OID = Contains.OID
  AND Contains.item_ID = Item.item_ID
GROUP BY
  category;
SELECT
  User.UID,
  fName,
  lName,
  phone,
  email,
  Orders.stat,
  category
FROM
  USER,
  Orders,
  Contains,
  Item
WHERE
  User.UID = Orders.UID
  AND Orders.OID = Contains.OID
  AND Contains.item_ID = Item.item_ID;
--  Find the purchase details of all the customers who made shopping today.(Using having clause)
SELECT
  *
FROM
  Orders
WHERE
  DATE(timestmp) LIKE (
    SELECT
      DISTINCT date(Orders.timestmp)
    FROM
      Orders
    GROUP BY
      Orders.timestmp
    HAVING
      date(Orders.timestmp) = CURRENT_DATE
  );