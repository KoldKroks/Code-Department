USE [TygerBergFoodProject]
GO

/****** Object:  View [dbo].[vw_ExpiredFoodDetails]    Script Date: 2020/10/05 11:54:23 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vw_ExpiredFoodDetails] AS
SELECT AnimalType , EmailAddress, ContactNumber, PetType, PetID, CompanyName, typeOfSuppliers
FROM  PetTypes, Supplier, FoodType
WHERE AnimalType = PetType;
GO

