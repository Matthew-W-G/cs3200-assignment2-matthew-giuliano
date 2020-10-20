CREATE TABLE `developers` (
  `id` int(11) NOT NULL,
  `developerKey` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `developer_is_a_person` FOREIGN KEY (`id`) REFERENCES `persons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8
