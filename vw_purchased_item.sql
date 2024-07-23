USE [screw_db]
GO

/****** Object:  View [dbo].[vw_purchased_item]    Script Date: 2020/12/10 14:45:13 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vw_purchased_item]
AS
	SELECT *
	FROM Quantity
GO

