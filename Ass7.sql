-- Get order details of products which are not from electronics and sports category

SELECT DISTINCT Orders.*
FROM Item, Orders, Contains
WHERE Category NOT IN ('Bread','Alcohol') AND Item.item_ID = Contains.item_ID AND Contains.OID = Orders.OID;

SELECT *
FROM Orders
WHERE OID IN (SELECT OID
FROM Contains
WHERE item_ID IN (SELECT item_ID
FROM Item
WHERE Category NOT IN('Bread','Alcohol')));

-- Get the name and quantity of product which have either 10 or 20 or 30 quantities.
SELECT Item.name, Contains.quantity
FROM Contains, Item
WHERE quantity IN ('1','5','10') AND Item.item_ID = Contains.item_ID;

-- Get the product details whose product price is more than “Apple 7”.
SELECT *
FROM Item
WHERE amount > (SELECT DISTINCT amount
FROM Item
WHERE name LIKE 'Flax Seed');

-- Find the purchase order whose purchase amount is greater than maximum purchase amount.
SELECT *
FROM Orders
WHERE


-- Find the purchase order whose purchase amount is greater than maximum purchase amount.
select *
from Orders
where ttl_amt > (SELECT MAX(ttl_amt)
FROM Orders);


User Name starts
with 'E'
His Order IDs
Each Order's Price
Item's name starts
with 'P' too
ETA between Jan and March

select fName, Orders.OID, Orders.ttl_amt, Item.name, Delivery.status
from User, Orders, Contains, Item, Delivery
where fName like 'T%' AND name like 'P%' AND (MONTH(ETA) between 1 AND 3) AND User.UID = Orders.UID AND Orders.OID = Contains.OID AND Contains.item_ID = Item.item_ID AND Delivery.OID = Orders.OID;