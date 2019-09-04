DROP TRIGGER IF EXISTS `before_User_insert_Upper`;

DELIMITER $$
CREATE TRIGGER `before_User_insert_Upper` BEFORE
INSERT
  ON `User` FOR EACH ROW BEGIN
SET
  NEW.fName = UPPER(NEW.fName);
SET
  NEW.lName = UPPER(NEW.lName);
END$$
DELIMITER ;

SELECT
  `User`.*
FROM
  `User`;
