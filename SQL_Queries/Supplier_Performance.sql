SELECT 

    s.supplier_name, 

    COUNT(po.po_id) AS total_orders, 

    SUM(CASE  

        WHEN po.actual_delivery_date > po.expected_delivery_date THEN 1  

        ELSE 0  

    END) AS delayed_orders, 

    ROUND( 

        SUM(CASE  

            WHEN po.actual_delivery_date > po.expected_delivery_date THEN 1  

            ELSE 0  

        END) / COUNT(po.po_id) * 100, 2 

    ) AS delay_rate 

FROM purchase_order po 

JOIN supplier s ON po.supplier_id = s.supplier_id 

GROUP BY s.supplier_name 

ORDER BY delay_rate DESC;