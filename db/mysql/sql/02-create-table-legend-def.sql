DROP TABLE IF EXISTS `legend`.def;

CREATE TABLE `legend`.def (
	id INT PRIMARY KEY auto_increment,
	words varchar(99) NOT NULL
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;
