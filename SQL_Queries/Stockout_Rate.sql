SELECT  

    (SUM(CASE  

        WHEN stock_quantity < safety_stock THEN 1  

        ELSE 0  

    END) / COUNT(*)) * 100 AS stockout_rate 

FROM inventory;