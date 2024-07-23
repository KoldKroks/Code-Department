USE [TygerBergFoodProject]
GO

/****** Object:  Table [dbo].[AnimalCategory]    Script Date: 2020/10/05 11:49:49 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[AnimalCategory](
	[FoodAllocated] [varchar](50) NULL,
	[QuantityAmount] [int] NULL,
	[AnimalID] [int] NOT NULL,
	[AnimalType] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[AnimalID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

