USE `OrderManagementSystem`;

DROP TRIGGER IF EXISTS `before_User_insert_negative`;
DELIMITER $$ CREATE TRIGGER `before_User_insert_negative` BEFORE
INSERT
  ON `User` FOR EACH ROW BEGIN IF NEW.phone < 0 THEN
SET
  NEW.phone = -1 * NEW.phone;
END IF;
END;
$$ DELIMITER;
----------------
INSERT INTO
  User (fName, lName, phone, email)
VALUES
  (
    'sddsfsd',
    'asdasdas',
    -46345564,
    'dfsdf@djfsd.com'
  );
------------------------
SELECT
  *
FROM
  `User`;
------------------------
ALTER TABLE
  `User` AUTO_INCREMENT = 51;
---------------------------
DELETE FROM
  User
WHERE
  UID > 50;
-- INSERT INTO `User` SET
  -- `fName` = 'sddsfsd',
  -- `lName` = 'asdasdas',
  -- `phone` = -46345564,
  -- `email` = 'dfsdf@djfsd.com'
  -- ;