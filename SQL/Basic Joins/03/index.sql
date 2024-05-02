SELECT
    a.customer_id,
    COUNT(*) AS count_no_trans
FROM
    Visits a
LEFT JOIN
    Transactions b USING(visit_id)
WHERE
    b.transaction_id IS NULL
GROUP BY
    a.customer_id;