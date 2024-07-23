USE [screw_db]
GO

/****** Object:  View [dbo].[vw_all_cust]    Script Date: 2020/12/10 14:44:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vw_all_cust]
AS
	SELECT *
	FROM Custom
GO

