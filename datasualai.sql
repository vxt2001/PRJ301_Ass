USE [BTLSQL]
GO
/****** Object:  Table [dbo].[Diem]    Script Date: 6/20/2022 3:05:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diem](
	[MaSV] [nvarchar](max) NOT NULL,
	[MaMH] [nvarchar](max) NOT NULL,
	[HocKy] [int] NOT NULL,
	[DiemLan1] [int] NULL,
	[DiemLan2] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HeDT]    Script Date: 6/20/2022 3:05:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HeDT](
	[MaHeDT] [nvarchar](max) NOT NULL,
	[TenHeDT] [nvarchar](40) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Khoa]    Script Date: 6/20/2022 3:05:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khoa](
	[MaKhoa] [char](5) NOT NULL,
	[TenKhoa] [nvarchar](30) NOT NULL,
	[DiaChi] [nvarchar](100) NOT NULL,
	[DienThoai] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKhoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhoaHoc]    Script Date: 6/20/2022 3:05:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhoaHoc](
	[MaKhoaHoc] [char](5) NOT NULL,
	[TenKhoaHoc] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKhoaHoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lop]    Script Date: 6/20/2022 3:05:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lop](
	[MaLop] [char](5) NOT NULL,
	[TenLop] [nvarchar](30) NOT NULL,
	[MaKhoa] [char](5) NULL,
	[MaHeDT] [char](5) NULL,
	[MaKhoaHoc] [char](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonHoc]    Script Date: 6/20/2022 3:05:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonHoc](
	[MaMH] [char](5) NOT NULL,
	[TenMH] [nvarchar](30) NOT NULL,
	[SoTrinh] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SinhVien]    Script Date: 6/20/2022 3:05:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SinhVien](
	[MaSV] [nvarchar](max) NOT NULL,
	[TenSV] [nvarchar](max) NULL,
	[GioiTinh] [bit] NULL,
	[NgaySinh] [date] NULL,
	[QueQuan] [nvarchar](50) NULL,
	[MaLop] [char](5) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Diem] ([MaSV], [MaMH], [HocKy], [DiemLan1], [DiemLan2]) VALUES (N'he150247', N'SQL  ', 5, 7, NULL)
INSERT [dbo].[Diem] ([MaSV], [MaMH], [HocKy], [DiemLan1], [DiemLan2]) VALUES (N'0241060418     ', N'SQL  ', 5, 6, NULL)
INSERT [dbo].[Diem] ([MaSV], [MaMH], [HocKy], [DiemLan1], [DiemLan2]) VALUES (N'he150247       ', N'CNPM ', 5, 8, NULL)
INSERT [dbo].[Diem] ([MaSV], [MaMH], [HocKy], [DiemLan1], [DiemLan2]) VALUES (N'0241060518     ', N'SQL  ', 5, 4, 6)
INSERT [dbo].[Diem] ([MaSV], [MaMH], [HocKy], [DiemLan1], [DiemLan2]) VALUES (N'he150247', N'Mang ', 5, 4, 5)
INSERT [dbo].[Diem] ([MaSV], [MaMH], [HocKy], [DiemLan1], [DiemLan2]) VALUES (N'he150247       ', N'JV   ', 5, 4, 4)
INSERT [dbo].[Diem] ([MaSV], [MaMH], [HocKy], [DiemLan1], [DiemLan2]) VALUES (N'0241060518     ', N'JV   ', 5, 4, 6)
INSERT [dbo].[Diem] ([MaSV], [MaMH], [HocKy], [DiemLan1], [DiemLan2]) VALUES (N'he150247', N'PTHT ', 4, 2, 5)
INSERT [dbo].[Diem] ([MaSV], [MaMH], [HocKy], [DiemLan1], [DiemLan2]) VALUES (N'0241060318     ', N'SQL  ', 4, 9, NULL)
INSERT [dbo].[Diem] ([MaSV], [MaMH], [HocKy], [DiemLan1], [DiemLan2]) VALUES (N'0241060618     ', N'SQL  ', 4, 8, NULL)
INSERT [dbo].[Diem] ([MaSV], [MaMH], [HocKy], [DiemLan1], [DiemLan2]) VALUES (N'0241060318     ', N'Mang ', 5, 3, 4)
INSERT [dbo].[Diem] ([MaSV], [MaMH], [HocKy], [DiemLan1], [DiemLan2]) VALUES (N'0241060418     ', N'Mang ', 5, 4, 4)
INSERT [dbo].[Diem] ([MaSV], [MaMH], [HocKy], [DiemLan1], [DiemLan2]) VALUES (N'0241060518     ', N'Mang ', 5, 8, NULL)
GO
INSERT [dbo].[HeDT] ([MaHeDT], [TenHeDT]) VALUES (N'SE', N'ki thuat')
INSERT [dbo].[HeDT] ([MaHeDT], [TenHeDT]) VALUES (N'AI', N'tri tue')
GO
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa], [DiaChi], [DienThoai]) VALUES (N'CK   ', N'Cõ Khí', N'Tầng 5 nhà B', N'043768888')
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa], [DiaChi], [DienThoai]) VALUES (N'CNTT ', N'Công nghệ thông tin', N'Tầng 4 nhà B', N'043768888')
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa], [DiaChi], [DienThoai]) VALUES (N'DT   ', N'Ðiện tử', N'Tằng 6 nhà B', N'043768888')
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa], [DiaChi], [DienThoai]) VALUES (N'KT   ', N'Kinh Tế', N'Tầng 2 nhà C', N'043768888')
GO
INSERT [dbo].[KhoaHoc] ([MaKhoaHoc], [TenKhoaHoc]) VALUES (N'K1   ', N'Ðại học khóa 1')
INSERT [dbo].[KhoaHoc] ([MaKhoaHoc], [TenKhoaHoc]) VALUES (N'K10  ', N'Ðại học khóa 5')
INSERT [dbo].[KhoaHoc] ([MaKhoaHoc], [TenKhoaHoc]) VALUES (N'K11  ', N'Ðại học khóa 6')
INSERT [dbo].[KhoaHoc] ([MaKhoaHoc], [TenKhoaHoc]) VALUES (N'K2   ', N'Ðại học khóa 2')
INSERT [dbo].[KhoaHoc] ([MaKhoaHoc], [TenKhoaHoc]) VALUES (N'K3   ', N'Ðại học khóa 3')
INSERT [dbo].[KhoaHoc] ([MaKhoaHoc], [TenKhoaHoc]) VALUES (N'K9   ', N'Ðại học khóa 4')
GO
INSERT [dbo].[Lop] ([MaLop], [TenLop], [MaKhoa], [MaHeDT], [MaKhoaHoc]) VALUES (N'KT1  ', N'Kinh tế 1', N'KT   ', N'A01  ', N'K2   ')
INSERT [dbo].[Lop] ([MaLop], [TenLop], [MaKhoa], [MaHeDT], [MaKhoaHoc]) VALUES (N'MT1  ', N'MÁy Tính 1', N'CNTT ', N'A01  ', N'K2   ')
INSERT [dbo].[Lop] ([MaLop], [TenLop], [MaKhoa], [MaHeDT], [MaKhoaHoc]) VALUES (N'MT2  ', N'MÁy Tính 2', N'CNTT ', N'A01  ', N'K2   ')
INSERT [dbo].[Lop] ([MaLop], [TenLop], [MaKhoa], [MaHeDT], [MaKhoaHoc]) VALUES (N'MT3  ', N'MÁy Tính 3', N'CNTT ', N'A01  ', N'K2   ')
INSERT [dbo].[Lop] ([MaLop], [TenLop], [MaKhoa], [MaHeDT], [MaKhoaHoc]) VALUES (N'MT4  ', N'MÁy Tính 4', N'CNTT ', N'A01  ', N'K2   ')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTrinh]) VALUES (N'CNPM ', N'Công Ngh? ph?n m?m', 4)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTrinh]) VALUES (N'JV   ', N'Java', 6)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTrinh]) VALUES (N'Mang ', N'M?ng máy tính', 5)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTrinh]) VALUES (N'PTHT ', N'Phân tích h? th?ng', 4)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTrinh]) VALUES (N'SQL  ', N'SQL', 5)
GO
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [QueQuan], [MaLop]) VALUES (N'0241060218     ', N'Nguyễn Minh Một', 1, CAST(N'1989-08-27' AS Date), N'hai duong', N'MT3  ')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [QueQuan], [MaLop]) VALUES (N'0241060318     ', N'Nguyễn Minh Hai', 1, CAST(N'1989-02-08' AS Date), N'Nam Dinh', N'MT1  ')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [QueQuan], [MaLop]) VALUES (N'0241060418     ', N'Nguyễn Minh Ba', 1, CAST(N'1989-07-04' AS Date), N'Ninh Binh', N'MT2  ')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [QueQuan], [MaLop]) VALUES (N'0241060518     ', N'Nguyễn Minh Bốn', 1, CAST(N'1989-07-08' AS Date), N'Ninh Binh', N'MT1  ')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [QueQuan], [MaLop]) VALUES (N'0241060618     ', N'Nguyễn Minh Nãm', 0, CAST(N'1989-07-08' AS Date), N'Nam Dinh', N'MT3  ')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [QueQuan], [MaLop]) VALUES (N'0241060718     ', N'Nguyễn Minh Sáu', 1, CAST(N'1989-07-08' AS Date), N'Ha Noi', N'MT3  ')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [QueQuan], [MaLop]) VALUES (N'0241060818     ', N'Nguyễn Minh Bảy', 1, CAST(N'1989-07-08' AS Date), N'Ha Noi', N'MT3  ')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [QueQuan], [MaLop]) VALUES (N'0241060918     ', N'Nguyễn Minh Tám', 1, CAST(N'1989-07-08' AS Date), N'Hai Duong', N'MT2  ')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [QueQuan], [MaLop]) VALUES (N'0241060978     ', N'Nguyễn Minh Mýời Nãm', 1, CAST(N'1989-07-08' AS Date), N'Nam Dinh', N'KT1  ')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [QueQuan], [MaLop]) VALUES (N'he120000       ', N'Nguyễn Minh Mýời Ba', 1, CAST(N'1989-07-08' AS Date), N'Hai Duong', N'MT4  ')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [QueQuan], [MaLop]) VALUES (N'he123000       ', N'Nguyễn Minh Mýời Hai', 0, CAST(N'1989-07-08' AS Date), N'Ha Noi', N'MT4  ')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [QueQuan], [MaLop]) VALUES (N'he123456       ', N'Nguyễn Minh Mýời', 1, CAST(N'1989-07-08' AS Date), N'Ha Nam', N'MT2  ')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [QueQuan], [MaLop]) VALUES (N'he123457       ', N'Nguyễn Minh Mýời Một', 0, CAST(N'1989-07-08' AS Date), N'Bac Giang', N'MT4  ')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [QueQuan], [MaLop]) VALUES (N'he150247       ', N'Vũ Xuân Tùng', 1, CAST(N'2001-11-04' AS Date), N'Hai Duong', N'MT2  ')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [QueQuan], [MaLop]) VALUES (N'hs199999       ', N'Nguyễn Minh Mýời Bốn', 1, CAST(N'1989-07-08' AS Date), N'Nam Dinh', N'MT1  ')
GO
ALTER TABLE [dbo].[Lop]  WITH CHECK ADD FOREIGN KEY([MaKhoa])
REFERENCES [dbo].[Khoa] ([MaKhoa])
GO
ALTER TABLE [dbo].[Lop]  WITH CHECK ADD FOREIGN KEY([MaKhoaHoc])
REFERENCES [dbo].[KhoaHoc] ([MaKhoaHoc])
GO
ALTER TABLE [dbo].[SinhVien]  WITH CHECK ADD  CONSTRAINT [FK__SinhVien__MaLop__31EC6D26] FOREIGN KEY([MaLop])
REFERENCES [dbo].[Lop] ([MaLop])
GO
ALTER TABLE [dbo].[SinhVien] CHECK CONSTRAINT [FK__SinhVien__MaLop__31EC6D26]
GO
ALTER TABLE [dbo].[Diem]  WITH CHECK ADD  CONSTRAINT [CK__Diem__HocKy__35BCFE0A] CHECK  (([HocKy]>(0)))
GO
ALTER TABLE [dbo].[Diem] CHECK CONSTRAINT [CK__Diem__HocKy__35BCFE0A]
GO
ALTER TABLE [dbo].[MonHoc]  WITH CHECK ADD CHECK  (([SoTrinh]>(0) AND [SoTrinh]<(7)))
GO
