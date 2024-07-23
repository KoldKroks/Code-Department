USE [TygerBergFoodProject]
GO

/****** Object:  View [dbo].[vw_LowestFoods]    Script Date: 2020/10/05 11:54:41 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vw_LowestFoods] AS
SELECT AnimalType , QuantityAmount, FoodAllocated, PetType, PetID
FROM AnimalCategory, PetTypes
WHERE  AnimalType > (SELECT AVG( QuantityAmount) FROM AnimalCategory)
GO

