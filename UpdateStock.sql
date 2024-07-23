USE [TygerBergFoodProject]
GO

/****** Object:  StoredProcedure [dbo].[UpdateStock]    Script Date: 2020/10/05 11:47:54 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[UpdateStock]
AS
UPDATE PetTypes
SET AnimalID = 454, PetID = 0, PetType = AnimalID
WHERE  AnimalID = 2;
GO

