USE [TygerBergFoodProject]
GO

/****** Object:  Table [dbo].[Supplier]    Script Date: 2020/10/05 11:50:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Supplier](
	[supplierID] [int] NOT NULL,
	[typeOfSuppliers] [varchar](50) NOT NULL,
	[AutoInCremenatingID] [varchar](50) NOT NULL,
	[CompanyName] [varchar](50) NOT NULL,
	[ContactNumber] [varchar](50) NULL,
	[EmailAddress] [varchar](50) NULL,
 CONSTRAINT [supplierID_PK] PRIMARY KEY CLUSTERED 
(
	[supplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

