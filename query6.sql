
SELECT s.*
FROM sales_contracts s
JOIN inventory i ON s.vin = i.vin
WHERE i.dealership_id = 7
  AND s.contract_year BETWEEN 2022 AND 2024;

select * from sales_contracts;