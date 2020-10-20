CREATE TABLE `website_privileges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `privilege` varchar(45) DEFAULT NULL,
  `website_id` varchar(45) DEFAULT NULL,
  `developer_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `privilege_enum_idx` (`privilege`),
  CONSTRAINT `privilege_enum` FOREIGN KEY (`privilege`) REFERENCES `privileges` (`privileges`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8
