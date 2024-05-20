# 570. Managers with at Least 5 Direct Reports
**Solved**
**Medium**

## Topics
- SQL
- Database

## Companies
- Various

## Hint
Use SQL window functions and aggregation to solve the problem.

## SQL Schema
### Table: Employee
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| name        | varchar |
| department  | varchar |
| managerId   | int     |
+-------------+---------+
- `id` is the primary key (column with unique values) for this table.
- Each row of this table indicates the name of an employee, their department, and the id of their manager.
- If `managerId` is null, then the employee does not have a manager.
- No employee will be the manager of themselves.

## Problem Description
Write a solution to find managers with at least five direct reports.

Return the result table in any order.

## Example

### Input: 
**Employee table:**
+-----+-------+------------+-----------+
| id  | name  | department | managerId |
+-----+-------+------------+-----------+
| 101 | John  | A          | null      |
| 102 | Dan   | A          | 101       |
| 103 | James | A          | 101       |
| 104 | Amy   | A          | 101       |
| 105 | Anne  | A          | 101       |
| 106 | Ron   | B          | 101       |
+-----+-------+------------+-----------+

### Output: 
+------+
| name |
+------+
| John |
+------+

## Solution
```sql
WITH DirectReports AS (
    SELECT managerId, COUNT(*) AS num_direct_reports
    FROM Employee
    GROUP BY managerId
)
SELECT e.name
FROM Employee e
JOIN DirectReports d ON e.id = d.managerId
WHERE d.num_direct_reports >= 5;
