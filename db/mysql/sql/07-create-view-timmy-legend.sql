DROP VIEW IF EXISTS `timmy`.legend_view;

CREATE VIEW `timmy`.legend_view AS
SELECT b.words as 'catagory', a.val as 'value', c.words as 'definion'
FROM legend.main as a
JOIN feature.catagory as b ON b.id = a.catagory_id
JOIN legend.def as c ON c.id = a.def_id;
