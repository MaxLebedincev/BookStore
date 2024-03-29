USE [OnlineStore]
GO
/****** Object:  Table [dbo].[Books]    Script Date: 13.04.2023 2:28:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[price] [money] NULL,
	[author] [nvarchar](255) NULL,
	[description] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[date] [datetime] NULL,
	[popular] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Books] ON 

INSERT [dbo].[Books] ([id], [name], [price], [author], [description], [image], [date], [popular]) VALUES (1, N'Тайна затерянной пирамиды', 500.0000, N'Андрей Ковалев', N'Группа археологов отправляется на поиски затерянной пирамиды в пустыне. Но они не ожидали, что найдут не только древние сокровища, но и опасность, которая угрожает им всем.', NULL, CAST(N'2021-06-15T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[Books] ([id], [name], [price], [author], [description], [image], [date], [popular]) VALUES (2, N'Закон джунглей', 450.0000, N'Сергей Иванов', N'История о жизни молодого парня, который вынужден выживать в джунглях после крушения самолета. Он находит новых друзей и противников, и каждый день становится для него испытанием.', NULL, CAST(N'2021-07-10T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Books] ([id], [name], [price], [author], [description], [image], [date], [popular]) VALUES (3, N'Секреты заброшенного замка', 550.0000, N'Елена Николаева', N'Группа подростков отправляется на исследование заброшенного замка, но они не ожидали, что найдут там не только мистические сокровища, но и темные секреты, которые преследуют их их детства.', NULL, CAST(N'2021-09-05T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[Books] ([id], [name], [price], [author], [description], [image], [date], [popular]) VALUES (4, N'Последний шанс', 300.0000, N'Марина Смирнова', N'История о жизни молодого человека, который решает изменить свою жизнь после тяжелой болезни. Он начинает искать новый смысл жизни и находит его в неожиданных местах.', NULL, CAST(N'2021-10-25T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[Books] ([id], [name], [price], [author], [description], [image], [date], [popular]) VALUES (5, N'Путь к звездам', 400.0000, N'Ирина Коваленко', N'Молодая женщина мечтает стать космонавтом и отправляется в космическую программу. Но на ее пути встречаются трудности, которые она должна преодолеть, чтобы достичь своей мечты.', NULL, CAST(N'2021-11-12T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[Books] ([id], [name], [price], [author], [description], [image], [date], [popular]) VALUES (6, N'Тайны острова', 450.0000, N'Александр Козлов', N'Группа людей отправляется на неизвестный остров в поисках приключений и сокровищ. Но на острове они обнаруживают не только древние руины, но и опасность, которая грозит им всем.', NULL, CAST(N'2021-09-30T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[Books] ([id], [name], [price], [author], [description], [image], [date], [popular]) VALUES (7, N'За гранью возможного', 500.0000, N'Дарья Петрова', N'Молодой ученый проводит эксперименты, которые выходят за рамки обычного понимания науки. Он сталкивается с неожиданными результатами и понимает, что границы между реальностью и фантазией становятся все менее очевидными.', NULL, CAST(N'2021-12-07T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Books] ([id], [name], [price], [author], [description], [image], [date], [popular]) VALUES (8, N'Последняя битва', 350.0000, N'Анна Сидорова', N'История о жизни молодого воина, который сражается в последней битве за свою родину. Он находит новых друзей и противников, и каждый день становится для него испытанием.', NULL, CAST(N'2021-10-15T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[Books] ([id], [name], [price], [author], [description], [image], [date], [popular]) VALUES (9, N'Секреты прошлого', 550.0000, N'Евгений Иванов', N'Молодая женщина отправляется на поиски своих корней и раскрывает темные секреты своей семьи. Она понимает, что прошлое может иметь серьезные последствия на настоящее и будущее.', NULL, CAST(N'2021-11-01T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[Books] ([id], [name], [price], [author], [description], [image], [date], [popular]) VALUES (10, N'Пленники времени', 420.0000, N'Николай Иванов', N'Молодой ученый случайно попадает в прошлое и пытается изменить историю, но сталкивается с препятствиями и опасностями', NULL, CAST(N'2021-11-22T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[Books] ([id], [name], [price], [author], [description], [image], [date], [popular]) VALUES (11, N'Путь к свободе', 380.0000, N'Анна Петрова', N'Молодая девушка бежит из тюрьмы и пытается начать новую жизнь, но прошлое не дает ей покоя', NULL, CAST(N'2021-12-10T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[Books] ([id], [name], [price], [author], [description], [image], [date], [popular]) VALUES (12, N'Игра с огнем', 600.0000, N'Денис Смирнов', N'Главный герой оказывается втянут в опасную игру с коварными противниками и должен использовать все свои умения, чтобы выжить', NULL, CAST(N'2022-01-05T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Books] ([id], [name], [price], [author], [description], [image], [date], [popular]) VALUES (13, N'Лабиринты разума', 450.0000, N'Мария Кузнецова', N'Психологический триллер о мужчине, который страдает от амнезии и пытается восстановить свою память, но обнаруживает ужасные тайны своего прошлого', NULL, CAST(N'2021-12-28T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[Books] ([id], [name], [price], [author], [description], [image], [date], [popular]) VALUES (14, N'Охота на дракона', 520.0000, N'Алексей Григорьев', N'Фэнтезийный роман о группе героев, которые отправляются на поиски дракона и пытаются спасти королевство от его угрозы', NULL, CAST(N'2022-01-20T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[Books] ([id], [name], [price], [author], [description], [image], [date], [popular]) VALUES (15, N'Тени прошлого', 350.0000, N'Елена Иванова', N'Молодая журналистка пытается раскрыть тайну убийства своего отца и сталкивается с опасными врагами', NULL, CAST(N'2022-02-15T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[Books] ([id], [name], [price], [author], [description], [image], [date], [popular]) VALUES (16, N'Последняя надежда', 420.0000, N'Александр Петров', N'Приключенческий роман о группе исследователей, которые отправляются на поиски легендарного сокровища', NULL, CAST(N'2022-03-08T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[Books] ([id], [name], [price], [author], [description], [image], [date], [popular]) VALUES (17, N'Темные воды', 500.0000, N'Ирина Сидорова', N'Триллер о молодой женщине, которая попадает в ловушку убийцы и должна использовать все свои силы, чтобы выжить', NULL, CAST(N'2022-04-18T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Books] ([id], [name], [price], [author], [description], [image], [date], [popular]) VALUES (18, N'Красный след', 380.0000, N'Дмитрий Лебедев', N'Детектив о полицейском, который пытается раскрыть серию жестоких убийств и остановить преступника', NULL, CAST(N'2022-05-25T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[Books] ([id], [name], [price], [author], [description], [image], [date], [popular]) VALUES (19, N'Взрывная смесь', 450.0000, N'Андрей Козлов', N'Боевик о группе наемников, которые берут на себя задание по защите богатого бизнесмена от террористов', NULL, CAST(N'2022-06-10T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[Books] ([id], [name], [price], [author], [description], [image], [date], [popular]) VALUES (20, N'Изгнание духов', 320.0000, N'Мария Сидорова', N'Роман о молодой женщине, которая обладает способностью видеть привидений и пытается разгадать тайну своего прошлого', NULL, CAST(N'2022-08-23T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[Books] ([id], [name], [price], [author], [description], [image], [date], [popular]) VALUES (21, N'Погоня за счастьем', 450.0000, N'Алексей Иванов', N'История о человеке, который бросил все и отправился в путешествие в поисках своего истинного предназначения', NULL, CAST(N'2022-09-07T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Books] ([id], [name], [price], [author], [description], [image], [date], [popular]) VALUES (22, N'Забытый мир', 550.0000, N'Анна Петрова', N'Фантастический роман о группе ученых, которые находят портал в другое измерение и сталкиваются с невероятными приключениями', NULL, CAST(N'2022-10-15T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[Books] ([id], [name], [price], [author], [description], [image], [date], [popular]) VALUES (23, N'Секреты прошлого', 380.0000, N'Виктория Козлова', N'Детектив о женщине-детективе, которая пытается раскрыть тайну своего пропавшего брата и сталкивается с темными силами', NULL, CAST(N'2022-11-25T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[Books] ([id], [name], [price], [author], [description], [image], [date], [popular]) VALUES (24, N'Путь к успеху', 420.0000, N'Денис Лебедев', N'Книга-мануал о том, как достичь успеха в карьере и личной жизни с помощью различных практик и техник', NULL, CAST(N'2022-12-05T00:00:00.000' AS DateTime), 5)
SET IDENTITY_INSERT [dbo].[Books] OFF
GO
