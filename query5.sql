
SELECT DISTINCT d.*
FROM dealerships d
JOIN inventory i ON d.dealership_id = i.dealership_id
JOIN vehicles v ON i.vin = v.vin
WHERE v.vehicle_name = 'Mustang'
  AND v.vehicle_color = 'Yellow';

select * from vehicles;