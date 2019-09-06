USE OrderManagementSystem;
DROP TRIGGER IF EXISTS `after_orders_insert_timestamp`;
DELIMITER $$
CREATE TRIGGER `after_orders_insert_timestamp`
AFTER
INSERT
  ON `Orders` FOR EACH ROW BEGIN
SELECT
  @var;
SET
  @var = (
    SELECT
      CURRENT_TIMESTAMP
  );
  SET Orders.timestmp = @var;
END;
$$ DELIMITER;

show create table Orders;
SHOW TRIGGERS;

ALTER TABLE `Orders` MODIFY `timestmp` TIMESTAMP NOT NULL AFTER `OID`;

SELECT @var;
SET @var = (SELECT CURRENT_TIMESTAMP);
select @var;