DROP TABLE IF EXISTS `feature`.report;

CREATE TABLE `feature`.report (
	id INT PRIMARY KEY auto_increment,
	mon_id INT NOT NULL,
	tue_id INT NOT NULL,
	wed_id INT NOT NULL,
	thu_id INT NOT NULL,
	fri_id INT NOT NULL
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;
