USE `goit-rdb-hw-03`;

SELECT 
  COUNT(*)
FROM customer cu
LEFT JOIN `order` o ON cu.customer_id = o.customer_id
LEFT JOIN order_detail od ON o.order_id = od.order_id
LEFT JOIN product p ON od.product_id = p.product_id
LEFT JOIN category ca ON p.category_id = ca.category_id
LEFT JOIN employee e ON o.employee_id = e.employee_id
LEFT JOIN shipper sh ON o.shipper_id = sh.shipper_id
LEFT JOIN supplier su ON p.supplier_id = su.supplier_id

UNION 

SELECT 
  COUNT(*)
FROM customer cu
JOIN `order` o ON cu.customer_id = o.customer_id
JOIN order_detail od ON o.order_id = od.order_id
JOIN product p ON od.product_id = p.product_id
JOIN category ca ON p.category_id = ca.category_id
JOIN employee e ON o.employee_id = e.employee_id
JOIN shipper sh ON o.shipper_id = sh.shipper_id
JOIN supplier su ON p.supplier_id = su.supplier_id;



