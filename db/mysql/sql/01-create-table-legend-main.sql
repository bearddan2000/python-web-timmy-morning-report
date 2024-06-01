DROP TABLE IF EXISTS `legend`.main;

CREATE TABLE `legend`.main (
	id INT PRIMARY KEY auto_increment,
	catagory_id INT NOT NULL,
	val INT NOT NULL,
	def_id INT NOT NULL
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;
