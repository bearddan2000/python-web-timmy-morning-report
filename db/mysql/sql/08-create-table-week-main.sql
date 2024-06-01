DROP TABLE IF EXISTS `week`.main;

CREATE TABLE `week`.main (
	id INT PRIMARY KEY auto_increment,
	_to varchar(10) NOT NULL,
	_from varchar(10) NOT NULL
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;
