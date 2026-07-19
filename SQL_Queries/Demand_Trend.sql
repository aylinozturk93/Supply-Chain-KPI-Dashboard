SELECT 

    demand_period, 

    SUM(actual_quantity) AS total_actual_demand 

FROM actual_demand 

GROUP BY demand_period 

ORDER BY demand_period;