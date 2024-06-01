DROP TABLE IF EXISTS `timmy`.project;

CREATE TABLE `timmy`.project (
	id INT PRIMARY KEY auto_increment,
	report_id INT NOT NULL,
	words varchar(99) NOT NULL,
	catagory_id INT NOT NULL,
	month_id INT NOT NULL,
	weekday_id INT NOT NULL,
	val INT NOT NULL
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;

WITH CTE_entity AS
(
    SELECT a.id, b.words as "catagory", catagory_id, quarter_id, month_id, weekday_id, val
    FROM feature.entity AS a
    JOIN feature.catagory AS b ON a.catagory_id = b.id
)

INSERT INTO `timmy`.project
SELECT default, a.id, b.catagory, b.quarter_id, b.month_id, b.weekday_id, b.val
FROM feature.report as a
JOIN CTE_entity as b ON b.id = a.mon_id;

INSERT INTO `timmy`.project
SELECT default, a.id, b.catagory, b.quarter_id, b.month_id, b.weekday_id, b.val
FROM feature.report as a
JOIN CTE_entity as b ON b.id = a.tue_id;

INSERT INTO `timmy`.project
SELECT default, a.id, b.catagory, b.quarter_id, b.month_id, b.weekday_id, b.val
FROM feature.report as a
JOIN CTE_entity as b ON b.id = a.wed_id;

INSERT INTO `timmy`.project
SELECT default, a.id, b.catagory, b.quarter_id, b.month_id, b.weekday_id, b.val
FROM feature.report as a
JOIN CTE_entity as b ON b.id = a.thu_id;

INSERT INTO `timmy`.project
SELECT default, a.id, b.catagory, b.quarter_id, b.month_id, b.weekday_id, b.val
FROM feature.report as a
JOIN CTE_entity as b ON b.id = a.fri_id;
