SELECT 

    p.product_name, 

    w.warehouse_name, 

    f.forecast_period, 

    f.forecast_quantity, 

    a.actual_quantity, 

    (a.actual_quantity - f.forecast_quantity) AS forecast_deviation, 

    ROUND(ABS(a.actual_quantity - f.forecast_quantity) / a.actual_quantity * 100, 2) AS error_percentage 

FROM forecast f 

JOIN actual_demand a  

    ON f.product_id = a.product_id 

   AND f.warehouse_id = a.warehouse_id 

   AND f.forecast_period = a.demand_period 

JOIN product p ON f.product_id = p.product_id 

JOIN warehouse w ON f.warehouse_id = w.warehouse_id 

ORDER BY error_percentage DESC;