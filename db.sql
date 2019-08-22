USE [cinema]
GO
/****** Object:  Table [dbo].[Booking]    Script Date: 22-Aug-19 3:41:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Booking](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MovieId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[Date] [date] NOT NULL,
 CONSTRAINT [PK__booking] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movie]    Script Date: 22-Aug-19 3:41:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movie](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](50) NOT NULL,
	[Description] [varchar](max) NOT NULL,
	[Actors] [varchar](max) NOT NULL,
	[Room] [varchar](10) NOT NULL,
	[Year] [int] NOT NULL,
	[Src] [varchar](50) NOT NULL,
 CONSTRAINT [PK_movie] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovieSchedule]    Script Date: 22-Aug-19 3:41:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovieSchedule](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MovieId] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[Time] [time](0) NOT NULL,
 CONSTRAINT [PK__movieschedule] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Seat]    Script Date: 22-Aug-19 3:41:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Seat](
	[MovieId] [int] IDENTITY(1,1) NOT NULL,
	[ID] [int] NOT NULL,
	[SeatNumber] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[Time] [time](0) NOT NULL,
 CONSTRAINT [PK__seat] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 22-Aug-19 3:41:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[IsAdmin] [bit] NOT NULL,
 CONSTRAINT [PK__user] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Movie] ON 

INSERT [dbo].[Movie] ([ID], [Title], [Description], [Actors], [Room], [Year], [Src]) VALUES (1, N'Beauty and the beast', N'A selfish prince is cursed to become a monster for the rest of his life, unless he learns to fall in love with a beautiful young woman he keeps prisoner.', N'Emma Watson, Dan Stevens', N'room 2', 2017, N'1f759f3c0869ef9f52beb75ee5f41db7.jpg')
INSERT [dbo].[Movie] ([ID], [Title], [Description], [Actors], [Room], [Year], [Src]) VALUES (2, N'Fast Color', N'A woman is forced to go on the run when her superhuman abilities are discovered. Years after having abandoned her family, the only place she has left to hide is home.', N'Lorraine Toussaint, Gugu Mbatha-Raw, Christopher Denham', N'room 4', 2019, N'FastColor.jpg')
INSERT [dbo].[Movie] ([ID], [Title], [Description], [Actors], [Room], [Year], [Src]) VALUES (3, N'The Lion King', N'After the murder of his father, a young lion prince flees his kingdom only to learn the true meaning of responsibility and bravery.', N'Donald Glover, Beyoncé', N'room 1', 2019, N'TheLionKing.jpg')
INSERT [dbo].[Movie] ([ID], [Title], [Description], [Actors], [Room], [Year], [Src]) VALUES (4, N'Dora and The Lost City of Gold', N'Dora, a teenage explorer, leads her friends on an adventure to save her parents and solve the mystery behind a lost city of gold.', N'Isabela Moner, Eugenio Derbez', N'room 1', 2019, N'Dora.jpg')
INSERT [dbo].[Movie] ([ID], [Title], [Description], [Actors], [Room], [Year], [Src]) VALUES (5, N'Alita: Battle Angel', N'A deactivated cyborg is revived, but cannot remember anything of her past life and goes on a quest to find out who she is.', N'Rosa Salazar, Jennifer Connelly', N'room 3', 2019, N'Alita.jpg')
INSERT [dbo].[Movie] ([ID], [Title], [Description], [Actors], [Room], [Year], [Src]) VALUES (6, N'The LightHouse', N'The story of two lighthouse keepers on a remote and mysterious New England island in the 1890s.', N'Robert Pattinson, Valeriia Karaman', N'room 2', 2019, N'TheLightHouse.jpg')
INSERT [dbo].[Movie] ([ID], [Title], [Description], [Actors], [Room], [Year], [Src]) VALUES (7, N'Bohemian Rhapsody', N'The story of the legendary rock band Queen and lead singer Freddie Mercury, leading up to their famous performance at Live Aid (1985).', N'Rami Malek, Lucy Boynton', N'room 2', 2018, N'BohemianRhapsody.jpg')
INSERT [dbo].[Movie] ([ID], [Title], [Description], [Actors], [Room], [Year], [Src]) VALUES (8, N'ygtyt', N'jgjhg', N'jhgjhg', N'jhgjhg', 5454, N'jhgjhg')
SET IDENTITY_INSERT [dbo].[Movie] OFF
SET IDENTITY_INSERT [dbo].[MovieSchedule] ON 

INSERT [dbo].[MovieSchedule] ([ID], [MovieId], [Date], [Time]) VALUES (1, 1, CAST(N'2019-08-14' AS Date), CAST(N'08:24:14' AS Time))
INSERT [dbo].[MovieSchedule] ([ID], [MovieId], [Date], [Time]) VALUES (2, 1, CAST(N'2019-08-14' AS Date), CAST(N'09:24:14' AS Time))
INSERT [dbo].[MovieSchedule] ([ID], [MovieId], [Date], [Time]) VALUES (3, 2, CAST(N'2019-08-14' AS Date), CAST(N'10:24:14' AS Time))
INSERT [dbo].[MovieSchedule] ([ID], [MovieId], [Date], [Time]) VALUES (5, 3, CAST(N'2017-11-01' AS Date), CAST(N'01:02:03' AS Time))
INSERT [dbo].[MovieSchedule] ([ID], [MovieId], [Date], [Time]) VALUES (6, 3, CAST(N'2017-11-01' AS Date), CAST(N'01:02:03' AS Time))
SET IDENTITY_INSERT [dbo].[MovieSchedule] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([ID], [Name], [Email], [Password], [IsAdmin]) VALUES (1, N'user 1 edit', N'test1@test1.ro', N'test1', 0)
INSERT [dbo].[User] ([ID], [Name], [Email], [Password], [IsAdmin]) VALUES (2, N'testez put', N'test2@test2.ro', N'test2', 0)
INSERT [dbo].[User] ([ID], [Name], [Email], [Password], [IsAdmin]) VALUES (3, N'admin', N'admin@yahoo.com', N'admin', 1)
SET IDENTITY_INSERT [dbo].[User] OFF
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK__booking__movie_id] FOREIGN KEY([MovieId])
REFERENCES [dbo].[Movie] ([ID])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK__booking__movie_id]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK__booking__user_id] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK__booking__user_id]
GO
ALTER TABLE [dbo].[MovieSchedule]  WITH CHECK ADD  CONSTRAINT [FK__movieschedule__movie_id] FOREIGN KEY([MovieId])
REFERENCES [dbo].[Movie] ([ID])
GO
ALTER TABLE [dbo].[MovieSchedule] CHECK CONSTRAINT [FK__movieschedule__movie_id]
GO
ALTER TABLE [dbo].[Seat]  WITH CHECK ADD  CONSTRAINT [FK__seat__movie_id] FOREIGN KEY([MovieId])
REFERENCES [dbo].[Movie] ([ID])
GO
ALTER TABLE [dbo].[Seat] CHECK CONSTRAINT [FK__seat__movie_id]
GO
