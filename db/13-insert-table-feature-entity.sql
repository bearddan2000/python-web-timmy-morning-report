TRUNCATE `feature`.entity;

INSERT INTO `feature`.entity (id, catagory_id, quarter_id, month_id, weekday_id, val)
VALUES
-- week 1
(default, 1, 3, 1, 0, 0),
(default, 2, 3, 1, 0, 0),
(default, 3, 3, 1, 0, 0),
(default, 4, 3, 1, 0, 0),
(default, 5, 3, 1, 0, 0),
(default, 6, 3, 1, 0, 0),
(default, 1, 3, 1, 1, 0),
(default, 2, 3, 1, 1, 0),
(default, 3, 3, 1, 1, 0),
(default, 4, 3, 1, 1, 0),
(default, 5, 3, 1, 1, 0),
(default, 6, 3, 1, 1, 0),
(default, 1, 3, 1, 2, 0),
(default, 2, 3, 1, 2, 0),
(default, 3, 3, 1, 2, 0),
(default, 4, 3, 1, 2, 0),
(default, 5, 3, 1, 2, 0),
(default, 6, 3, 1, 2, 0),
(default, 1, 3, 1, 3, 0),
(default, 2, 3, 1, 3, 0),
(default, 3, 3, 1, 3, 1),
(default, 4, 3, 1, 3, 2),
(default, 5, 3, 1, 3, 2),
(default, 6, 3, 1, 3, 0),
(default, 1, 3, 1, 4, 0),
(default, 2, 3, 1, 4, 0),
(default, 3, 3, 1, 4, 0),
(default, 4, 3, 1, 4, 0),
(default, 5, 3, 1, 4, 0),
(default, 6, 3, 1, 4, 0),
-- week 2
(default, 1, 3, 1, 0, 0),
(default, 2, 3, 1, 0, 1),
(default, 3, 3, 1, 0, 1),
(default, 4, 3, 1, 0, 3),
(default, 5, 3, 1, 0, 1),
(default, 6, 3, 1, 0, 0),
(default, 1, 3, 1, 1, 0),
(default, 2, 3, 1, 1, 1),
(default, 3, 3, 1, 1, 1),
(default, 4, 3, 1, 1, 3),
(default, 5, 3, 1, 1, 1),
(default, 6, 3, 1, 1, 0),
(default, 1, 3, 1, 2, 0),
(default, 2, 3, 1, 2, 0),
(default, 3, 3, 1, 2, 0),
(default, 4, 3, 1, 2, 0),
(default, 5, 3, 1, 2, 0),
(default, 6, 3, 1, 2, 0),
(default, 1, 3, 1, 3, 0),
(default, 2, 3, 1, 3, 1),
(default, 3, 3, 1, 3, 3),
(default, 4, 3, 1, 3, 2),
(default, 5, 3, 1, 3, 1),
(default, 6, 3, 1, 3, 0),
(default, 1, 3, 1, 4, 0),
(default, 2, 3, 1, 4, 1),
(default, 3, 3, 1, 4, 3),
(default, 4, 3, 1, 4, 2),
(default, 5, 3, 1, 4, 3),
(default, 6, 3, 1, 4, 0),
-- week 3
(default, 1, 3, 2, 0, 0),
(default, 2, 3, 2, 0, 2),
(default, 3, 3, 2, 0, 1),
(default, 4, 3, 2, 0, 3),
(default, 5, 3, 2, 0, 1),
(default, 6, 3, 2, 0, 0),
(default, 1, 3, 2, 1, 0),
(default, 2, 3, 2, 1, 1),
(default, 3, 3, 2, 1, 1),
(default, 4, 3, 2, 1, 3),
(default, 5, 3, 2, 1, 1),
(default, 6, 3, 2, 1, 0),
(default, 1, 3, 2, 2, 0),
(default, 2, 3, 2, 2, 1),
(default, 3, 3, 2, 2, 1),
(default, 4, 3, 2, 2, 2),
(default, 5, 3, 2, 2, 1),
(default, 6, 3, 2, 2, 0),
(default, 1, 3, 2, 3, 0),
(default, 2, 3, 2, 3, 1),
(default, 3, 3, 2, 3, 1),
(default, 4, 3, 2, 3, 3),
(default, 5, 3, 2, 3, 1),
(default, 6, 3, 2, 3, 0),
(default, 1, 3, 2, 4, 0),
(default, 2, 3, 2, 4, 2),
(default, 3, 3, 2, 4, 3),
(default, 4, 3, 2, 4, 3),
(default, 5, 3, 2, 4, 1),
(default, 6, 3, 2, 4, 0),
-- week 4
(default, 1, 3, 2, 0, 0),
(default, 2, 3, 2, 0, 1),
(default, 3, 3, 2, 0, 1),
(default, 4, 3, 2, 0, 3),
(default, 5, 3, 2, 0, 1),
(default, 6, 3, 2, 0, 0),
(default, 1, 3, 2, 1, 0),
(default, 2, 3, 2, 1, 1),
(default, 3, 3, 2, 1, 2),
(default, 4, 3, 2, 1, 2),
(default, 5, 3, 2, 1, 1),
(default, 6, 3, 2, 1, 0),
(default, 1, 3, 2, 2, 0),
(default, 2, 3, 2, 2, 2),
(default, 3, 3, 2, 2, 1),
(default, 4, 3, 2, 2, 3),
(default, 5, 3, 2, 2, 1),
(default, 6, 3, 2, 2, 0),
(default, 1, 3, 2, 3, 0),
(default, 2, 3, 2, 3, 2),
(default, 3, 3, 2, 3, 1),
(default, 4, 3, 2, 3, 3),
(default, 5, 3, 2, 3, 1),
(default, 6, 3, 2, 3, 0),
(default, 1, 3, 2, 4, 0),
(default, 2, 3, 2, 4, 1),
(default, 3, 3, 2, 4, 1),
(default, 4, 3, 2, 4, 3),
(default, 5, 3, 2, 4, 1),
(default, 6, 3, 2, 4, 0),
-- week 5
(default, 1, 3, 2, 0, 0),
(default, 2, 3, 2, 0, 1),
(default, 3, 3, 2, 0, 1),
(default, 4, 3, 2, 0, 3),
(default, 5, 3, 2, 0, 1),
(default, 6, 3, 2, 0, 0),
(default, 1, 3, 2, 1, 0),
(default, 2, 3, 2, 1, 2),
(default, 3, 3, 2, 1, 2),
(default, 4, 3, 2, 1, 3),
(default, 5, 3, 2, 1, 2),
(default, 6, 3, 2, 1, 0),
(default, 1, 3, 2, 2, 0),
(default, 2, 3, 2, 2, 1),
(default, 3, 3, 2, 2, 2),
(default, 4, 3, 2, 2, 2),
(default, 5, 3, 2, 2, 2),
(default, 6, 3, 2, 2, 0),
(default, 1, 3, 2, 3, 0),
(default, 2, 3, 2, 3, 1),
(default, 3, 3, 2, 3, 1),
(default, 4, 3, 2, 3, 2),
(default, 5, 3, 2, 3, 1),
(default, 6, 3, 2, 3, 0),
(default, 1, 3, 2, 4, 0),
(default, 2, 3, 2, 4, 1),
(default, 3, 3, 2, 4, 1),
(default, 4, 3, 2, 4, 2),
(default, 5, 3, 2, 4, 1),
(default, 6, 3, 2, 4, 0),
-- week 6
(default, 1, 3, 2, 0, 0),
(default, 2, 3, 2, 0, 0),
(default, 3, 3, 2, 0, 0),
(default, 4, 3, 2, 0, 0),
(default, 5, 3, 2, 0, 0),
(default, 6, 3, 2, 0, 0),
(default, 1, 3, 2, 1, 0),
(default, 2, 3, 2, 1, 1),
(default, 3, 3, 2, 1, 1),
(default, 4, 3, 2, 1, 2),
(default, 5, 3, 2, 1, 1),
(default, 6, 3, 2, 1, 0),
(default, 1, 3, 2, 2, 0),
(default, 2, 3, 2, 2, 1),
(default, 3, 3, 2, 2, 1),
(default, 4, 3, 2, 2, 3),
(default, 5, 3, 2, 2, 1),
(default, 6, 3, 2, 2, 0),
(default, 1, 3, 2, 3, 0),
(default, 2, 3, 2, 3, 0),
(default, 3, 3, 2, 3, 0),
(default, 4, 3, 2, 3, 0),
(default, 5, 3, 2, 3, 0),
(default, 6, 3, 2, 3, 0),
(default, 1, 3, 2, 4, 0),
(default, 2, 3, 2, 4, 2),
(default, 3, 3, 2, 4, 1),
(default, 4, 3, 2, 4, 3),
(default, 5, 3, 2, 4, 2),
(default, 6, 3, 2, 4, 0),
-- week 7
(default, 1, 3, 3, 0, 0),
(default, 2, 3, 3, 0, 1),
(default, 3, 3, 3, 0, 1),
(default, 4, 3, 3, 0, 3),
(default, 5, 3, 3, 0, 1),
(default, 6, 3, 3, 0, 0),
(default, 1, 3, 3, 1, 0),
(default, 2, 3, 3, 1, 1),
(default, 3, 3, 3, 1, 1),
(default, 4, 3, 3, 1, 2),
(default, 5, 3, 3, 1, 2),
(default, 6, 3, 3, 1, 0),
(default, 1, 3, 3, 2, 0),
(default, 2, 3, 3, 2, 2),
(default, 3, 3, 3, 2, 1),
(default, 4, 3, 3, 2, 2),
(default, 5, 3, 3, 2, 1),
(default, 6, 3, 3, 2, 0),
(default, 1, 3, 3, 3, 0),
(default, 2, 3, 3, 3, 1),
(default, 3, 3, 3, 3, 1),
(default, 4, 3, 3, 3, 2),
(default, 5, 3, 3, 3, 1),
(default, 6, 3, 3, 3, 0),
(default, 1, 3, 3, 4, 0),
(default, 2, 3, 3, 4, 1),
(default, 3, 3, 3, 4, 1),
(default, 4, 3, 3, 4, 2),
(default, 5, 3, 3, 4, 1),
(default, 6, 3, 3, 4, 0),
-- week 8
(default, 1, 3, 3, 0, 0),
(default, 2, 3, 3, 0, 1),
(default, 3, 3, 3, 0, 2),
(default, 4, 3, 3, 0, 3),
(default, 5, 3, 3, 0, 1),
(default, 6, 3, 3, 0, 0),
(default, 1, 3, 3, 1, 0),
(default, 2, 3, 3, 1, 1),
(default, 3, 3, 3, 1, 1),
(default, 4, 3, 3, 1, 2),
(default, 5, 3, 3, 1, 1),
(default, 6, 3, 3, 1, 0),
(default, 1, 3, 3, 2, 0),
(default, 2, 3, 3, 2, 1),
(default, 3, 3, 3, 2, 1),
(default, 4, 3, 3, 2, 3),
(default, 5, 3, 3, 2, 3),
(default, 6, 3, 3, 2, 0),
(default, 1, 3, 3, 3, 0),
(default, 2, 3, 3, 3, 1),
(default, 3, 3, 3, 3, 2),
(default, 4, 3, 3, 3, 3),
(default, 5, 3, 3, 3, 1),
(default, 6, 3, 3, 3, 0),
(default, 1, 3, 3, 4, 0),
(default, 2, 3, 3, 4, 1),
(default, 3, 3, 3, 4, 1),
(default, 4, 3, 3, 4, 2),
(default, 5, 3, 3, 4, 1),
(default, 6, 3, 3, 4, 0),
-- week 9
(default, 1, 3, 3, 0, 0),
(default, 2, 3, 3, 0, 1),
(default, 3, 3, 3, 0, 2),
(default, 4, 3, 3, 0, 2),
(default, 5, 3, 3, 0, 1),
(default, 6, 3, 3, 0, 0),
(default, 1, 3, 3, 1, 0),
(default, 2, 3, 3, 1, 1),
(default, 3, 3, 3, 1, 1),
(default, 4, 3, 3, 1, 2),
(default, 5, 3, 3, 1, 1),
(default, 6, 3, 3, 1, 0),
(default, 1, 3, 3, 2, 0),
(default, 2, 3, 3, 2, 2),
(default, 3, 3, 3, 2, 1),
(default, 4, 3, 3, 2, 2),
(default, 5, 3, 3, 2, 3),
(default, 6, 3, 3, 2, 0),
(default, 1, 3, 3, 3, 0),
(default, 2, 3, 3, 3, 1),
(default, 3, 3, 3, 3, 2),
(default, 4, 3, 3, 3, 2),
(default, 5, 3, 3, 3, 1),
(default, 6, 3, 3, 3, 0),
(default, 1, 3, 3, 4, 0),
(default, 2, 3, 3, 4, 1),
(default, 3, 3, 3, 4, 1),
(default, 4, 3, 3, 4, 2),
(default, 5, 3, 3, 4, 1),
(default, 6, 3, 3, 4, 0),
-- week 10
(default, 1, 3, 3, 0, 0),
(default, 2, 3, 3, 0, 1),
(default, 3, 3, 3, 0, 1),
(default, 4, 3, 3, 0, 2),
(default, 5, 3, 3, 0, 1),
(default, 6, 3, 3, 0, 0),
(default, 1, 3, 3, 1, 0),
(default, 2, 3, 3, 1, 0),
(default, 3, 3, 3, 1, 0),
(default, 4, 3, 3, 1, 0),
(default, 5, 3, 3, 1, 0),
(default, 6, 3, 3, 1, 0),
(default, 1, 3, 3, 2, 0),
(default, 2, 3, 3, 2, 1),
(default, 3, 3, 3, 2, 1),
(default, 4, 3, 3, 2, 2),
(default, 5, 3, 3, 2, 1),
(default, 6, 3, 3, 2, 0),
(default, 1, 3, 3, 3, 0),
(default, 2, 3, 3, 3, 1),
(default, 3, 3, 3, 3, 1),
(default, 4, 3, 3, 3, 2),
(default, 5, 3, 3, 3, 1),
(default, 6, 3, 3, 3, 0),
(default, 1, 3, 3, 4, 0),
(default, 2, 3, 3, 4, 1),
(default, 3, 3, 3, 4, 1),
(default, 4, 3, 3, 4, 2),
(default, 5, 3, 3, 4, 2),
(default, 6, 3, 3, 4, 0),
-- week 11
(default, 1, 4, 4, 0, 0),
(default, 2, 4, 4, 0, 1),
(default, 3, 4, 4, 0, 1),
(default, 4, 4, 4, 0, 3),
(default, 5, 4, 4, 0, 1),
(default, 6, 4, 4, 0, 2),
(default, 1, 4, 4, 1, 2),
(default, 2, 4, 4, 1, 1),
(default, 3, 4, 4, 1, 1),
(default, 4, 4, 4, 1, 3),
(default, 5, 4, 4, 1, 1),
(default, 6, 4, 4, 1, 2),
(default, 1, 4, 4, 2, 2),
(default, 2, 4, 4, 2, 1),
(default, 3, 4, 4, 2, 1),
(default, 4, 4, 4, 2, 2),
(default, 5, 4, 4, 2, 1),
(default, 6, 4, 4, 2, 1),
(default, 1, 4, 4, 3, 1),
(default, 2, 4, 4, 3, 1),
(default, 3, 4, 4, 3, 1),
(default, 4, 4, 4, 3, 2),
(default, 5, 4, 4, 3, 1),
(default, 6, 4, 4, 3, 1),
(default, 1, 4, 4, 4, 3),
(default, 2, 4, 4, 4, 0),
(default, 3, 4, 4, 4, 0),
(default, 4, 4, 4, 4, 0),
(default, 5, 4, 4, 4, 0),
(default, 6, 4, 4, 4, 0),
-- week 12
(default, 1, 4, 4, 0, 0),
(default, 2, 4, 4, 0, 0),
(default, 3, 4, 4, 0, 0),
(default, 4, 4, 4, 0, 0),
(default, 5, 4, 4, 0, 0),
(default, 6, 4, 4, 0, 0),
(default, 1, 4, 4, 1, 0),
(default, 2, 4, 4, 1, 0),
(default, 3, 4, 4, 1, 0),
(default, 4, 4, 4, 1, 0),
(default, 5, 4, 4, 1, 0),
(default, 6, 4, 4, 1, 0),
(default, 1, 4, 4, 2, 0),
(default, 2, 4, 4, 2, 0),
(default, 3, 4, 4, 2, 0),
(default, 4, 4, 4, 2, 0),
(default, 5, 4, 4, 2, 0),
(default, 6, 4, 4, 2, 0),
(default, 1, 4, 4, 3, 0),
(default, 2, 4, 4, 3, 0),
(default, 3, 4, 4, 3, 0),
(default, 4, 4, 4, 3, 0),
(default, 5, 4, 4, 3, 0),
(default, 6, 4, 4, 3, 0),
(default, 1, 4, 4, 4, 0),
(default, 2, 4, 4, 4, 0),
(default, 3, 4, 4, 4, 0),
(default, 4, 4, 4, 4, 0),
(default, 5, 4, 4, 4, 0),
(default, 6, 4, 4, 4, 0),
-- week 13
(default, 1, 4, 4, 0, 0),
(default, 2, 4, 4, 0, 0),
(default, 3, 4, 4, 0, 0),
(default, 4, 4, 4, 0, 0),
(default, 5, 4, 4, 0, 0),
(default, 2, 4, 4, 1, 0),
(default, 3, 4, 4, 1, 1),
(default, 4, 4, 4, 1, 1),
(default, 5, 4, 4, 1, 2),
(default, 6, 4, 4, 1, 2),
(default, 1, 4, 4, 2, 2),
(default, 2, 4, 4, 2, 1),
(default, 3, 4, 4, 2, 1),
(default, 4, 4, 4, 2, 1),
(default, 5, 4, 4, 2, 3),
(default, 6, 4, 4, 2, 2),
(default, 1, 4, 4, 3, 2),
(default, 2, 4, 4, 3, 1),
(default, 3, 4, 4, 3, 1),
(default, 4, 4, 4, 3, 3),
(default, 5, 4, 4, 3, 2),
(default, 6, 4, 4, 3, 2),
(default, 1, 4, 4, 4, 3),
(default, 2, 4, 4, 4, 1),
(default, 3, 4, 4, 4, 1),
(default, 4, 4, 4, 4, 2),
(default, 5, 4, 4, 4, 2),
(default, 6, 4, 4, 4, 2),
-- week 14
(default, 1, 4, 4, 0, 0),
(default, 2, 4, 4, 0, 1),
(default, 3, 4, 4, 0, 1),
(default, 4, 4, 4, 0, 2),
(default, 5, 4, 4, 0, 2),
(default, 6, 4, 4, 0, 2),
(default, 1, 4, 4, 1, 2),
(default, 2, 4, 4, 1, 3),
(default, 3, 4, 4, 1, 1),
(default, 4, 4, 4, 1, 3),
(default, 5, 4, 4, 1, 2),
(default, 6, 4, 4, 1, 2),
(default, 1, 4, 4, 2, 2),
(default, 2, 4, 4, 2, 1),
(default, 3, 4, 4, 2, 1),
(default, 4, 4, 4, 2, 2),
(default, 5, 4, 4, 2, 2),
(default, 6, 4, 4, 2, 2),
(default, 1, 4, 4, 3, 1),
(default, 2, 4, 4, 3, 2),
(default, 3, 4, 4, 3, 1),
(default, 4, 4, 4, 3, 3),
(default, 5, 4, 4, 3, 2),
(default, 6, 4, 4, 3, 2),
(default, 1, 4, 4, 4, 0),
(default, 2, 4, 4, 4, 0),
(default, 3, 4, 4, 4, 0),
(default, 4, 4, 4, 4, 0),
(default, 5, 4, 4, 4, 0),
(default, 6, 4, 4, 4, 0);
