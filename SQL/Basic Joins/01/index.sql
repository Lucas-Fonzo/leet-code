SELECT
    b.unique_id
    ,a.name
FROM 
    Employees AS a
LEFT JOIN 
    EmployeeUNI AS b USING(id)