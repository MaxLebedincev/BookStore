USE [OnlineStore]
GO
/****** Object:  Table [dbo].[MainUsers]    Script Date: 13.04.2023 2:28:11 ******/
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
INSERT [dbo].[MainUsers] ([id], [login], [email], [role], [password], [registerDate], [updateDate]) VALUES (2, N'Gol', N'gar@mail.ru', N'moderator', N'Hpr0VNLYqNXM/HFzLpMh+wFyZuJsHL9fG4ju/aFpiWZcZvaSu9Vgl+wrQ7sPcnRBfQtIAfUhTIo638JXcaPeBw==', CAST(N'2023-04-12T08:40:12.590' AS DateTime), CAST(N'2023-04-12T08:40:12.590' AS DateTime))
INSERT [dbo].[MainUsers] ([id], [login], [email], [role], [password], [registerDate], [updateDate]) VALUES (3, N'Lipa', N'lipa@gmail.ru', N'moderator', N'0PKVZ6+kY7dxIPY3ToSMugDkEmWyKKXeLSMFbgw0iwgJlaUC9kUl5DbpCpCX51lwf7oH8Xx4s1tb/RZ8PjO9fA==', CAST(N'2023-04-12T08:45:02.637' AS DateTime), CAST(N'2023-04-12T08:45:02.637' AS DateTime))
INSERT [dbo].[MainUsers] ([id], [login], [email], [role], [password], [registerDate], [updateDate]) VALUES (4, N'Client', N'client@mail.ru', N'client', N'5+mDagDGnUyEiEdOopkCa9mdUzi3fNCDGM09dMbTjVOQP9qbIM+z+Ph56aHoUFvi6UdGB6FNcmX+nMcLEcwIjw==', CAST(N'2023-04-13T02:14:43.343' AS DateTime), CAST(N'2023-04-13T02:14:43.343' AS DateTime))
SET IDENTITY_INSERT [dbo].[MainUsers] OFF
GO
