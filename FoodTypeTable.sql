USE [TygerBergFoodProject]
GO

/****** Object:  Table [dbo].[FoodType]    Script Date: 2020/10/05 11:50:04 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FoodType](
	[FoodTypes] [varchar](50) NOT NULL,
	[ExpiryDate] [date] NOT NULL,
	[FoodName] [varchar](50) NOT NULL,
	[PackageSize] [varchar](50) NOT NULL,
	[AnimalType] [varchar](50) NOT NULL,
	[SupplierID] [int] NOT NULL,
	[Food_ID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[FoodTypes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[FoodType]  WITH CHECK ADD  CONSTRAINT [ExpiryDate] CHECK  (([ExpiryDate]<=getdate()))
GO

ALTER TABLE [dbo].[FoodType] CHECK CONSTRAINT [ExpiryDate]
GO

