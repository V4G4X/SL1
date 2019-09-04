USE `OrderManagementSystem`;
DROP TRIGGER IF EXISTS `before_User_insert_negative`;
DELIMITER $$ 
CREATE TRIGGER `before_User_insert_negative`
BEFORE INSERT ON `User` FOR EACH ROW 
  BEGIN 
  IF `User`.`phone` < 0 THEN
    SET NEW.phone = -1 * NEW.phone;
END IF;
END; $$ 
DELIMITER ;


INSERT INTO User (fName,lName,phone,email) VALUES ('sddsfsd','asdasdas',-46345564,'dfsdf@djfsd.com');