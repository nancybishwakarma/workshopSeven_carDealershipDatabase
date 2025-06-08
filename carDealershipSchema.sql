create database cardealership;
use cardealership;

create table dealerships(
dealership_id int auto_increment primary key,
name varchar(50),
address varchar(50),
phone varchar(12)
);

create table vehicles(
vin int  primary key,
sold varchar(1),
vehicle_name varchar(50),
vehicle_color varchar(50)
);

create table inventory(
dealership_id int,
vin int,
foreign key (dealership_id) references dealerships(dealership_id), 
foreign key (vin) references vehicles(vin)
);

create table sales_contracts(
contract_year int,
price double,
id int auto_increment primary key,
vin int,
foreign key (vin) references vehicles (vin)
);
 
 create table lease_contracts(
 id int auto_increment primary key,
 monthly_payment double,
 start_date date,
 end_date date, 
 vin int,
 foreign key (vin) references vehicles(vin)
 );
 
 INSERT INTO dealerships (name, address, phone) VALUES
('Premier Auto Group', '123 Main St', '123-456-7890'),
('Sunrise Motors', '456 Elm St', '234-567-8901'),
('Heritage Auto Mall', '789 Oak St', '345-678-9012'),
('Elite Cars & Trucks', '321 Pine Ave', '456-789-0123'),
('Summit Auto Sales', '654 Maple Rd', '567-890-1234'),
('Silverline Motors', '987 Cedar Blvd', '678-901-2345'),
('Velocity Auto Center', '101 Birch Ln', '789-012-3456'),
('DriveTime Auto', '202 Walnut Dr', '890-123-4567'),
('AutoNation West', '303 Chestnut St', '901-234-5678'),
('Pinecrest Autos', '404 Spruce Way', '012-345-6789'),
('NextGen Motors', '505 Ash Ct', '123-456-0000'),
('Redline Auto Group', '606 Fir Ln', '234-567-1111'),
('Evergreen Auto Co.', '707 Poplar St', '345-678-2222'),
('Capital Car Co.', '808 Sycamore Rd', '456-789-3333'),
('North Star Motors', '909 Redwood Ave', '567-890-4444'),
('Big City Auto', '111 Aspen Pl', '678-901-5555'),
('Coastal Drive Motors', '222 Hickory St', '789-012-6666'),
('Highway 1 Autos', '333 Beech Blvd', '890-123-7777'),
('Trusted Motors', '444 Magnolia Dr', '901-234-8888'),
('Metro Auto Sales', '555 Palm Ave', '012-345-9999'),
('Liberty Car Sales', '666 Ironwood Ln', '111-222-3333'),
('Union Auto Mall', '777 Dogwood St', '222-333-4444'),
('Oak Valley Motors', '888 Juniper Rd', '333-444-5555'),
('Gold Star Cars', '999 Alder Ct', '444-555-6666'),
('Prestige Auto House', '100 Willow Way', '555-666-7777');

select * from dealerships;

INSERT INTO vehicles (vin, sold, vehicle_name, vehicle_color) VALUES
(1001, 'N', 'Civic', 'Red'),
(1002, 'Y', 'Accord', 'Blue'),
(1003, 'N', 'Camry', 'Black'),
(1004, 'Y', 'Corolla', 'White'),
(1005, 'N', 'Model 3', 'Silver'),
(1006, 'N', 'Model Y', 'Gray'),
(1007, 'Y', 'F-150', 'Blue'),
(1008, 'N', 'Mustang', 'Red'),
(1009, 'Y', 'Cherokee', 'White'),
(1010, 'N', 'Wrangler', 'Green'),
(1011, 'Y', 'Impreza', 'Black'),
(1012, 'N', 'Forester', 'Blue'),
(1013, 'Y', 'Civic', 'Silver'),
(1014, 'N', 'Accord', 'Gray'),
(1015, 'Y', 'Camry', 'White'),
(1016, 'N', 'Corolla', 'Red'),
(1017, 'Y', 'Model 3', 'Black'),
(1018, 'N', 'Model Y', 'Blue'),
(1019, 'Y', 'F-150', 'Green'),
(1020, 'N', 'Mustang', 'Yellow'),
(1021, 'Y', 'Cherokee', 'Silver'),
(1022, 'N', 'Wrangler', 'Gray'),
(1023, 'Y', 'Impreza', 'Black'),
(1024, 'N', 'Forester', 'White'),
(1025, 'Y', 'Camry', 'Blue');

select * from vehicles;
select count(*) from vehicles;

INSERT INTO inventory (dealership_id, vin) VALUES
(1, 1001), (2, 1002), (3, 1003), (4, 1004), (5, 1005),
(6, 1006), (7, 1007), (8, 1008), (9, 1009), (10, 1010),
(11, 1011), (12, 1012), (13, 1013), (14, 1014), (15, 1015),
(16, 1016), (17, 1017), (18, 1018), (19, 1019), (20, 1020),
(21, 1021), (22, 1022), (23, 1023), (24, 1024), (25, 1025);

select * from inventory;

INSERT INTO sales_contracts (contract_year, price, vin) VALUES
(2021, 22000.00, 1002),
(2022, 25000.00, 1004),
(2023, 27000.00, 1007),
(2022, 19000.00, 1009),
(2021, 31000.00, 1011),
(2023, 26000.00, 1013),
(2024, 29500.00, 1015),
(2020, 18000.00, 1017),
(2021, 23000.00, 1019),
(2023, 24000.00, 1021),
(2024, 27500.00, 1023),
(2022, 30000.00, 1025);

select * from sales_contracts;

INSERT INTO lease_contracts (monthly_payment, start_date, end_date, vin) VALUES
(350.00, '2023-01-01', '2026-01-01', 1001),
(420.00, '2022-06-15', '2025-06-15', 1003),
(310.00, '2024-03-20', '2027-03-20', 1005),
(395.00, '2023-09-10', '2026-09-10', 1006),
(450.00, '2022-12-01', '2025-12-01', 1008),
(325.00, '2023-04-04', '2026-04-04', 1010),
(385.00, '2024-01-01', '2027-01-01', 1012),
(410.00, '2021-10-10', '2024-10-10', 1014),
(390.00, '2023-11-11', '2026-11-11', 1016),
(360.00, '2022-05-05', '2025-05-05', 1018),
(430.00, '2023-02-02', '2026-02-02', 1020),
(345.00, '2024-07-07', '2027-07-07', 1022),
(400.00, '2023-08-08', '2026-08-08', 1024);

select * from lease_contracts;




