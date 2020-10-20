CREATE TABLE `phones` (
  `id` int(11) NOT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `primary` tinyint(1) DEFAULT NULL,
  `person_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`person_id`),
  CONSTRAINT `person_has_a_phone` FOREIGN KEY (`person_id`) REFERENCES `widgets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8
