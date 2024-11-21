DROP DATABASE IF exists cardealership;
CREATE DATABASE IF NOT EXISTS cardealership;
USE cardealership;

#Table 1: dealerships#
---------------------
CREATE TABLE `Dealership` (
	dealership_id INT AUTO_INCREMENT,
	name VARCHAR (50),
	address VARCHAR (50),
	phone VARCHAR (12),
	PRIMARY KEY(dealership_id)
);

#Table 2: vehicles#
---------------------
CREATE TABLE `Vehicles` (
    year INT,
    make VARCHAR(20),
    model VARCHAR(20),
    vin VARCHAR(20) NOT NULL,
    sold BOOLEAN NOT NULL,
    PRIMARY KEY (vin)
);


#Table 3#
------------
CREATE TABLE `Inventory` (
    dealership_id INT, 
    vin VARCHAR(20),
    FOREIGN KEY (dealership_id) REFERENCES Dealership(dealership_id),
    FOREIGN KEY (vin) REFERENCES Vehicles(vin)
);

#Table 4#
-------------
CREATE TABLE `Sales_contracts` (
    id INT AUTO_INCREMENT,
    name VARCHAR(50),
    price INT,
    agreement BOOLEAN,
    PRIMARY KEY (id)
);

INSERT INTO Dealership (name, address, phone)
VALUES('Lake Norman Infiniti', '434 Yay St', '704-777-7777'),
	  ('Hendrick BMW', '585 Happy Ln', '704-555-5558'),
      ('Mercedes Benz Northlake', '887 SiryJontezQuyen Ln', '704-666-6666'),
      ('Lexus Northlake', '332 Yippie Rd', '704-879-3215');
      
INSERT INTO Vehicles (year, make, model, vin, sold)
VAlUES(2016, 'Infiniti', 'Q70L', '1HGBH41JXMN109186', TRUE),
	  (2019, 'BMW', 'X5M50I', '2HGBH41JXMN109187', TRUE),
      (2020, 'Dodge', 'Challengar Scat Pack', '3HGBH41JXMN109188', FALSE),
      (2015, 'Infiniti', 'Q50s', '4HGBH41JXMN109189', FALSE);
      
INSERT INTO Inventory (dealership_id, vin)
VALUES('1', '1HGBH41JXMN109186'),
	  ('2', '2HGBH41JXMN109187'),
      ('3', '3HGBH41JXMN109188'),
      ('4', '4HGBH41JXMN109189');
      
INSERT INTO Sales_contracts (name, price, agreement)
VALUES('Jontez Snider', 815498, TRUE),
	  ('Alan Chumsawang', 74857, FALSE),
      ('Tequila Ridgeway', 28736, TRUE);
		
      
      







