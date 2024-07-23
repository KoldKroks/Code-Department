USE [TygerBergFoodProject]
GO

/****** Object:  Table [dbo].[PetTypes]    Script Date: 2020/10/05 11:50:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PetTypes](
	[PetID] [int] NOT NULL,
	[PetBreed] [varchar](50) NULL,
	[PetColour] [varchar](50) NOT NULL,
	[PetGender] [varchar](50) NOT NULL,
	[PetType] [varchar](50) NOT NULL,
	[AnimalID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

