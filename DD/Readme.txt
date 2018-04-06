DATABASE USED : MySQL

Tables:

CREATE TABLE `user` (
  `name` varchar(255) DEFAULT NULL,
  `loc` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE `userfrag1` (
  `name` varchar(255) DEFAULT NULL,
  `loc` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE `userfrag2` (
  `name` varchar(255) DEFAULT NULL,
  `loc` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1

Triggers:

DELIMITER $$
CREATE TRIGGER `usersort` AFTER INSERT ON `user` 
  FOR EACH ROW
  BEGIN
  Delete from userfrag1;
  Insert into userfrag1
	Select * from user where loc = 'Mumbai';
  Delete from userfrag2;
  Insert into userfrag2
	Select * from user where loc = 'Delhi';
  END$$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER `usersort1` AFTER update ON `user` 
  FOR EACH ROW
  BEGIN
  Delete from userfrag1;
  Insert into userfrag1
	Select * from user where loc = 'Mumbai';
  Delete from userfrag2;
  Insert into userfrag2
	Select * from user where loc = 'Delhi';
  END$$
DELIMITER ;