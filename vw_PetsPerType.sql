USE [TygerBergFoodProject]
GO

/****** Object:  View [dbo].[vw_PetsPerType]    Script Date: 2020/10/05 11:55:24 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vw_PetsPerType] AS
SELECT AnimalType , QuantityAmount, FoodAllocated, PetType, PetID
FROM AnimalCategory, PetTypes
WHERE AnimalType = QuantityAmount;
GO

