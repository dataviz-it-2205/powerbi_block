SELECT p.product, COUNT(ol.product_id) AS order_count
FROM orders o
JOIN order_lines ol ON o.order_id = ol.order_id
JOIN products p ON ol.product_id = p.product_id
JOIN warehouses w ON o.warehouse_id = w.warehouse_id
WHERE o.order_date BETWEEN '2017-8-15' AND '2017-08-30'
  AND w.city = 'Санкт-Петербург'
  AND p.category = 'Продукция для животных'
GROUP BY p.product
ORDER BY order_count DESC
LIMIT 5;
