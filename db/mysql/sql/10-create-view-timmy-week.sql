DROP VIEW IF EXISTS `timmy`.week_view;

CREATE VIEW `timmy`.week_view AS
SELECT id, _to as 'a', _from as 'de'
FROM week.main;
