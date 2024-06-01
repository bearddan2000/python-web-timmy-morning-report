DROP VIEW IF EXISTS `timmy`.project_view;

CREATE VIEW `timmy`.project_view AS
WITH CTE_entity AS
(
    SELECT a.id, b.words as "catagory", catagory_id, quarter_id, month_id, weekday_id, val
    FROM feature.entity AS a
    JOIN feature.catagory AS b ON a.catagory_id = b.id
)

SELECT a.id, b.catagory, b.quarter_id, b.month_id, b.weekday_id, b.val
FROM feature.report as a
JOIN CTE_entity as b ON b.id = a.mon_id
UNION ALL
SELECT a.id, b.catagory, b.quarter_id, b.month_id, b.weekday_id, b.val
FROM feature.report as a
JOIN CTE_entity as b ON b.id = a.tue_id
UNION ALL
SELECT a.id, b.catagory, b.quarter_id, b.month_id, b.weekday_id, b.val
FROM feature.report as a
JOIN CTE_entity as b ON b.id = a.wed_id
UNION ALL
SELECT a.id, b.catagory, b.quarter_id, b.month_id, b.weekday_id, b.val
FROM feature.report as a
JOIN CTE_entity as b ON b.id = a.thu_id
UNION ALL
SELECT a.id, b.catagory, b.quarter_id, b.month_id, b.weekday_id, b.val
FROM feature.report as a
JOIN CTE_entity as b ON b.id = a.fri_id
