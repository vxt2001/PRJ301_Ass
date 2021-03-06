USE [assignment]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 6/27/2022 11:30:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[quyen] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Diem]    Script Date: 6/27/2022 11:30:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diem](
	[sid] [int] NOT NULL,
	[suid] [int] NOT NULL,
	[pt1] [float] NULL,
	[pt2] [float] NULL,
	[fe] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiaoVien]    Script Date: 6/27/2022 11:30:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaoVien](
	[idGV] [int] NOT NULL,
	[TenGV] [nvarchar](50) NOT NULL,
	[suid] [int] NOT NULL,
 CONSTRAINT [PK_GiaoVien] PRIMARY KEY CLUSTERED 
(
	[idGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Khoa]    Script Date: 6/27/2022 11:30:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khoa](
	[idKhoa] [int] NOT NULL,
	[TenKhoa] [nvarchar](50) NOT NULL,
	[suid] [int] NOT NULL,
 CONSTRAINT [PK_Khoa] PRIMARY KEY CLUSTERED 
(
	[idKhoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lop]    Script Date: 6/27/2022 11:30:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lop](
	[idLop] [int] NOT NULL,
	[MaLop] [nvarchar](50) NOT NULL,
	[sid] [int] NOT NULL,
	[suid] [int] NOT NULL,
 CONSTRAINT [PK_Lop] PRIMARY KEY CLUSTERED 
(
	[idLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 6/27/2022 11:30:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[sid] [int] NOT NULL,
	[simage] [nvarchar](max) NOT NULL,
	[scode] [nvarchar](50) NOT NULL,
	[sname] [nvarchar](50) NOT NULL,
	[suid] [int] NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[sid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 6/27/2022 11:30:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[suid] [int] NOT NULL,
	[suname] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[suid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Account] ([username], [password], [quyen]) VALUES (N'tungvxhe150247', N'1234', N'hs')
INSERT [dbo].[Account] ([username], [password], [quyen]) VALUES (N'sonnt', N'1234', N'gv')
INSERT [dbo].[Account] ([username], [password], [quyen]) VALUES (N'ha', N'1234', N'admin')
GO
INSERT [dbo].[Diem] ([sid], [suid], [pt1], [pt2], [fe]) VALUES (1, 1, 10, 9, 8)
INSERT [dbo].[Diem] ([sid], [suid], [pt1], [pt2], [fe]) VALUES (2, 1, 3, 4, 5)
INSERT [dbo].[Diem] ([sid], [suid], [pt1], [pt2], [fe]) VALUES (3, 1, 1, 2, 3)
INSERT [dbo].[Diem] ([sid], [suid], [pt1], [pt2], [fe]) VALUES (4, 1, 4, 6, 7)
INSERT [dbo].[Diem] ([sid], [suid], [pt1], [pt2], [fe]) VALUES (5, 1, 6, 6, 6)
INSERT [dbo].[Diem] ([sid], [suid], [pt1], [pt2], [fe]) VALUES (6, 1, 7, 7, 9)
INSERT [dbo].[Diem] ([sid], [suid], [pt1], [pt2], [fe]) VALUES (7, 1, 3, 6, 8)
GO
INSERT [dbo].[GiaoVien] ([idGV], [TenGV], [suid]) VALUES (1, N'sonnt', 1)
INSERT [dbo].[GiaoVien] ([idGV], [TenGV], [suid]) VALUES (2, N'tunt', 2)
INSERT [dbo].[GiaoVien] ([idGV], [TenGV], [suid]) VALUES (3, N'tientd', 3)
INSERT [dbo].[GiaoVien] ([idGV], [TenGV], [suid]) VALUES (4, N'thangtd', 4)
GO
INSERT [dbo].[Khoa] ([idKhoa], [TenKhoa], [suid]) VALUES (1, N'K14', 1)
INSERT [dbo].[Khoa] ([idKhoa], [TenKhoa], [suid]) VALUES (2, N'K15', 1)
INSERT [dbo].[Khoa] ([idKhoa], [TenKhoa], [suid]) VALUES (3, N'K16', 1)
GO
INSERT [dbo].[Lop] ([idLop], [MaLop], [sid], [suid]) VALUES (1, N'SE1610', 1, 1)
INSERT [dbo].[Lop] ([idLop], [MaLop], [sid], [suid]) VALUES (2, N'SE1611', 2, 2)
INSERT [dbo].[Lop] ([idLop], [MaLop], [sid], [suid]) VALUES (3, N'SE1613', 2, 1)
INSERT [dbo].[Lop] ([idLop], [MaLop], [sid], [suid]) VALUES (4, N'SE1614', 3, 3)
GO
INSERT [dbo].[Student] ([sid], [simage], [scode], [sname], [suid]) VALUES (1, N'qwe', N'he150247', N'Vũ Xuân Tùng', 1)
INSERT [dbo].[Student] ([sid], [simage], [scode], [sname], [suid]) VALUES (2, N'mqq', N'he12345', N'Đăng Quang', 1)
INSERT [dbo].[Student] ([sid], [simage], [scode], [sname], [suid]) VALUES (3, N'aaa', N'hs10202', N'Anh Quân', 1)
INSERT [dbo].[Student] ([sid], [simage], [scode], [sname], [suid]) VALUES (4, N'amam', N'he130002', N'Quang Huy', 1)
INSERT [dbo].[Student] ([sid], [simage], [scode], [sname], [suid]) VALUES (5, N'qqqq', N'he140222', N'Trung Hiếu', 1)
INSERT [dbo].[Student] ([sid], [simage], [scode], [sname], [suid]) VALUES (6, N'aaa', N'	HE150456', N'tùng lâm', 1)
INSERT [dbo].[Student] ([sid], [simage], [scode], [sname], [suid]) VALUES (7, N'aaa', N'	HE150516', N'Bá Oai', 1)
INSERT [dbo].[Student] ([sid], [simage], [scode], [sname], [suid]) VALUES (8, N'aaaa', N'HE150522', N'Nguyễn Đức Tọ', 1)
INSERT [dbo].[Student] ([sid], [simage], [scode], [sname], [suid]) VALUES (9, N'aaaa', N'HE151309', N'Nguyễn Đỗ Khánh Linh', 1)
INSERT [dbo].[Student] ([sid], [simage], [scode], [sname], [suid]) VALUES (10, N'aaaaa', N'HE150995', N'Nguyễn Ngọc Minh', 1)
GO
INSERT [dbo].[Subject] ([suid], [suname]) VALUES (1, N'PRJ301')
INSERT [dbo].[Subject] ([suid], [suname]) VALUES (2, N'SWE201c')
INSERT [dbo].[Subject] ([suid], [suname]) VALUES (3, N'SWT')
INSERT [dbo].[Subject] ([suid], [suname]) VALUES (4, N'SWR')
INSERT [dbo].[Subject] ([suid], [suname]) VALUES (5, N'PRO')
GO
ALTER TABLE [dbo].[Diem]  WITH CHECK ADD  CONSTRAINT [FK_Diem_Student] FOREIGN KEY([sid])
REFERENCES [dbo].[Student] ([sid])
GO
ALTER TABLE [dbo].[Diem] CHECK CONSTRAINT [FK_Diem_Student]
GO
ALTER TABLE [dbo].[Diem]  WITH CHECK ADD  CONSTRAINT [FK_Diem_Subject] FOREIGN KEY([suid])
REFERENCES [dbo].[Subject] ([suid])
GO
ALTER TABLE [dbo].[Diem] CHECK CONSTRAINT [FK_Diem_Subject]
GO
ALTER TABLE [dbo].[GiaoVien]  WITH CHECK ADD  CONSTRAINT [FK_GiaoVien_Subject] FOREIGN KEY([suid])
REFERENCES [dbo].[Subject] ([suid])
GO
ALTER TABLE [dbo].[GiaoVien] CHECK CONSTRAINT [FK_GiaoVien_Subject]
GO
ALTER TABLE [dbo].[Khoa]  WITH CHECK ADD  CONSTRAINT [FK_Khoa_Subject] FOREIGN KEY([suid])
REFERENCES [dbo].[Subject] ([suid])
GO
ALTER TABLE [dbo].[Khoa] CHECK CONSTRAINT [FK_Khoa_Subject]
GO
ALTER TABLE [dbo].[Lop]  WITH CHECK ADD  CONSTRAINT [FK_Lop_Student] FOREIGN KEY([sid])
REFERENCES [dbo].[Student] ([sid])
GO
ALTER TABLE [dbo].[Lop] CHECK CONSTRAINT [FK_Lop_Student]
GO
ALTER TABLE [dbo].[Lop]  WITH CHECK ADD  CONSTRAINT [FK_Lop_Subject] FOREIGN KEY([suid])
REFERENCES [dbo].[Subject] ([suid])
GO
ALTER TABLE [dbo].[Lop] CHECK CONSTRAINT [FK_Lop_Subject]
GO
ALTER TABLE [dbo].[Subject]  WITH CHECK ADD  CONSTRAINT [FK_Subject_Student] FOREIGN KEY([suid])
REFERENCES [dbo].[Student] ([sid])
GO
ALTER TABLE [dbo].[Subject] CHECK CONSTRAINT [FK_Subject_Student]
GO
