USE [TygerBergFoodProject]
GO

/****** Object:  StoredProcedure [dbo].[DeleteFoodType]    Script Date: 2020/10/05 11:47:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[DeleteFoodType]
AS
DELETE FROM FoodType WHERE FoodTypes = Food_ID
GO

