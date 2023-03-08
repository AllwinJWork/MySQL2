-- Question 1
SELECT `c`.`name`,AVG(`f`.`length`)AS `average_runtime` 
FROM  `sakila`.`film` AS `f` 
JOIN `sakila`.`film_category` AS `fc` ON `f`.`film_id`=`fc`.`film_id`
JOIN `sakila`.`category` AS `c` ON `fc`.`category_id`=`c`.`category_id`
GROUP BY `c`.`category_id`
ORDER BY `average_runtime` DESC;
