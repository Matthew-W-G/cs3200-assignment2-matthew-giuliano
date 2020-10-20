CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `b87c8530eb0e26`@`%` 
    SQL SECURITY DEFINER
VIEW `developer_roles_and_privileges` AS
    SELECT 
        `persons`.`firstName` AS `firstName`,
        `persons`.`lastName` AS `lastName`,
        `persons`.`username` AS `username`,
        `persons`.`password` AS `password`,
        `websites`.`name` AS `name`,
        `websites`.`visits` AS `visits`,
        `pages`.`title` AS `title`,
        `pages`.`views` AS `views`,
        `pages`.`created` AS `created`
    FROM
        ((`persons`
        JOIN `websites`)
        JOIN `pages`)