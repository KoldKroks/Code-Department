/*Mohamed Aqeel Majal
09/09/2020
Database Management Project
Tyger Valley Project*/

Use TygerBergFoodProject
GO

CREATE TABLE Supplier(
	supplierID INT NOT NULL,
	typeOfSuppliers VARCHAR(50) NOT NULL,
	AutoInCremenatingID VARCHAR(50) NOT NULL,
	CompanyName VARCHAR(50) NOT NULL,
	ContactNumber VARCHAR(50) NULL,
	EmailAddress VARCHAR(50) NULL,
	CONSTRAINT supplierID_PK PRIMARY KEY (supplierID)
)
GO

CREATE TABLE PetTypes(
	PetID INT NOT NULL,	
	PetBreed VARCHAR(50) NULL,
	PetColour VARCHAR(50) NOT NULL,	
	PetGender VARCHAR(50) NOT NULL,
	PetType VARCHAR(50) NOT NULL,
	AnimalID INT NOT NULL,
	PRIMARY KEY (PetID),
	FOREIGN KEY (AnimalID) REFERENCES AnimalCategory(AnimalID)
)
GO

CREATE TABLE FoodType(
	FoodTypes VARCHAR(50) NOT NULL,
	ExpiryDate DATE NOT NULL,
	FoodName VARCHAR(50) NOT NULL,
	PackageSize VARCHAR(50) NOT NULL,
	AnimalType VARCHAR(50) NOT NULL,
	SupplierID INT NOT NULL,
	Food_ID INT NOT NULL,
	PRIMARY KEY (AnimalType),
	FOREIGN KEY (SupplierID) REFERENCES Supplier(SupplierID)
	CONSTRAINT ExpiryDate CHECK (ExpiryDate <= GETDATE())
)
GO


CREATE TABLE AnimalCategory(
	FoodAllocated VARCHAR(50) NOT NULL,
	QuantityAmount INT NULL,
	AnimalID INT NOT NULL,
	AnimalType VARCHAR(50) NULL,
	PRIMARY KEY (AnimalID),
	FOREIGN KEY (AnimalType) REFERENCES AnimalType(AnimalType)
)
GO


INSERT INTO Supplier(supplierID, typeOfSuppliers , AutoInCremenatingID, CompanyName, ContactNumber, EmailAddress )
VALUES('54','Dog Food','4df484a84ds','DOg Made','0786348804','MAdDogs@gmail.com'),
      ('45','Fish Food','2sf44a84ds','BubbleBubble','0787458214','BubbleBubble@gmail.com'),
	  ('35','Cat Food','5dfs84a84ds','Meowth','0787758644','Meowth@gmail.com'),
	  ('75','Snake Food','6sad84a84ds','Slither','0787896544','Slither@gmail.com'),
	  ('74','Bird Food','awis84a84ds','Flyers','0887341244','Flyers@gmail.com'),
	  ('77','Rodent Food','asd84a84ds','Speed Mouse','0717368804','SpeedMouse@gmail.com')
GO

INSERT INTO PetTypes(PetID, PetBreed, PetColour, PetGender, PetType, AnimalID )
VALUES('4784882','Parana','grey', 'Male', 'Fish','541515'),
	  ('476352','husky','White', 'Male', 'Dog','45151'),
	  ('4715840','Ginger','Ginger', 'Female', 'Cat','84848'),
      ('58282732','Python','peach', 'Female', 'Snake','741848'),
	  ('6382226','Finch','brown', 'Male', 'Bird','919155'),
	  ('28282763','Hamster','Light Brown', 'Male', 'Rodent','7175529')
GO

INSERT INTO FoodType(FoodTypes, ExpiryDate, FoodName, PackageSize, AnimalType, SupplierID, Food_ID )
VALUES('DogFood','2020-10-4','DogbArks', '25kg', 'Dog','54','4544311'),
	  ('FishFood','2020-09-25','Fishyfishy', '3kg', 'Fish','45','6543435'),
	  ('CatFood','2020-04-21','Meowkai', '10kg', 'Cat','35','456543'),
	  ('SnakeFood','2021-03-7','Snekkles', '9kg', 'Snake','75','735343'),
	  ('BirdFood','2021-06-14','Pek', '7kg', 'Bird','74','73543131'),
	  ('RodentFood','2021-01-5','Vermintide', '5kg', 'Rodent','77','73434354')
GO

INSERT INTO  AnimalCategory(FoodAllocated, QuantityAmount, AnimalID, AnimalType )
VALUES('350g','400','45151', 'Dog'),
	  ('110g','50','541515', 'Fish'),
	  ('230g','350','84848', 'Cat'),
	  ('210g','425','741848', 'Snake'),
	  ('100g','67','919155', 'Bird'),
	  ('150g','90','7175529', 'Rodent')
GO

CREATE VIEW vw_ManufacturerDetails AS
SELECT FoodTypes, ContactNumber, EmailAddress, CompanyName, typeOfSuppliers, ExpiryDate, FoodName
FROM Supplier, FoodType
WHERE typeOfSuppliers = FoodTypes;
GO

CREATE VIEW vw_PetsPerType AS
SELECT AnimalType , QuantityAmount, FoodAllocated, PetType, PetID
FROM AnimalCategory, PetTypes
WHERE AnimalType = QuantityAmount;
GO

CREATE VIEW vw_ExpiredFoodDetails AS
SELECT AnimalType , EmailAddress, ContactNumber, PetType, PetID, CompanyName, typeOfSuppliers
FROM  PetTypes, Supplier, FoodType
WHERE AnimalType = PetType;
GO

CREATE VIEW vw_LowestFoods AS
SELECT AnimalType , QuantityAmount, FoodAllocated, PetType, PetID
FROM AnimalCategory, PetTypes
WHERE  AnimalType > (SELECT AVG( QuantityAmount) FROM AnimalCategory)
GO

CREATE PROCEDURE NewPetType
AS
INSERT INTO PetTypes
SELECT * FROM AnimalCategory
WHERE AnimalType = AnimalID;
GO

CREATE PROCEDURE UpdateStock
AS
UPDATE PetTypes
SET AnimalID = 454, PetID = 0, PetType = AnimalID
WHERE  AnimalID = 2;
GO

CREATE PROCEDURE DeleteFoodType
AS
DELETE FROM FoodType WHERE FoodTypes = Food_ID
GO 

CREATE INDEX PetTypes
ON PetTypes (PetID, PetBreed, PetColour, PetGender, PetType, AnimalID);
GO

CREATE INDEX Supplier
ON Supplier (supplierID, typeOfSuppliers, AutoInCremenatingID, CompanyName, ContactNumber, EmailAddress);
GO

CREATE INDEX FoodType
ON FoodType (FoodTypes, ExpiryDate, FoodName, PackageSize, AnimalType, SupplierID, Food_ID);
GO

CREATE INDEX AnimalCategory
ON AnimalCategory (FoodAllocated, QuantityAmount, AnimalID, AnimalType);
GO
 