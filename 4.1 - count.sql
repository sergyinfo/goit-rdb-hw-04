SELECT COUNT(*) FROM order_detail od
	JOIN `order` o ON od.order_id = o.order_id
    JOIN customer cu ON o.customer_id = cu.customer_id
    JOIN product p ON od.product_id = p.product_id
    JOIN category ca ON p.category_id = ca.category_id
    JOIN employee e ON o.employee_id = e.employee_id
    JOIN shipper sh ON o.shipper_id = sh.shipper_id
    JOIN supplier su ON p.supplier_id = su.supplier_id