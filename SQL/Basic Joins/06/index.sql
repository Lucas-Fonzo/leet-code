SELECT
a.name
,b.bonus
FROM Employee a
LEFT JOIN Bonus b USING(empID)
WHERE b.bonus < 1000 OR b.bonus IS NULL