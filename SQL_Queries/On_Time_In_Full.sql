SELECT  

    ROUND( 

        (SUM(CASE  

            WHEN po.actual_delivery_date <= po.expected_delivery_date 

                 AND pod.quantity > 0 

            THEN 1  

            ELSE 0  

        END) / COUNT(*)) * 100, 2 

    ) AS otif_rate 

FROM purchase_order po 

JOIN purchase_order_detail pod  

    ON po.po_id = pod.po_id;