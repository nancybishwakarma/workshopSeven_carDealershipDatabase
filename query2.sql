
SELECT v.*
FROM vehicles v
JOIN inventory i ON v.vin = i.vin
WHERE i.dealership_id = 19;

