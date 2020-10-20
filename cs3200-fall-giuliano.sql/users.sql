CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `userAgreement` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `user_is_a_person` FOREIGN KEY (`id`) REFERENCES `persons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8
