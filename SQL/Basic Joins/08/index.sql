WITH DirectReports AS (
    SELECT managerId, COUNT(*) AS num_direct_reports
    FROM Employee
    GROUP BY managerId
)
SELECT e.name
FROM Employee e
JOIN DirectReports d ON e.id = d.managerId
WHERE d.num_direct_reports >= 5;