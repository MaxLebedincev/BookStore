USE [OnlineStore]
GO
/****** Object:  Table [dbo].[MainUsers]    Script Date: 03.04.2023 23:35:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MainUsers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[login] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[role] [nvarchar](255) NULL,
	[password] [nvarchar](max) NULL,
	[registerDate] [datetime] NULL,
	[updateDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[MainUsers] ON 

INSERT [dbo].[MainUsers] ([id], [login], [email], [role], [password], [registerDate], [updateDate]) VALUES (1, N'Kira', N'NoLight@maill.ru', N'admin', N'TqjNRJsW2laLtn66C/He9c65wiYaec5VXeinQzfT6nvuo9ZmcfKhBWdhhxDJQ0azWDux3F2T+N+KTcabfXtbEA==', CAST(N'2023-04-02T20:51:48.040' AS DateTime), CAST(N'2023-04-02T20:51:48.040' AS DateTime))
SET IDENTITY_INSERT [dbo].[MainUsers] OFF
GO
