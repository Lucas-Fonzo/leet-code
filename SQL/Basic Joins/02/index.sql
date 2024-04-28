SELECT
b.product_name
,a.year
,a.price
FROM Sales a
LEFT JOIN Product b
USING(product_id)