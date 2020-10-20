CREATE TABLE `page_roles` (
  `id` int(11) NOT NULL,
  `role` varchar(45) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `developer_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `page_role_enumeration_idx` (`role`),
  KEY `developer_role_idx` (`developer_id`),
  KEY `page_role_idx` (`page_id`),
  CONSTRAINT `developers_role` FOREIGN KEY (`developer_id`) REFERENCES `developers` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `page_role` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `page_role_enumeration` FOREIGN KEY (`role`) REFERENCES `roles` (`role`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8
