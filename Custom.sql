USE [screw_db]
GO

/****** Object:  Table [dbo].[Custom]    Script Date: 2020/12/10 14:43:59 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Custom](
	[custTel] [int] NOT NULL,
	[custName] [varchar](50) NULL,
	[custEmail] [varchar](50) NULL,
 CONSTRAINT [PK_Custom] PRIMARY KEY CLUSTERED 
(
	[custTel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

