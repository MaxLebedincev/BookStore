USE [OnlineStore]
GO
/****** Object:  Table [dbo].[Books_Genres]    Script Date: 10.04.2023 0:07:14 ******/
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
SET IDENTITY_INSERT [dbo].[Books_Genres] ON 

INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (2, 1, 108)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (3, 2, 97)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (5, 4, 103)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (6, 5, 92)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (8, 7, 95)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (9, 8, 111)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (12, 11, 106)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (13, 12, 94)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (14, 13, 113)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (15, 14, 101)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (16, 15, 120)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (17, 16, 109)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (18, 17, 98)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (20, 19, 104)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (21, 20, 93)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (22, 21, 112)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (23, 22, 100)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (24, 23, 117)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (25, 24, 105)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (26, 1, 93)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (27, 2, 94)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (28, 3, 106)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (30, 5, 101)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (31, 6, 119)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (34, 9, 111)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (35, 10, 120)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (36, 11, 95)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (38, 13, 112)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (39, 14, 92)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (42, 17, 97)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (43, 18, 110)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (44, 19, 105)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (45, 20, 96)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (48, 23, 109)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (49, 24, 98)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (52, 1, 91)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (54, 3, 96)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (55, 4, 93)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (56, 5, 97)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (57, 6, 92)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (59, 8, 98)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (60, 9, 99)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (61, 10, 100)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (62, 11, 103)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (63, 12, 105)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (66, 15, 101)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (67, 16, 104)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (68, 17, 109)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (69, 18, 106)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (70, 19, 111)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (71, 20, 110)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (72, 21, 113)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (73, 22, 112)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (76, 1, 104)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (77, 2, 106)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (78, 3, 112)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (79, 4, 117)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (84, 9, 92)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (85, 10, 106)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (86, 11, 92)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (87, 12, 109)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (88, 13, 97)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (89, 14, 99)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (90, 15, 95)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (91, 16, 113)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (92, 17, 96)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (93, 18, 102)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (94, 19, 100)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (95, 20, 99)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (97, 22, 101)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (98, 23, 96)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (100, 1, 98)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (101, 2, 96)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (102, 3, 91)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (103, 4, 108)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (104, 5, 100)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (106, 7, 109)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (108, 9, 96)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (111, 12, 100)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (112, 13, 102)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (115, 16, 93)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (116, 17, 113)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (117, 18, 96)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (118, 19, 101)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (119, 20, 108)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (120, 21, 100)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (121, 22, 110)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (122, 23, 95)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (123, 24, 103)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (124, 1, 97)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (125, 2, 117)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (126, 3, 109)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (127, 4, 102)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (128, 5, 104)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (129, 6, 93)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (130, 7, 104)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (131, 8, 101)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (132, 9, 102)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (134, 11, 91)
GO
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (135, 12, 113)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (136, 13, 105)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (137, 14, 106)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (138, 15, 104)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (139, 16, 102)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (140, 17, 104)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (141, 18, 99)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (143, 20, 102)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (144, 21, 99)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (146, 23, 99)
INSERT [dbo].[Books_Genres] ([id], [idBook], [idGenre]) VALUES (147, 24, 113)
SET IDENTITY_INSERT [dbo].[Books_Genres] OFF
GO
ALTER TABLE [dbo].[Books_Genres]  WITH CHECK ADD FOREIGN KEY([idBook])
REFERENCES [dbo].[Books] ([id])
GO
ALTER TABLE [dbo].[Books_Genres]  WITH CHECK ADD FOREIGN KEY([idGenre])
REFERENCES [dbo].[Genres] ([id])
GO
