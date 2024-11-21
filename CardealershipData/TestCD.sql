SELECT * FROM Dealership;

SELECT Vehicles.*
FROM Vehicles
JOIN Inventory ON Vehicles.vin = Inventory.vin
WHERE Inventory.dealrship_id;

SELECT * FROM Vehicles
WHERE vin;

SELECT Dealership.*
FROM Dealership
JOIN Inventory ON Dealership.dealership_id
WHERE Inventory.vin;

SELECT DISTINCT Dealership.*
FROM Dealership
JOIN Inventory ON Dealership.dealership_id
JOIN Vehicles ON Inventory.vin
WHERE Vehicles.make = 'BMW'
AND Vehicles.model = 'X5M50I';

SELECT Sales_contracts.*
FROM Sales_contracts
JOIN Dealership ON Sales_contracts.dealership_id
WHERE Sales_contracts.dealership_id;
