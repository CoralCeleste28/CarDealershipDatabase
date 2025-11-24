# ---------------------------------------------------------------------- #
# Target DBMS:           MySQL                                           #
# Project name:          Coral Car Dealership                            #
# ---------------------------------------------------------------------- #
DROP DATABASE IF EXISTS coralcardealership;

CREATE DATABASE IF NOT EXISTS coralcardealership;

Use coralcardealership;

CREATE TABLE `dealerships` (
    `Dealership_ID` int not null auto_increment, 
    `Name` VARCHAR(50) not null, 
    `Address` VARCHAR(50) not null,
    `Phone` VARCHAR(50) not null,
     CONSTRAINT `PK_dealerships` PRIMARY KEY (`Dealership_ID`)
);

CREATE TABLE `Vehicles` (
    `VIN` VARCHAR(20),
    `SOLD` VARCHAR(50),
    `Color` VARCHAR (50),
    CONSTRAINT `Vehicles` PRIMARY KEY (`VIN`)
);

CREATE TABLE `Inventory` (
    `Dealership_ID` int,
    `VIN` VARCHAR(20),
    CONSTRAINT `Inventory` PRIMARY KEY (`Dealership_ID`)
);

CREATE TABLE `Sales Contracts` (
    `ID` int auto_increment,
    `VIN` VARCHAR(20),
    `Signed` varchar (10),
    CONSTRAINT `Sales Contracts` PRIMARY KEY (`ID`)
);

-- DEALERSHIP DATA
INSERT INTO dealerships (Name, Address, Phone) VALUES('Coral', "123 Coral Street", '123-456-7890'), ("Meron", "123 Meron Street", "9876-543-3124"), ("Helena", "123 Helena Street", "111-222-3333");

-- VEHICLES DATA
INSERT INTO Vehicles VALUES("1HGCM82633A452789", "Sold", "Pink");
INSERT INTO Vehicles VALUES("3FAHP0HA6AR128456", "NOT Sold", "Blue");
INSERT INTO Vehicles VALUES("15YJSA1E26HF217390", "NOT Sold", "Black");

-- INVENTORY DATA
INSERT INTO Inventory VALUES(1, "1HGCM82633A452789");
INSERT INTO Inventory VALUES(2, "3FAHP0HA6AR128456");
INSERT INTO Inventory VALUES(3, "15YJSA1E26HF217390");

-- SALES CONTRACTS
INSERT INTO `Sales Contracts` VALUES(1, "1HGCM82633A452789", "Signed");
INSERT INTO `Sales Contracts` VALUES(2, "3FAHP0HA6AR128456", "Pending");
INSERT INTO `Sales Contracts` VALUES(3, "15YJSA1E26HF217390", "Signed");

ALTER TABLE `Sales Contracts` ADD CONSTRAINT `FK_sales contracts` 
    FOREIGN KEY (`ID`) REFERENCES `dealership` (`Dealership_ID`);




