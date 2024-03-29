USE [HienMau1]
GO
/****** Object:  UserDefinedFunction [dbo].[func_nextmadh]    Script Date: 22/06/2022 18:05:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[func_nextmadh] (@lastmadh varchar(15), @prefix varchar(4), @size int)
returns varchar(15)
as
begin
if(@lastmadh='')
	set @lastmadh= @prefix + REPLICATE(0,@size - len(@prefix))
	declare @num_nextmadh int , @nextmadh varchar(15) 
	set @lastmadh= LTRIM(RTRIM(@lastmadh))
	set @num_nextmadh= REPLACE(@lastmadh, @prefix, '') +1
	set @size= @size - LEN(@prefix)
	set @nextmadh = @prefix + REPLICATE(0,@size - LEN(@prefix))
	set @nextmadh= @prefix + RIGHT (REPLICATE(0,@size) + CONVERT(varchar(max),@num_nextmadh),@size)
	return @nextmadh
end
GO
/****** Object:  Table [dbo].[DangKyHienMau]    Script Date: 22/06/2022 18:05:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DangKyHienMau](
	[maDKHM] [varchar](11) NOT NULL,
	[maDHM] [varchar](11) NULL,
	[maNHM] [varchar](11) NULL,
PRIMARY KEY CLUSTERED 
(
	[maDKHM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DangKyHoTro]    Script Date: 22/06/2022 18:05:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DangKyHoTro](
	[maDKHT] [varchar](11) NOT NULL,
	[maDHM] [varchar](11) NULL,
	[maTNV] [varchar](11) NULL,
PRIMARY KEY CLUSTERED 
(
	[maDKHT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhSachCongViec]    Script Date: 22/06/2022 18:05:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhSachCongViec](
	[maDS] [varchar](11) NOT NULL,
	[maDHM] [varchar](11) NULL,
	[maGD] [varchar](11) NULL,
	[congViec] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[maDS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DotHienMau]    Script Date: 22/06/2022 18:05:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DotHienMau](
	[maDHM] [varchar](11) NOT NULL,
	[tenDHM] [nvarchar](100) NULL,
	[thoiGian] [varchar](50) NULL,
	[diaDiem] [nvarchar](200) NULL,
	[soLuongTNV] [int] NULL,
	[soLuongNHM] [int] NULL,
 CONSTRAINT [PK__DotHienM__24305B1FC8A48E50] PRIMARY KEY CLUSTERED 
(
	[maDHM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiamDoc]    Script Date: 22/06/2022 18:05:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiamDoc](
	[maGD] [varchar](11) NOT NULL,
	[tenGD] [nvarchar](100) NULL,
	[gioiTinh] [bit] NULL,
	[diaChi] [nvarchar](200) NULL,
	[SDT] [varchar](10) NOT NULL,
	[CCCD] [varchar](13) NULL,
	[matKhau] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maGD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichSuHienMau]    Script Date: 22/06/2022 18:05:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichSuHienMau](
	[maLSHM] [varchar](11) NOT NULL,
	[maDHM] [varchar](11) NULL,
	[maNHM] [varchar](11) NULL,
	[thoiGian] [date] NULL,
	[tinhTrang] [nvarchar](50) NULL,
	[soLuongMau] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[maLSHM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichSuHoTro]    Script Date: 22/06/2022 18:05:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichSuHoTro](
	[maLSHT] [varchar](11) NOT NULL,
	[maDHM] [varchar](11) NULL,
	[maTNV] [varchar](11) NULL,
	[thoiGian] [date] NULL,
	[tinhTrang] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[maLSHT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiHienMau]    Script Date: 22/06/2022 18:05:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiHienMau](
	[maNHM] [varchar](11) NOT NULL,
	[tenNHM] [nvarchar](100) NULL,
	[gioiTinh] [bit] NULL,
	[nhomMau] [nvarchar](10) NULL,
	[benhNen] [nvarchar](100) NULL,
	[diaChi] [nvarchar](200) NULL,
	[SDT] [varchar](10) NOT NULL,
	[CCCD] [varchar](13) NULL,
	[matKhau] [varchar](100) NOT NULL,
 CONSTRAINT [PK__NguoiHie__26981D39A292B7B7] PRIMARY KEY CLUSTERED 
(
	[maNHM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVienYTe]    Script Date: 22/06/2022 18:05:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVienYTe](
	[maNV] [varchar](11) NOT NULL,
	[tenNV] [nvarchar](100) NULL,
	[gioiTinh] [bit] NULL,
	[diaChi] [nvarchar](200) NULL,
	[SDT] [varchar](10) NOT NULL,
	[CCCD] [varchar](13) NULL,
	[matKhau] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanHoi]    Script Date: 22/06/2022 18:05:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanHoi](
	[maPH] [varchar](11) NOT NULL,
	[maNHM] [varchar](11) NULL,
	[maNV] [varchar](11) NULL,
	[noidung] [nvarchar](200) NULL,
	[cauTraLoi] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[maPH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongBaoHienMau]    Script Date: 22/06/2022 18:05:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongBaoHienMau](
	[maTB] [varchar](11) NOT NULL,
	[tenTB] [nvarchar](100) NULL,
	[maDHM] [varchar](11) NULL,
	[ghiChu] [nvarchar](200) NULL,
	[maNV] [varchar](11) NULL,
PRIMARY KEY CLUSTERED 
(
	[maTB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TinhNguyenVien]    Script Date: 22/06/2022 18:05:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinhNguyenVien](
	[maTNV] [varchar](11) NOT NULL,
	[tenTNV] [nvarchar](100) NULL,
	[gioiTinh] [bit] NULL,
	[diaChi] [nvarchar](200) NULL,
	[SDT] [varchar](10) NOT NULL,
	[CCCD] [varchar](13) NULL,
	[matKhau] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maTNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 22/06/2022 18:05:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NULL,
	[phanQuyen] [int] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DangKyHienMau] ([maDKHM], [maDHM], [maNHM]) VALUES (N'DKHM0000001', N'DHM00000002', N'NHM00000002')
INSERT [dbo].[DangKyHienMau] ([maDKHM], [maDHM], [maNHM]) VALUES (N'DKHM0000002', N'DHM00000003', N'NHM00000005')
INSERT [dbo].[DangKyHienMau] ([maDKHM], [maDHM], [maNHM]) VALUES (N'DKHM0000003', N'DHM00000001', N'NHM00000005')
INSERT [dbo].[DangKyHienMau] ([maDKHM], [maDHM], [maNHM]) VALUES (N'DKHM0000004', N'DHM00000003', N'NHM00000003')
GO
INSERT [dbo].[DangKyHoTro] ([maDKHT], [maDHM], [maTNV]) VALUES (N'DKHT0000001', N'DHM00000003', N'TNV00000001')
INSERT [dbo].[DangKyHoTro] ([maDKHT], [maDHM], [maTNV]) VALUES (N'DKHT0000002', N'DHM00000001', N'TNV00000002')
GO
INSERT [dbo].[DotHienMau] ([maDHM], [tenDHM], [thoiGian], [diaDiem], [soLuongTNV], [soLuongNHM]) VALUES (N'DHM00000001', N'Chủ Nhật Đỏ', N'2021-06-06', N'48 Cao Thắng', 40, 200)
INSERT [dbo].[DotHienMau] ([maDHM], [tenDHM], [thoiGian], [diaDiem], [soLuongTNV], [soLuongNHM]) VALUES (N'DHM00000002', N'Tình Nguyện', N'2021-06-05', N'30 Cao Thắng', 30, 400)
INSERT [dbo].[DotHienMau] ([maDHM], [tenDHM], [thoiGian], [diaDiem], [soLuongTNV], [soLuongNHM]) VALUES (N'DHM00000003', N'Nhân Đạo', N'2021-07-05', N'30 Cao Thắng', 40, 400)
GO
INSERT [dbo].[GiamDoc] ([maGD], [tenGD], [gioiTinh], [diaChi], [SDT], [CCCD], [matKhau]) VALUES (N'GD01', N'Nguyễn Thị Bình', 1, N'02 Thanh Hải', N'0987873411', N'2098723452141', N'abc123')
INSERT [dbo].[GiamDoc] ([maGD], [tenGD], [gioiTinh], [diaChi], [SDT], [CCCD], [matKhau]) VALUES (N'GD02', N'Nguyễn Văn Long', 1, N'174 Âu Cơ', N'0987843873', N'2098723454375', N'abc123')
INSERT [dbo].[GiamDoc] ([maGD], [tenGD], [gioiTinh], [diaChi], [SDT], [CCCD], [matKhau]) VALUES (N'GD03', N'Nguyễn Thị Thuận', 1, N'02 Thanh Hải', N'0987843411', N'2095523452141', N'abc123')
INSERT [dbo].[GiamDoc] ([maGD], [tenGD], [gioiTinh], [diaChi], [SDT], [CCCD], [matKhau]) VALUES (N'GD04', N'Nguyễn Văn Trung', 1, N'174 Âu Cơ', N'0987856873', N'2094323454375', N'abc123')
GO
INSERT [dbo].[LichSuHienMau] ([maLSHM], [maDHM], [maNHM], [thoiGian], [tinhTrang], [soLuongMau]) VALUES (N'LSHM0000001', N'DHM00000002', N'NHM00000002', CAST(N'2021-06-05' AS Date), N'Đã hoàn thành', 250)
INSERT [dbo].[LichSuHienMau] ([maLSHM], [maDHM], [maNHM], [thoiGian], [tinhTrang], [soLuongMau]) VALUES (N'LSHM0000002', N'DHM00000003', N'NHM00000005', CAST(N'2021-07-05' AS Date), N'Chờ Duyệt', 0)
INSERT [dbo].[LichSuHienMau] ([maLSHM], [maDHM], [maNHM], [thoiGian], [tinhTrang], [soLuongMau]) VALUES (N'LSHM0000003', N'DHM00000001', N'NHM00000005', CAST(N'2021-06-06' AS Date), N'Đã hoàn thành', 300)
INSERT [dbo].[LichSuHienMau] ([maLSHM], [maDHM], [maNHM], [thoiGian], [tinhTrang], [soLuongMau]) VALUES (N'LSHM0000004', N'DHM00000003', N'NHM00000003', CAST(N'2021-07-05' AS Date), N'Chờ Duyệt', 0)
GO
INSERT [dbo].[LichSuHoTro] ([maLSHT], [maDHM], [maTNV], [thoiGian], [tinhTrang]) VALUES (N'LSHT0000001', N'DHM00000003', N'TNV00000001', CAST(N'2021-07-05' AS Date), N'Từ chối')
INSERT [dbo].[LichSuHoTro] ([maLSHT], [maDHM], [maTNV], [thoiGian], [tinhTrang]) VALUES (N'LSHT0000002', N'DHM00000001', N'TNV00000002', CAST(N'2021-06-06' AS Date), N'Chờ Duyệt')
GO
INSERT [dbo].[NguoiHienMau] ([maNHM], [tenNHM], [gioiTinh], [nhomMau], [benhNen], [diaChi], [SDT], [CCCD], [matKhau]) VALUES (N'NHM00000002', N'Nguyễn Văn Bình', 1, N'AB', N'Không', N'174 Điện Biên Phủ', N'0987874543', N'2098723456675', N'abc123')
INSERT [dbo].[NguoiHienMau] ([maNHM], [tenNHM], [gioiTinh], [nhomMau], [benhNen], [diaChi], [SDT], [CCCD], [matKhau]) VALUES (N'NHM00000003', N'Nguyễn Hồng Linh', 0, N'O', N'Không', N'174 Điện Biên Phủ', N'0941334533', N'1098713456675', N'abc123')
INSERT [dbo].[NguoiHienMau] ([maNHM], [tenNHM], [gioiTinh], [nhomMau], [benhNen], [diaChi], [SDT], [CCCD], [matKhau]) VALUES (N'NHM00000005', N'Minh Hiếu', 1, N'AB', N'Không', N'12 Thanh Thủy', N'0123456789', N'1234567890123', N'abc123')
INSERT [dbo].[NguoiHienMau] ([maNHM], [tenNHM], [gioiTinh], [nhomMau], [benhNen], [diaChi], [SDT], [CCCD], [matKhau]) VALUES (N'NHM00000006', N'Nguyễn Thị An', 0, N'A', N'Không', N'32 Lê Duẫn', N'0123586749', N'2356887451120', N'abc123')
GO
INSERT [dbo].[NhanVienYTe] ([maNV], [tenNV], [gioiTinh], [diaChi], [SDT], [CCCD], [matKhau]) VALUES (N'NV000000001', N'Nguyễn Thị Anh', 0, N'02 Thanh Bình', N'0987877811', N'2098723456541', N'abc123')
INSERT [dbo].[NhanVienYTe] ([maNV], [tenNV], [gioiTinh], [diaChi], [SDT], [CCCD], [matKhau]) VALUES (N'NV000000002', N'Nguyễn Văn Cường', 1, N'174 Hàm Nghi', N'0987874873', N'2098723456775', N'abc123')
INSERT [dbo].[NhanVienYTe] ([maNV], [tenNV], [gioiTinh], [diaChi], [SDT], [CCCD], [matKhau]) VALUES (N'NV000000003', N'Nguyễn Hồng Phương', 0, N'02 Cao Thắng', N'0987874893', N'2098723458954', N'abc123')
INSERT [dbo].[NhanVienYTe] ([maNV], [tenNV], [gioiTinh], [diaChi], [SDT], [CCCD], [matKhau]) VALUES (N'NV000000004', N'Nguyễn Thị Anh Thư', 0, N'02 Thanh Bình', N'0945877811', N'2096523456541', N'abc123')
INSERT [dbo].[NhanVienYTe] ([maNV], [tenNV], [gioiTinh], [diaChi], [SDT], [CCCD], [matKhau]) VALUES (N'NV000000005', N'Nguyễn Văn Công', 1, N'174 Hàm Nghi', N'0956874873', N'2096623456775', N'abc123')
INSERT [dbo].[NhanVienYTe] ([maNV], [tenNV], [gioiTinh], [diaChi], [SDT], [CCCD], [matKhau]) VALUES (N'NV000000006', N'Nguyễn Hồng Phong', 1, N'12 Cao Thắng', N'0677874893', N'2092323458954', N'abc123')
GO
INSERT [dbo].[TinhNguyenVien] ([maTNV], [tenTNV], [gioiTinh], [diaChi], [SDT], [CCCD], [matKhau]) VALUES (N'TNV00000001', N'Nguyễn Văn Bình', 1, N'174 Điện Biên Phủ', N'0987874543', N'2098723456675', N'abc123')
INSERT [dbo].[TinhNguyenVien] ([maTNV], [tenTNV], [gioiTinh], [diaChi], [SDT], [CCCD], [matKhau]) VALUES (N'TNV00000002', N'Nguyễn Hồng Linh', 0, N'174 Điện Biên Phủ', N'0941334533', N'1098713456675', N'abc123')
INSERT [dbo].[TinhNguyenVien] ([maTNV], [tenTNV], [gioiTinh], [diaChi], [SDT], [CCCD], [matKhau]) VALUES (N'TNV00000004', N'Minh Hiếu', 1, N'12 Thanh Thủy', N'0123456789', N'1234567890123', N'abc123')
INSERT [dbo].[TinhNguyenVien] ([maTNV], [tenTNV], [gioiTinh], [diaChi], [SDT], [CCCD], [matKhau]) VALUES (N'TNV00000005', N'Nguyễn Thị An', 0, N'32 Lê Duẫn', N'0123586749', N'2356887451120', N'abc123')
GO
INSERT [dbo].[User] ([username], [password], [phanQuyen]) VALUES (N'0123456789', N'abc123', 1)
INSERT [dbo].[User] ([username], [password], [phanQuyen]) VALUES (N'012358674', N'abc123', 2)
INSERT [dbo].[User] ([username], [password], [phanQuyen]) VALUES (N'0123586749', N'abc123', 1)
INSERT [dbo].[User] ([username], [password], [phanQuyen]) VALUES (N'023568648', N'abc123', 2)
INSERT [dbo].[User] ([username], [password], [phanQuyen]) VALUES (N'0235686484', N'abc123', 2)
INSERT [dbo].[User] ([username], [password], [phanQuyen]) VALUES (N'023568956', N'abc123', 2)
INSERT [dbo].[User] ([username], [password], [phanQuyen]) VALUES (N'025369874', N'abc123', 2)
INSERT [dbo].[User] ([username], [password], [phanQuyen]) VALUES (N'025896547', N'abc123', 2)
INSERT [dbo].[User] ([username], [password], [phanQuyen]) VALUES (N'05632587455', N'abc123', 2)
INSERT [dbo].[User] ([username], [password], [phanQuyen]) VALUES (N'05635878988', N'abc123', 2)
INSERT [dbo].[User] ([username], [password], [phanQuyen]) VALUES (N'0677874893', N'abc123', 2)
INSERT [dbo].[User] ([username], [password], [phanQuyen]) VALUES (N'0941334533', N'abc123', 1)
INSERT [dbo].[User] ([username], [password], [phanQuyen]) VALUES (N'0945877811', N'abc123', 2)
INSERT [dbo].[User] ([username], [password], [phanQuyen]) VALUES (N'0956874873', N'abc123', 2)
INSERT [dbo].[User] ([username], [password], [phanQuyen]) VALUES (N'0987843411', N'abc123', 3)
INSERT [dbo].[User] ([username], [password], [phanQuyen]) VALUES (N'0987843873', N'abc123', 3)
INSERT [dbo].[User] ([username], [password], [phanQuyen]) VALUES (N'0987856873', N'abc123', 3)
INSERT [dbo].[User] ([username], [password], [phanQuyen]) VALUES (N'0987873411', N'abc123', 3)
INSERT [dbo].[User] ([username], [password], [phanQuyen]) VALUES (N'0987874111', N'abc123', 1)
INSERT [dbo].[User] ([username], [password], [phanQuyen]) VALUES (N'0987874543', N'abc123', 1)
INSERT [dbo].[User] ([username], [password], [phanQuyen]) VALUES (N'0987874873', N'abc123', 2)
INSERT [dbo].[User] ([username], [password], [phanQuyen]) VALUES (N'0987874893', N'abc123', 2)
INSERT [dbo].[User] ([username], [password], [phanQuyen]) VALUES (N'0987877811', N'abc123', 2)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__GiamDoc__A955A0AA10E74BDE]    Script Date: 22/06/2022 18:05:33 ******/
ALTER TABLE [dbo].[GiamDoc] ADD UNIQUE NONCLUSTERED 
(
	[CCCD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__GiamDoc__CA1930A5AB302906]    Script Date: 22/06/2022 18:05:33 ******/
ALTER TABLE [dbo].[GiamDoc] ADD UNIQUE NONCLUSTERED 
(
	[SDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__NhanVien__A955A0AA2AA16F6E]    Script Date: 22/06/2022 18:05:33 ******/
ALTER TABLE [dbo].[NhanVienYTe] ADD UNIQUE NONCLUSTERED 
(
	[CCCD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__NhanVien__CA1930A5C7423663]    Script Date: 22/06/2022 18:05:33 ******/
ALTER TABLE [dbo].[NhanVienYTe] ADD UNIQUE NONCLUSTERED 
(
	[SDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__TinhNguy__A955A0AA0D3EAF20]    Script Date: 22/06/2022 18:05:33 ******/
ALTER TABLE [dbo].[TinhNguyenVien] ADD UNIQUE NONCLUSTERED 
(
	[CCCD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__TinhNguy__CA1930A567E83789]    Script Date: 22/06/2022 18:05:33 ******/
ALTER TABLE [dbo].[TinhNguyenVien] ADD UNIQUE NONCLUSTERED 
(
	[SDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DangKyHienMau]  WITH CHECK ADD  CONSTRAINT [FK__DangKyHie__maDHM__4AB81AF0] FOREIGN KEY([maDHM])
REFERENCES [dbo].[DotHienMau] ([maDHM])
GO
ALTER TABLE [dbo].[DangKyHienMau] CHECK CONSTRAINT [FK__DangKyHie__maDHM__4AB81AF0]
GO
ALTER TABLE [dbo].[DangKyHienMau]  WITH CHECK ADD  CONSTRAINT [FK__DangKyHie__maNHM__4BAC3F29] FOREIGN KEY([maNHM])
REFERENCES [dbo].[NguoiHienMau] ([maNHM])
GO
ALTER TABLE [dbo].[DangKyHienMau] CHECK CONSTRAINT [FK__DangKyHie__maNHM__4BAC3F29]
GO
ALTER TABLE [dbo].[DangKyHoTro]  WITH CHECK ADD  CONSTRAINT [FK__DangKyHoT__maDHM__4E88ABD4] FOREIGN KEY([maDHM])
REFERENCES [dbo].[DotHienMau] ([maDHM])
GO
ALTER TABLE [dbo].[DangKyHoTro] CHECK CONSTRAINT [FK__DangKyHoT__maDHM__4E88ABD4]
GO
ALTER TABLE [dbo].[DangKyHoTro]  WITH CHECK ADD FOREIGN KEY([maTNV])
REFERENCES [dbo].[TinhNguyenVien] ([maTNV])
GO
ALTER TABLE [dbo].[DanhSachCongViec]  WITH CHECK ADD  CONSTRAINT [FK__DanhSachC__maDHM__3B75D760] FOREIGN KEY([maDHM])
REFERENCES [dbo].[DotHienMau] ([maDHM])
GO
ALTER TABLE [dbo].[DanhSachCongViec] CHECK CONSTRAINT [FK__DanhSachC__maDHM__3B75D760]
GO
ALTER TABLE [dbo].[DanhSachCongViec]  WITH CHECK ADD FOREIGN KEY([maGD])
REFERENCES [dbo].[GiamDoc] ([maGD])
GO
ALTER TABLE [dbo].[LichSuHienMau]  WITH CHECK ADD  CONSTRAINT [FK__LichSuHie__maDHM__4316F928] FOREIGN KEY([maDHM])
REFERENCES [dbo].[DotHienMau] ([maDHM])
GO
ALTER TABLE [dbo].[LichSuHienMau] CHECK CONSTRAINT [FK__LichSuHie__maDHM__4316F928]
GO
ALTER TABLE [dbo].[LichSuHienMau]  WITH CHECK ADD  CONSTRAINT [FK__LichSuHie__maNHM__440B1D61] FOREIGN KEY([maNHM])
REFERENCES [dbo].[NguoiHienMau] ([maNHM])
GO
ALTER TABLE [dbo].[LichSuHienMau] CHECK CONSTRAINT [FK__LichSuHie__maNHM__440B1D61]
GO
ALTER TABLE [dbo].[LichSuHoTro]  WITH CHECK ADD  CONSTRAINT [FK__LichSuHoT__maDHM__46E78A0C] FOREIGN KEY([maDHM])
REFERENCES [dbo].[DotHienMau] ([maDHM])
GO
ALTER TABLE [dbo].[LichSuHoTro] CHECK CONSTRAINT [FK__LichSuHoT__maDHM__46E78A0C]
GO
ALTER TABLE [dbo].[LichSuHoTro]  WITH CHECK ADD FOREIGN KEY([maTNV])
REFERENCES [dbo].[TinhNguyenVien] ([maTNV])
GO
ALTER TABLE [dbo].[PhanHoi]  WITH CHECK ADD  CONSTRAINT [FK__PhanHoi__maNHM__37A5467C] FOREIGN KEY([maNHM])
REFERENCES [dbo].[NguoiHienMau] ([maNHM])
GO
ALTER TABLE [dbo].[PhanHoi] CHECK CONSTRAINT [FK__PhanHoi__maNHM__37A5467C]
GO
ALTER TABLE [dbo].[PhanHoi]  WITH CHECK ADD FOREIGN KEY([maNV])
REFERENCES [dbo].[NhanVienYTe] ([maNV])
GO
ALTER TABLE [dbo].[ThongBaoHienMau]  WITH CHECK ADD  CONSTRAINT [FK__ThongBaoH__maDHM__3F466844] FOREIGN KEY([maDHM])
REFERENCES [dbo].[DotHienMau] ([maDHM])
GO
ALTER TABLE [dbo].[ThongBaoHienMau] CHECK CONSTRAINT [FK__ThongBaoH__maDHM__3F466844]
GO
ALTER TABLE [dbo].[ThongBaoHienMau]  WITH CHECK ADD FOREIGN KEY([maNV])
REFERENCES [dbo].[NhanVienYTe] ([maNV])
GO
ALTER TABLE [dbo].[GiamDoc]  WITH CHECK ADD CHECK  (([sdt] like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'))
GO
ALTER TABLE [dbo].[NguoiHienMau]  WITH CHECK ADD  CONSTRAINT [CK__NguoiHienMa__SDT__24927208] CHECK  (([sdt] like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'))
GO
ALTER TABLE [dbo].[NguoiHienMau] CHECK CONSTRAINT [CK__NguoiHienMa__SDT__24927208]
GO
ALTER TABLE [dbo].[NhanVienYTe]  WITH CHECK ADD CHECK  (([sdt] like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'))
GO
ALTER TABLE [dbo].[TinhNguyenVien]  WITH CHECK ADD CHECK  (([sdt] like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'))
GO
