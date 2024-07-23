USE [TygerBergFoodProject]
GO

/****** Object:  View [dbo].[vw_ManufacturerDetails]    Script Date: 2020/10/05 11:55:06 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vw_ManufacturerDetails] AS
SELECT FoodTypes, ContactNumber, EmailAddress, CompanyName, typeOfSuppliers, ExpiryDate, FoodName
FROM Supplier, FoodType
WHERE typeOfSuppliers = FoodTypes;
GO

