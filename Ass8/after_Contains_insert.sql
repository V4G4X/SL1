-- USE `OrderManagementSystem`;
SELECT
  *
FROM
  Contains;
--   `Contains`,
  --   `Orders`,
  --   `Item`
  ---------------------------------
  SHOW CREATE TABLE `Contains`;
----------------------------
WHERE
  `Orders`.`OID` = `Contains`.`OID`
  AND `Contains`.`item_ID` = `Item`.`item_ID`;
SHOW TRIGGERS;
-------------------
  DROP TRIGGER IF EXISTS `after_Contains_insert`;
CREATE TRIGGER `after_Contains_insert`
AFTER INSERT ON `Contains` FOR EACH ROW BEGIN 
--Declare temp Variable
  DECLARE `cost` INT;
DECLARE `temp` INT;
DECLARE `quant` INT;
DECLARE `item-id` INT;
-- set ttl_amt = ()
END;