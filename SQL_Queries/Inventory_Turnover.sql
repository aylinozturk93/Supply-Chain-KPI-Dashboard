SELECT  

    p.product_name, 

    SUM(a.actual_quantity) / AVG(i.stock_quantity) AS inventory_turnover 

FROM actual_demand a 

JOIN inventory i  

    ON a.product_id = i.product_id  

    AND a.warehouse_id = i.warehouse_id 

JOIN product p ON p.product_id = a.product_id 

GROUP BY p.product_name;