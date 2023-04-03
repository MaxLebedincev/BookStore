USE [OnlineStore]
GO
/****** Object:  Table [dbo].[Books_Genres]    Script Date: 03.04.2023 23:35:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books_Genres](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idBook] [int] NULL,
	[idGenre] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Books_Genres]  WITH CHECK ADD FOREIGN KEY([idBook])
REFERENCES [dbo].[Books] ([id])
GO
ALTER TABLE [dbo].[Books_Genres]  WITH CHECK ADD FOREIGN KEY([idGenre])
REFERENCES [dbo].[Genres] ([id])
GO
