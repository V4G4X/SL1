USE OrderManagementSystem;
DROP TRIGGER IF EXISTS `after_orders_insert_timestamp`;
DELIMITER $$
CREATE TRIGGER `after_orders_insert_timestamp`
AFTER INSERT ON `Orders` FOR EACH ROW
BEGIN
  SET @IID = (SELECT `UID` FROM `User` WHERE ( `User`.`UID` = 8));
  SELECT IF( @IID IS NULL, "Invalid UID","UID is Valid") AS "Message";
  Call Test();
END$$
DELIMITER ; 
-----------------------------------------------------------------------
SET @IID = (SELECT `UID` FROM `User` WHERE ( `User`.`UID` = NEW.UID));
SELECT IF( @IID IS NULL, "Invalid UID","UID is Valid") AS "Message";
-----------------------------------------------------------------------
Select @IID;
SET @IID = (SELECT `UID` FROM `User` WHERE ( `User`.`UID` = 8));
-----------------------------------------------------------------------
DELIMITER $$
CREATE PROCEDURE TEST() BEGIN
END
$$
DELIMITER ;
-----------------------------------------------------------------------
DROP PROCEDURE IF EXISTS `Test`;
  