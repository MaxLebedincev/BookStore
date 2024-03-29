USE [OnlineStore]
GO
/****** Object:  Table [dbo].[Genres]    Script Date: 13.04.2023 2:28:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genres](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[image] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Genres] ON 

INSERT [dbo].[Genres] ([id], [name], [image]) VALUES (91, N'Роман', NULL)
INSERT [dbo].[Genres] ([id], [name], [image]) VALUES (92, N'Детектив', NULL)
INSERT [dbo].[Genres] ([id], [name], [image]) VALUES (93, N'Фантастика', NULL)
INSERT [dbo].[Genres] ([id], [name], [image]) VALUES (94, N'Приключения', NULL)
INSERT [dbo].[Genres] ([id], [name], [image]) VALUES (95, N'Фэнтези', NULL)
INSERT [dbo].[Genres] ([id], [name], [image]) VALUES (96, N'Триллер', NULL)
INSERT [dbo].[Genres] ([id], [name], [image]) VALUES (97, N'История', NULL)
INSERT [dbo].[Genres] ([id], [name], [image]) VALUES (98, N'Классика', NULL)
INSERT [dbo].[Genres] ([id], [name], [image]) VALUES (99, N'Мистика', NULL)
INSERT [dbo].[Genres] ([id], [name], [image]) VALUES (100, N'Ужасы', NULL)
INSERT [dbo].[Genres] ([id], [name], [image]) VALUES (101, N'Наука', NULL)
INSERT [dbo].[Genres] ([id], [name], [image]) VALUES (102, N'Драма', NULL)
INSERT [dbo].[Genres] ([id], [name], [image]) VALUES (103, N'Комедия', NULL)
INSERT [dbo].[Genres] ([id], [name], [image]) VALUES (104, N'Поэзия', NULL)
INSERT [dbo].[Genres] ([id], [name], [image]) VALUES (105, N'Биография', NULL)
INSERT [dbo].[Genres] ([id], [name], [image]) VALUES (106, N'Мемуары', NULL)
INSERT [dbo].[Genres] ([id], [name], [image]) VALUES (108, N'Психология', NULL)
INSERT [dbo].[Genres] ([id], [name], [image]) VALUES (109, N'Философия', NULL)
INSERT [dbo].[Genres] ([id], [name], [image]) VALUES (110, N'Документалистика', NULL)
INSERT [dbo].[Genres] ([id], [name], [image]) VALUES (111, N'Современность', NULL)
INSERT [dbo].[Genres] ([id], [name], [image]) VALUES (112, N'Юмор', NULL)
INSERT [dbo].[Genres] ([id], [name], [image]) VALUES (113, N'Детские', NULL)
INSERT [dbo].[Genres] ([id], [name], [image]) VALUES (117, N'Криминал', NULL)
INSERT [dbo].[Genres] ([id], [name], [image]) VALUES (119, N'Спорт', NULL)
INSERT [dbo].[Genres] ([id], [name], [image]) VALUES (120, N'Религия', NULL)
SET IDENTITY_INSERT [dbo].[Genres] OFF
GO
