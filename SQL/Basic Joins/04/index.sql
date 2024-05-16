SELECT
a.id
FROM Weather a
LEFT JOIN Weather b ON a.recordDate = b.recordDate + INTERVAL 1 DAY
WHERE a.temperature > b.temperature