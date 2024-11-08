SELECT DISTINCT o.user_id
FROM orders o
JOIN order_lines ol ON o.order_id = ol.order_id
JOIN products p ON ol.product_id = p.product_id
WHERE o.order_date BETWEEN '2017-08-01' AND '2017-08-15'
  AND p.category = 'Продукция для животных'
  AND p.product != 'Корм Kitekat для кошек, с кроликом в соусе, 85 г'
GROUP BY o.user_id
HAVING COUNT(DISTINCT p.product_id) >= 2;
