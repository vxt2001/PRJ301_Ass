USE [SQL]
GO
/****** Object:  Table [dbo].[Diem]    Script Date: 6/20/2022 9:37:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diem](
	[MaSV] [nvarchar](max) NOT NULL,
	[MaMH] [nvarchar](max) NOT NULL,
	[HocKy] [int] NOT NULL,
	[DiemLan1] [int] NOT NULL,
	[DiemLan2] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HeDT]    Script Date: 6/20/2022 9:37:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HeDT](
	[MaHeDT] [nvarchar](max) NOT NULL,
	[TenHeDT] [nvarchar](40) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Khoa]    Script Date: 6/20/2022 9:37:07 PM ******/
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
/****** Object:  Table [dbo].[KhoaHoc]    Script Date: 6/20/2022 9:37:07 PM ******/
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
/****** Object:  Table [dbo].[Lop]    Script Date: 6/20/2022 9:37:07 PM ******/
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
/****** Object:  Table [dbo].[MonHoc]    Script Date: 6/20/2022 9:37:07 PM ******/
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
/****** Object:  Table [dbo].[SinhVien]    Script Date: 6/20/2022 9:37:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SinhVien](
	[MaSV] [nvarchar](max) NOT NULL,
	[TenSV] [nvarchar](max) NOT NULL,
	[GioiTinh] [bit] NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[QueQuan] [nvarchar](50) NOT NULL,
	[MaLop] [char](5) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Diem] ([MaSV], [MaMH], [HocKy], [DiemLan1], [DiemLan2]) VALUES (N'he150247', N'SQL', 5, 7, 3)
INSERT [dbo].[Diem] ([MaSV], [MaMH], [HocKy], [DiemLan1], [DiemLan2]) VALUES (N'he199999', N'SQL', 5, 6, 1)
INSERT [dbo].[Diem] ([MaSV], [MaMH], [HocKy], [DiemLan1], [DiemLan2]) VALUES (N'he150247', N'CNPM', 5, 8, 2)
INSERT [dbo].[Diem] ([MaSV], [MaMH], [HocKy], [DiemLan1], [DiemLan2]) VALUES (N'he120000', N'SQL', 5, 4, 6)
INSERT [dbo].[Diem] ([MaSV], [MaMH], [HocKy], [DiemLan1], [DiemLan2]) VALUES (N'he150247', N'Mang', 5, 4, 5)
INSERT [dbo].[Diem] ([MaSV], [MaMH], [HocKy], [DiemLan1], [DiemLan2]) VALUES (N'he120000', N'JV', 5, 4, 4)
INSERT [dbo].[Diem] ([MaSV], [MaMH], [HocKy], [DiemLan1], [DiemLan2]) VALUES (N'he199999', N'JV', 5, 4, 6)
INSERT [dbo].[Diem] ([MaSV], [MaMH], [HocKy], [DiemLan1], [DiemLan2]) VALUES (N'he150247', N'PTHT', 4, 2, 5)
INSERT [dbo].[Diem] ([MaSV], [MaMH], [HocKy], [DiemLan1], [DiemLan2]) VALUES (N'he199999', N'Mang', 5, 3, 4)
INSERT [dbo].[Diem] ([MaSV], [MaMH], [HocKy], [DiemLan1], [DiemLan2]) VALUES (N'he120000', N'Mang', 5, 4, 4)
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
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTrinh]) VALUES (N'CNPM ', N'SE', 4)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTrinh]) VALUES (N'JV   ', N'Java', 6)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTrinh]) VALUES (N'Mang ', N'MSI', 5)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTrinh]) VALUES (N'PTHT ', N'Phân tích h? th?ng', 4)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTrinh]) VALUES (N'SQL  ', N'SQL', 5)
GO
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [QueQuan], [MaLop]) VALUES (N'he150527', N'Nguyễn Đình Thọ', 1, CAST(N'2001-02-02' AS Date), N'Ha Noi', N'MT3  ')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [QueQuan], [MaLop]) VALUES (N'he150516', N'Phạm Bá Oai', 1, CAST(N'2002-01-01' AS Date), N'Hai Duong', N'MT2  ')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [QueQuan], [MaLop]) VALUES (N'he150456', N'Nguyễn Tùng Lâm', 1, CAST(N'2001-07-07' AS Date), N'Nam Dinh', N'KT1  ')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [QueQuan], [MaLop]) VALUES (N'he120000', N'Khánh Linh', 0, CAST(N'2001-06-26' AS Date), N'Hai Duong', N'MT4  ')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [QueQuan], [MaLop]) VALUES (N'he123000', N'Nguyễn Thanh Sơn', 1, CAST(N'2001-07-08' AS Date), N'Ha Noi', N'MT4  ')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [QueQuan], [MaLop]) VALUES (N'he123456', N'Nguyễn Văn Đức', 1, CAST(N'2001-07-08' AS Date), N'Ha Nam', N'MT2  ')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [QueQuan], [MaLop]) VALUES (N'he123457', N'Nguyễn Minh Đức', 0, CAST(N'2001-12-08' AS Date), N'Bac Giang', N'MT4  ')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [QueQuan], [MaLop]) VALUES (N'he150247', N'Vũ Xuân Tùng', 1, CAST(N'2001-11-04' AS Date), N'Hai Duong', N'MT2  ')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgaySinh], [QueQuan], [MaLop]) VALUES (N'he199999', N'Nguyễn Đăng Quang', 1, CAST(N'2001-06-08' AS Date), N'Nam Dinh', N'MT1  ')
GO
ALTER TABLE [dbo].[Diem]  WITH CHECK ADD  CONSTRAINT [CK__Diem__HocKy__35BCFE0A] CHECK  (([HocKy]>(0)))
GO
ALTER TABLE [dbo].[Diem] CHECK CONSTRAINT [CK__Diem__HocKy__35BCFE0A]
GO
ALTER TABLE [dbo].[MonHoc]  WITH CHECK ADD CHECK  (([SoTrinh]>(0) AND [SoTrinh]<(7)))
GO
