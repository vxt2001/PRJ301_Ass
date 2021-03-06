USE [SQL]
GO
/****** Object:  Table [dbo].[Diem]    Script Date: 6/23/2022 1:07:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diem](
	[idSV] [int] NOT NULL,
	[MaMH] [nvarchar](50) NOT NULL,
	[HocKy] [float] NOT NULL,
	[DiemLan1] [float] NOT NULL,
	[DiemLan2] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiaoVien]    Script Date: 6/23/2022 1:07:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaoVien](
	[idGV] [int] NOT NULL,
	[TenGV] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_GiaoVien] PRIMARY KEY CLUSTERED 
(
	[idGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HeDT]    Script Date: 6/23/2022 1:07:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HeDT](
	[MaHeDT] [nvarchar](max) NOT NULL,
	[TenHeDT] [nvarchar](40) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Khoa]    Script Date: 6/23/2022 1:07:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khoa](
	[MaKhoa] [nvarchar](max) NOT NULL,
	[TenKhoa] [nvarchar](max) NOT NULL,
	[DiaChi] [nvarchar](max) NOT NULL,
	[DienThoai] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhoaHoc]    Script Date: 6/23/2022 1:07:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhoaHoc](
	[MaKhoaHoc] [nvarchar](150) NOT NULL,
	[TenKhoaHoc] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK__KhoaHoc__48F0FF982B112975] PRIMARY KEY CLUSTERED 
(
	[MaKhoaHoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lop]    Script Date: 6/23/2022 1:07:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lop](
	[idLop] [int] NOT NULL,
	[MaLop] [nvarchar](max) NOT NULL,
	[TenLop] [nvarchar](max) NOT NULL,
	[MaKhoa] [nvarchar](max) NULL,
	[MaHeDT] [nvarchar](max) NULL,
	[MaKhoaHoc] [nvarchar](150) NULL,
 CONSTRAINT [PK_Lop] PRIMARY KEY CLUSTERED 
(
	[idLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonHoc]    Script Date: 6/23/2022 1:07:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonHoc](
	[MaMH] [nvarchar](50) NOT NULL,
	[TenMH] [nvarchar](30) NOT NULL,
	[SoTrinh] [int] NOT NULL,
	[SoTin] [int] NOT NULL,
 CONSTRAINT [PK_MonHoc] PRIMARY KEY CLUSTERED 
(
	[MaMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonHocc]    Script Date: 6/23/2022 1:07:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonHocc](
	[MaMH] [nvarchar](50) NOT NULL,
	[TenMH] [nvarchar](30) NOT NULL,
	[SoTin] [int] NOT NULL,
 CONSTRAINT [PK_MonHocc] PRIMARY KEY CLUSTERED 
(
	[MaMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SinhVien]    Script Date: 6/23/2022 1:07:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SinhVien](
	[idSV] [int] NOT NULL,
	[MaSV] [nvarchar](max) NOT NULL,
	[TenSV] [nvarchar](max) NOT NULL,
	[GioiTinh] [bit] NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[idLop] [int] NOT NULL,
 CONSTRAINT [PK_SinhVien] PRIMARY KEY CLUSTERED 
(
	[idSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Diem] ([idSV], [MaMH], [HocKy], [DiemLan1], [DiemLan2]) VALUES (1, N'SQL', 5, 7, 3)
INSERT [dbo].[Diem] ([idSV], [MaMH], [HocKy], [DiemLan1], [DiemLan2]) VALUES (2, N'SQL', 5, 6, 1)
INSERT [dbo].[Diem] ([idSV], [MaMH], [HocKy], [DiemLan1], [DiemLan2]) VALUES (1, N'PRO', 5, 8, 2)
INSERT [dbo].[Diem] ([idSV], [MaMH], [HocKy], [DiemLan1], [DiemLan2]) VALUES (3, N'SQL', 5, 4, 6)
INSERT [dbo].[Diem] ([idSV], [MaMH], [HocKy], [DiemLan1], [DiemLan2]) VALUES (1, N'PRJ', 5, 4, 5)
INSERT [dbo].[Diem] ([idSV], [MaMH], [HocKy], [DiemLan1], [DiemLan2]) VALUES (2, N'PRO', 5, 4, 4)
INSERT [dbo].[Diem] ([idSV], [MaMH], [HocKy], [DiemLan1], [DiemLan2]) VALUES (3, N'PRO', 5, 4, 6)
INSERT [dbo].[Diem] ([idSV], [MaMH], [HocKy], [DiemLan1], [DiemLan2]) VALUES (2, N'PRJ', 5, 3, 4)
INSERT [dbo].[Diem] ([idSV], [MaMH], [HocKy], [DiemLan1], [DiemLan2]) VALUES (3, N'PRJ', 5, 4, 4)
GO
INSERT [dbo].[GiaoVien] ([idGV], [TenGV]) VALUES (1, N'Sonnt')
INSERT [dbo].[GiaoVien] ([idGV], [TenGV]) VALUES (2, N'Tunt')
INSERT [dbo].[GiaoVien] ([idGV], [TenGV]) VALUES (3, N'BanTQ')
INSERT [dbo].[GiaoVien] ([idGV], [TenGV]) VALUES (4, N'TienTD')
GO
INSERT [dbo].[HeDT] ([MaHeDT], [TenHeDT]) VALUES (N'SE', N'ki thuat')
INSERT [dbo].[HeDT] ([MaHeDT], [TenHeDT]) VALUES (N'AI', N'tri tue')
GO
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa], [DiaChi], [DienThoai]) VALUES (N'CK   ', N'Cõ Khí', N'Tầng 5 nhà B', 122222222)
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa], [DiaChi], [DienThoai]) VALUES (N'CNTT ', N'cong nghe thong tin', N'Tầng 4 nhà B', 123344444)
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa], [DiaChi], [DienThoai]) VALUES (N'DT   ', N'Ðiện tử', N'Tằng 6 nhà B', 333333333)
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa], [DiaChi], [DienThoai]) VALUES (N'KT   ', N'Kinh Tế', N'Tầng 2 nhà C', 444444444)
GO
INSERT [dbo].[KhoaHoc] ([MaKhoaHoc], [TenKhoaHoc]) VALUES (N'K14', N'khóa 14')
INSERT [dbo].[KhoaHoc] ([MaKhoaHoc], [TenKhoaHoc]) VALUES (N'K15', N'khóa 15')
INSERT [dbo].[KhoaHoc] ([MaKhoaHoc], [TenKhoaHoc]) VALUES (N'K16', N'khóa 16')
INSERT [dbo].[KhoaHoc] ([MaKhoaHoc], [TenKhoaHoc]) VALUES (N'K17', N'khóa 17')
GO
INSERT [dbo].[Lop] ([idLop], [MaLop], [TenLop], [MaKhoa], [MaHeDT], [MaKhoaHoc]) VALUES (1, N'MT1', N'MÁy Tính 1', N'CNTT', N'A01', N'K15')
INSERT [dbo].[Lop] ([idLop], [MaLop], [TenLop], [MaKhoa], [MaHeDT], [MaKhoaHoc]) VALUES (2, N'MT2', N'MÁy Tính 2', N'CNTT', N'A01', N'K15')
INSERT [dbo].[Lop] ([idLop], [MaLop], [TenLop], [MaKhoa], [MaHeDT], [MaKhoaHoc]) VALUES (3, N'MT3', N'MÁy Tính 3', N'CNTT', N'A01', N'K15')
INSERT [dbo].[Lop] ([idLop], [MaLop], [TenLop], [MaKhoa], [MaHeDT], [MaKhoaHoc]) VALUES (4, N'MT4', N'MÁy Tính 4', N'CNTT', N'A01', N'K15')
INSERT [dbo].[Lop] ([idLop], [MaLop], [TenLop], [MaKhoa], [MaHeDT], [MaKhoaHoc]) VALUES (5, N'KT1', N'Kinh tế 1', N'KT', N'A01', N'K15')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTrinh], [SoTin]) VALUES (N'PRJ  ', N'JaveWeb', 1, 2)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTrinh], [SoTin]) VALUES (N'PRO  ', N'Java', 3, 1)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTrinh], [SoTin]) VALUES (N'SQL  ', N'SQL', 2, 1)
GO
INSERT [dbo].[MonHocc] ([MaMH], [TenMH], [SoTin]) VALUES (N'PRJ', N'JaveWeb', 1)
INSERT [dbo].[MonHocc] ([MaMH], [TenMH], [SoTin]) VALUES (N'PRO', N'Java', 3)
INSERT [dbo].[MonHocc] ([MaMH], [TenMH], [SoTin]) VALUES (N'SQL', N'SQL', 2)
GO
INSERT [dbo].[SinhVien] ([idSV], [MaSV], [TenSV], [GioiTinh], [NgaySinh], [idLop]) VALUES (1, N'HE150247', N'Vũ Xuân Tùng', 1, CAST(N'2001-11-04' AS Date), 1)
INSERT [dbo].[SinhVien] ([idSV], [MaSV], [TenSV], [GioiTinh], [NgaySinh], [idLop]) VALUES (2, N'HE150456', N'Nguyễn Tùng Lâm', 1, CAST(N'2001-01-01' AS Date), 2)
INSERT [dbo].[SinhVien] ([idSV], [MaSV], [TenSV], [GioiTinh], [NgaySinh], [idLop]) VALUES (3, N'HE150516', N'Phạm Bá Oai', 1, CAST(N'2001-02-22' AS Date), 3)
INSERT [dbo].[SinhVien] ([idSV], [MaSV], [TenSV], [GioiTinh], [NgaySinh], [idLop]) VALUES (4, N'HE150522', N'Nguyễn Đức Tọ', 1, CAST(N'2001-03-22' AS Date), 3)
INSERT [dbo].[SinhVien] ([idSV], [MaSV], [TenSV], [GioiTinh], [NgaySinh], [idLop]) VALUES (5, N'HE150537', N'Nguyễn Đăng Quang', 1, CAST(N'2001-02-21' AS Date), 1)
INSERT [dbo].[SinhVien] ([idSV], [MaSV], [TenSV], [GioiTinh], [NgaySinh], [idLop]) VALUES (6, N'HE150555', N'Đặng Đức Cảnh', 1, CAST(N'2001-05-22' AS Date), 2)
INSERT [dbo].[SinhVien] ([idSV], [MaSV], [TenSV], [GioiTinh], [NgaySinh], [idLop]) VALUES (7, N'HE150995', N'Nguyễn Ngọc Minh', 1, CAST(N'2001-02-10' AS Date), 1)
INSERT [dbo].[SinhVien] ([idSV], [MaSV], [TenSV], [GioiTinh], [NgaySinh], [idLop]) VALUES (8, N'HE151309', N'Nguyễn Đỗ Khánh Linh', 0, CAST(N'2001-06-26' AS Date), 1)
GO
ALTER TABLE [dbo].[Diem]  WITH CHECK ADD  CONSTRAINT [FK_Diem_SinhVien] FOREIGN KEY([idSV])
REFERENCES [dbo].[SinhVien] ([idSV])
GO
ALTER TABLE [dbo].[Diem] CHECK CONSTRAINT [FK_Diem_SinhVien]
GO
ALTER TABLE [dbo].[SinhVien]  WITH CHECK ADD  CONSTRAINT [FK_SinhVien_Lop] FOREIGN KEY([idLop])
REFERENCES [dbo].[Lop] ([idLop])
GO
ALTER TABLE [dbo].[SinhVien] CHECK CONSTRAINT [FK_SinhVien_Lop]
GO
ALTER TABLE [dbo].[Diem]  WITH CHECK ADD  CONSTRAINT [CK__Diem__HocKy__35BCFE0A] CHECK  (([HocKy]>(0)))
GO
ALTER TABLE [dbo].[Diem] CHECK CONSTRAINT [CK__Diem__HocKy__35BCFE0A]
GO
ALTER TABLE [dbo].[MonHoc]  WITH CHECK ADD  CONSTRAINT [CK__MonHoc__SoTrinh__24927208] CHECK  (([SoTrinh]>(0) AND [SoTrinh]<(7)))
GO
ALTER TABLE [dbo].[MonHoc] CHECK CONSTRAINT [CK__MonHoc__SoTrinh__24927208]
GO
