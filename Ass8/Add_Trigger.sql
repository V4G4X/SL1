USE `OrderManagementSystem`;

DROP TRIGGER IF EXISTS `after_orders_insert`;
CREATE TRIGGER `after_orders_insert`
    AFTER INSERT ON `Contains`
    FOR EACH ROW
BEGIN
    --Declare temp Variable
	DECLARE `temp` INT;
    
    DECLARE `quant` INT;
    
    DECLARE `item-id` INT;

	-- SET `temp` = 
END;