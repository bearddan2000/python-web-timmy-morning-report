DROP TABLE IF EXISTS `feature`.entity;

CREATE TABLE `feature`.entity (
	id INT PRIMARY KEY auto_increment,
	catagory_id INT NOT NULL,
	quarter_id INT NOT NULL,
	month_id INT NOT NULL,
	weekday_id INT NOT NULL,
	val INT NOT NULL
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;
