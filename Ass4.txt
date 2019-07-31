    1. Display all the Purchase orders of a specific Customer.
       
	 select * from Orders where UID = 44;

    2. Get Customer and Data Item Information for a Specific Purchase Order

	SELECT fName,lName,phone, email,Item.name, Item.supplier , amount, quantity  
	FROM User,Orders,Contains,Item 
	WHERE User.UID = Orders.UID 
		AND Orders.OID = 43 
		AND Contains.OID = Orders.OID 
		AND Item.item_ID  = Contains.item_ID ;

    3. Get the Total Value of Purchase Orders.
	
	SELECT SUM(Orders.ttl_amt) AS Total_Order_Value FROM Orders;
	
    4. List the Purchase Orders in descending order as per total.

	SELECT  * FROM Orders ORDER BY ttl_amt DESC;

    5. Display the name of customers whose first name starts with “Rav”. (String matching :Like operator)
	
	SELECT fName,lName FROM User WHERE fName like "Sa%";

    6. Display the name of customer whose order amount is greater than all the customers. (Relational Operator: <, >, <=, >=, = =,!=)
	
	SELECT fName,lName FROM User WHERE UID = (SELECT UID FROM Orders WHERE ttl_amt = (SELECT MAX(Orders.ttl_amt) FROM Orders));

    7. Display order details of customer whose city name is “Pune” and purchase date is “2018-11-09” (Boolean Operators: and, or)
       
	SELECT Orders.OID, Orders.timestmp , Orders.stat, Orders.UID 
	FROM Address, User , Orders 
	WHERE Address.City like 'Cintra'  
	AND Address.UID = User.UID 
	AND Orders.UID = User.UID  
	AND timestmp like '2018-11-09%';

    8. Add discount of 5% to all the customers whose order is more than Rs. 5000/-. (Arithmetic Operators +, -, *, /)
	
	UPDATE Orders 
	SET Orders.ttl_amt  = Orders.ttl_amt  * '0.95'  
	WHERE Orders.ttl_amt  > '5000';


    9. Delete Purchase Order 1001.	
		
	DELETE FROM Orders 
	WHERE OID = 51;
