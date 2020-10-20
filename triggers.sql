DROP TRIGGER IF EXISTS `heroku_f3d0da64923a25a`.`website_roles_AFTER_INSERT`;

DELIMITER $$
USE `heroku_f3d0da64923a25a`$$
CREATE DEFINER=`root`@`localhost` TRIGGER `website_roles_AFTER_INSERT` AFTER INSERT ON `website_roles` FOR EACH ROW
BEGIN
  IF NEW.role='admin' OR NEW.role='owner' 
  THEN INSERT INTO website_privileges VALUES(NEW.developer_id, NEW.website_id, 'create');
     INSERT INTO website_privileges VALUES (NEW.developer_id, NEW.website_id, 'read');
     INSERT INTO website_privileges VALUES(NEW.developer_id, NEW.website_id, 'update');
     INSERT INTO website_privileges VALUES (NEW.developer_id, NEW.website_id, 'delete');
  END IF;
  IF NEW.role='writer' THEN
     INSERT INTO website_privileges VALUES (NEW.developer_id, NEW.website_id, 'create');
     INSERT INTO website_privileges VALUES (NEW.developer_id, NEW.website_id, 'read');
     INSERT INTO website_privileges VALUES (NEW.developer_id, NEW.website_id, 'update');
  END IF;
  IF NEW.role='editor' THEN
     INSERT INTO website_privileges VALUES (NEW.developer_id, NEW.website_id, 'read');
     INSERT INTO website_privileges VALUES (NEW.developer_id, NEW.website_id, 'update');
  END IF;
  IF NEW.role='reviewer' THEN
     INSERT INTO website_privileges VALUES (NEW.developer_id, NEW.website_id, 'read');
  END IF;
END$$
DELIMITER ;
DROP TRIGGER IF EXISTS `heroku_f3d0da64923a25a`.`website_roles_AFTER_UPDATE`;

DELIMITER $$
USE `heroku_f3d0da64923a25a`$$
CREATE DEFINER=`root`@`localhost` TRIGGER `website_roles_AFTER_UPDATE` AFTER UPDATE ON `website_roles` FOR EACH ROW
BEGIN
	DELETE FROM website_privileges;
  IF NEW.role='admin' OR NEW.role='owner' 
  THEN INSERT INTO website_privileges VALUES(NEW.developer_id, NEW.website_id, 'create');
     INSERT INTO website_privileges VALUES (NEW.developer_id, NEW.website_id, 'read');
     INSERT INTO website_privileges VALUES(NEW.developer_id, NEW.website_id, 'update');
     INSERT INTO website_privileges VALUES (NEW.developer_id, NEW.website_id, 'delete');
  END IF;
  IF NEW.role='writer' THEN
     INSERT INTO website_privileges VALUES (NEW.developer_id, NEW.website_id, 'create');
     INSERT INTO website_privileges VALUES (NEW.developer_id, NEW.website_id, 'read');
     INSERT INTO website_privileges VALUES (NEW.developer_id, NEW.website_id, 'update');
  END IF;
  IF NEW.role='editor' THEN
     INSERT INTO website_privileges VALUES (NEW.developer_id, NEW.website_id, 'read');
     INSERT INTO website_privileges VALUES (NEW.developer_id, NEW.website_id, 'update');
  END IF;
  IF NEW.role='reviewer' THEN
     INSERT INTO website_privileges VALUES (NEW.developer_id, NEW.website_id, 'read');
  END IF;
END$$
DELIMITER ;
DROP TRIGGER IF EXISTS `heroku_f3d0da64923a25a`.`website_roles_AFTER_DELETE`;

DELIMITER $$
USE `heroku_f3d0da64923a25a`$$
CREATE DEFINER = CURRENT_USER TRIGGER `heroku_f3d0da64923a25a`.`website_roles_AFTER_DELETE` AFTER DELETE ON `website_roles` FOR EACH ROW
BEGIN
	DELETE FROM website_privileges;
END$$
DELIMITER ;
