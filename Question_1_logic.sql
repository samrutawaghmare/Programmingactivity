USE [Amruta]
GO

/****** Object:  Table [dbo].[world_population]    Script Date: 12-06-2022 17:21:28 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[world_population](
	[id] [int] NULL,
	[country_name] [varchar](100) NULL,
	[year] [int] NULL,
	[population_value] [int] NULL
) ON [PRIMARY]
GO


