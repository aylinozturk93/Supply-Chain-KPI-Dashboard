SELECT (SUM(CASE  

WHEN actual_delivery_date <= expected_delivery_date  

THEN 1 ELSE 0 END) / COUNT(*)) * 100 AS on_time_delivery_rate  

FROM purchase_order;