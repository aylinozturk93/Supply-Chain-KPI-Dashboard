SELECT  

    p.product_name, 

    f.forecast_quantity, 

    a.actual_quantity, 

    1 - ABS(a.actual_quantity - f.forecast_quantity) / a.actual_quantity AS forecast_accuracy 

FROM forecast f 

JOIN actual_demand a  

    ON f.product_id = a.product_id  

    AND f.warehouse_id = a.warehouse_id 

JOIN product p ON p.product_id = f.product_id;