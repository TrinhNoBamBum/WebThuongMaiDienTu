USE [master]
GO
/****** Object:  Database [HTTC_Shop]    Script Date: 1/4/2023 8:29:35 PM ******/
CREATE DATABASE [HTTC_Shop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HTTC_Shop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\HTTC_Shop.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HTTC_Shop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\HTTC_Shop_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [HTTC_Shop] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HTTC_Shop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HTTC_Shop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HTTC_Shop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HTTC_Shop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HTTC_Shop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HTTC_Shop] SET ARITHABORT OFF 
GO
ALTER DATABASE [HTTC_Shop] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [HTTC_Shop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HTTC_Shop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HTTC_Shop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HTTC_Shop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HTTC_Shop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HTTC_Shop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HTTC_Shop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HTTC_Shop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HTTC_Shop] SET  ENABLE_BROKER 
GO
ALTER DATABASE [HTTC_Shop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HTTC_Shop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HTTC_Shop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HTTC_Shop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HTTC_Shop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HTTC_Shop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HTTC_Shop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HTTC_Shop] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [HTTC_Shop] SET  MULTI_USER 
GO
ALTER DATABASE [HTTC_Shop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HTTC_Shop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HTTC_Shop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HTTC_Shop] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [HTTC_Shop] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [HTTC_Shop] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [HTTC_Shop] SET QUERY_STORE = OFF
GO
USE [HTTC_Shop]
GO
/****** Object:  Table [dbo].[ChucNang]    Script Date: 1/4/2023 8:29:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucNang](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TenChucNang] [nvarchar](100) NULL,
	[Machucnang] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTDonHang]    Script Date: 1/4/2023 8:29:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTDonHang](
	[MaDon] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[soluong] [int] NULL,
	[Dongia] [int] NULL,
 CONSTRAINT [PK__CTDonHan__3D89F5682FECE9DD] PRIMARY KEY CLUSTERED 
(
	[MaDon] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 1/4/2023 8:29:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDon] [int] IDENTITY(1,1) NOT NULL,
	[Ngaydat] [datetime] NULL,
	[MaKH] [int] NOT NULL,
	[MaKM] [int] NOT NULL,
	[Tongtien] [int] NULL,
	[status] [nvarchar](50) NULL,
	[DiachiGui] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HangSanXuat]    Script Date: 1/4/2023 8:29:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HangSanXuat](
	[MaHangSx] [int] NOT NULL,
	[TenHang] [nchar](50) NULL,
	[SLsanpham] [int] NULL,
 CONSTRAINT [PK__HangSanX__8C6D281E71529A7A] PRIMARY KEY CLUSTERED 
(
	[MaHangSx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Khachhang]    Script Date: 1/4/2023 8:29:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khachhang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[Hoten] [nvarchar](50) NULL,
	[username] [nchar](50) NULL,
	[matkhau] [nchar](50) NULL,
	[sdt] [char](10) NULL,
	[diachi] [nvarchar](100) NULL,
	[email] [nchar](50) NULL,
	[ngaysinh] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[khuyenmai]    Script Date: 1/4/2023 8:29:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khuyenmai](
	[MaKM] [int] IDENTITY(1,1) NOT NULL,
	[Ngaybatdau] [datetime] NULL,
	[Ngayketthuc] [datetime] NULL,
	[phantramgiam] [int] NULL,
	[Tiengiam] [int] NULL,
	[MoTa] [nvarchar](max) NULL,
	[MaNguoiBan] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KM_KH]    Script Date: 1/4/2023 8:29:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KM_KH](
	[MaKM] [int] NOT NULL,
	[MaKH] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKM] ASC,
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KM_SP]    Script Date: 1/4/2023 8:29:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KM_SP](
	[MaKM] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKM] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiBan]    Script Date: 1/4/2023 8:29:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiBan](
	[MaNguoiBan] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](100) NULL,
	[SDT] [nchar](100) NULL,
	[DiaChi] [nvarchar](500) NULL,
	[Email] [nvarchar](100) NULL,
	[taikhoan] [nchar](100) NULL,
	[matkhau] [nchar](100) NULL,
 CONSTRAINT [PK_NguoiBan] PRIMARY KEY CLUSTERED 
(
	[MaNguoiBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 1/4/2023 8:29:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [int] IDENTITY(1,1) NOT NULL,
	[Hoten] [nvarchar](50) NULL,
	[username] [nchar](50) NULL,
	[matkhau] [nchar](50) NULL,
	[sdt] [char](10) NULL,
	[diachi] [nvarchar](100) NULL,
	[email] [nchar](50) NULL,
	[ngaysinh] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanQuyen]    Script Date: 1/4/2023 8:29:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanQuyen](
	[idNhanVien] [int] NOT NULL,
	[idChucNang] [int] NOT NULL,
	[Ghichu] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[idNhanVien] ASC,
	[idChucNang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sanpham]    Script Date: 1/4/2023 8:29:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sanpham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](200) NULL,
	[Gia] [int] NULL,
	[MaloaiSP] [int] NOT NULL,
	[Sltrongkho] [int] NULL,
	[mota] [nvarchar](max) NULL,
	[MaHangSx] [int] NULL,
	[MaNguoiBan] [int] NULL,
 CONSTRAINT [PK__Sanpham__2725081C9D806D98] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slide_anh]    Script Date: 1/4/2023 8:29:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slide_anh](
	[MaSlide] [int] IDENTITY(1,1) NOT NULL,
	[Linkanh] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSlide] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SP_anh]    Script Date: 1/4/2023 8:29:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SP_anh](
	[MaSP] [int] NOT NULL,
	[Linkanh] [nchar](250) NOT NULL,
	[anhchinh] [bit] NULL,
 CONSTRAINT [PK__SP_anh__2725081CAFCA74EA] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC,
	[Linkanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SP_Danhgia]    Script Date: 1/4/2023 8:29:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SP_Danhgia](
	[Madanhgia_sp] [int] IDENTITY(1,1) NOT NULL,
	[MaSP] [int] NOT NULL,
	[noidung_danhgia] [nvarchar](max) NULL,
	[MaKH] [int] NOT NULL,
	[NgayDanhgia] [date] NULL,
	[Sao] [int] NULL,
	[trangthai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Madanhgia_sp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SP_Theloai]    Script Date: 1/4/2023 8:29:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SP_Theloai](
	[Maloaisp] [int] IDENTITY(1,1) NOT NULL,
	[tentheloai] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Maloaisp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 1/4/2023 8:29:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[tk] [nchar](50) NOT NULL,
	[mk] [nchar](50) NULL,
	[isBuyer] [bit] NULL,
	[isSeller] [bit] NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[tk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChucNang] ON 

INSERT [dbo].[ChucNang] ([id], [TenChucNang], [Machucnang]) VALUES (1, N'Quản lý', N'admin')
INSERT [dbo].[ChucNang] ([id], [TenChucNang], [Machucnang]) VALUES (2, N'Nhân viên', N'staff')
SET IDENTITY_INSERT [dbo].[ChucNang] OFF
GO
INSERT [dbo].[CTDonHang] ([MaDon], [MaSP], [soluong], [Dongia]) VALUES (1, 1, 1, 2425)
INSERT [dbo].[CTDonHang] ([MaDon], [MaSP], [soluong], [Dongia]) VALUES (1, 5, 1, 2462567)
INSERT [dbo].[CTDonHang] ([MaDon], [MaSP], [soluong], [Dongia]) VALUES (2, 2, 1, 24325)
INSERT [dbo].[CTDonHang] ([MaDon], [MaSP], [soluong], [Dongia]) VALUES (2, 5, 1, 245)
INSERT [dbo].[CTDonHang] ([MaDon], [MaSP], [soluong], [Dongia]) VALUES (4, 10, 1, 4352)
INSERT [dbo].[CTDonHang] ([MaDon], [MaSP], [soluong], [Dongia]) VALUES (4, 15, 1, 35346)
INSERT [dbo].[CTDonHang] ([MaDon], [MaSP], [soluong], [Dongia]) VALUES (5, 21, 1, NULL)
INSERT [dbo].[CTDonHang] ([MaDon], [MaSP], [soluong], [Dongia]) VALUES (5, 22, 2, NULL)
INSERT [dbo].[CTDonHang] ([MaDon], [MaSP], [soluong], [Dongia]) VALUES (6, 31, 1, NULL)
INSERT [dbo].[CTDonHang] ([MaDon], [MaSP], [soluong], [Dongia]) VALUES (6, 34, 1, NULL)
INSERT [dbo].[CTDonHang] ([MaDon], [MaSP], [soluong], [Dongia]) VALUES (7, 29, 2, NULL)
INSERT [dbo].[CTDonHang] ([MaDon], [MaSP], [soluong], [Dongia]) VALUES (8, 35, 2, NULL)
INSERT [dbo].[CTDonHang] ([MaDon], [MaSP], [soluong], [Dongia]) VALUES (9, 31, 1, NULL)
INSERT [dbo].[CTDonHang] ([MaDon], [MaSP], [soluong], [Dongia]) VALUES (9, 37, 1, NULL)
INSERT [dbo].[CTDonHang] ([MaDon], [MaSP], [soluong], [Dongia]) VALUES (11, 25, 2, NULL)
INSERT [dbo].[CTDonHang] ([MaDon], [MaSP], [soluong], [Dongia]) VALUES (12, 27, 1, NULL)
INSERT [dbo].[CTDonHang] ([MaDon], [MaSP], [soluong], [Dongia]) VALUES (13, 26, 1, NULL)
INSERT [dbo].[CTDonHang] ([MaDon], [MaSP], [soluong], [Dongia]) VALUES (13, 29, 1, NULL)
INSERT [dbo].[CTDonHang] ([MaDon], [MaSP], [soluong], [Dongia]) VALUES (14, 11, 1, NULL)
INSERT [dbo].[CTDonHang] ([MaDon], [MaSP], [soluong], [Dongia]) VALUES (14, 22, 1, NULL)
INSERT [dbo].[CTDonHang] ([MaDon], [MaSP], [soluong], [Dongia]) VALUES (15, 2, 1, NULL)
INSERT [dbo].[CTDonHang] ([MaDon], [MaSP], [soluong], [Dongia]) VALUES (15, 5, 1, NULL)
INSERT [dbo].[CTDonHang] ([MaDon], [MaSP], [soluong], [Dongia]) VALUES (16, 18, 1, NULL)
INSERT [dbo].[CTDonHang] ([MaDon], [MaSP], [soluong], [Dongia]) VALUES (23, 1, 3, 27490000)
INSERT [dbo].[CTDonHang] ([MaDon], [MaSP], [soluong], [Dongia]) VALUES (24, 1, 1, 27490000)
INSERT [dbo].[CTDonHang] ([MaDon], [MaSP], [soluong], [Dongia]) VALUES (25, 4, 1, 3690000)
INSERT [dbo].[CTDonHang] ([MaDon], [MaSP], [soluong], [Dongia]) VALUES (26, 4, 1, 3690000)
INSERT [dbo].[CTDonHang] ([MaDon], [MaSP], [soluong], [Dongia]) VALUES (28, 2, 3, 20990000)
INSERT [dbo].[CTDonHang] ([MaDon], [MaSP], [soluong], [Dongia]) VALUES (28, 5, 1, 8500000)
GO
SET IDENTITY_INSERT [dbo].[DonHang] ON 

INSERT [dbo].[DonHang] ([MaDon], [Ngaydat], [MaKH], [MaKM], [Tongtien], [status], [DiachiGui]) VALUES (1, CAST(N'2022-11-07T21:37:50.170' AS DateTime), 1, 1, 20053000, N'Đã hoàn thành', N'236, Hoàng Quốc Việt')
INSERT [dbo].[DonHang] ([MaDon], [Ngaydat], [MaKH], [MaKM], [Tongtien], [status], [DiachiGui]) VALUES (2, CAST(N'2022-11-07T21:38:40.470' AS DateTime), 2, 5, 10423000, N'Đã hoàn thành', N'Nông Cống, Thanh Hóa')
INSERT [dbo].[DonHang] ([MaDon], [Ngaydat], [MaKH], [MaKM], [Tongtien], [status], [DiachiGui]) VALUES (4, CAST(N'2022-10-20T00:00:00.000' AS DateTime), 5, 2, 15053000, N'Đã hoàn thành', N'Thừa Thiên - Huế')
INSERT [dbo].[DonHang] ([MaDon], [Ngaydat], [MaKH], [MaKM], [Tongtien], [status], [DiachiGui]) VALUES (5, CAST(N'2022-10-21T00:00:00.000' AS DateTime), 3, 1, 29470000, N'Chờ xét duyệt', N'Yên Thành, Nghệ An')
INSERT [dbo].[DonHang] ([MaDon], [Ngaydat], [MaKH], [MaKM], [Tongtien], [status], [DiachiGui]) VALUES (6, CAST(N'2022-09-05T00:00:00.000' AS DateTime), 4, 3, 19340000, N'Chờ xét duyệt', N'Thanh Miện, Hải Dương')
INSERT [dbo].[DonHang] ([MaDon], [Ngaydat], [MaKH], [MaKM], [Tongtien], [status], [DiachiGui]) VALUES (7, CAST(N'2022-08-10T00:00:00.000' AS DateTime), 9, 4, 940000, N'Chờ xét duyệt', N'Đô Lương, Nghệ An')
INSERT [dbo].[DonHang] ([MaDon], [Ngaydat], [MaKH], [MaKM], [Tongtien], [status], [DiachiGui]) VALUES (8, CAST(N'2022-11-05T00:00:00.000' AS DateTime), 6, 2, 20485000, N'Chờ xét duyệt', N'Nam Đàn, Nghệ An')
INSERT [dbo].[DonHang] ([MaDon], [Ngaydat], [MaKH], [MaKM], [Tongtien], [status], [DiachiGui]) VALUES (9, CAST(N'2022-11-01T00:00:00.000' AS DateTime), 8, 4, 10000000, N'Chờ xét duyệt', N'Sông Hiến, Cao Bằng')
INSERT [dbo].[DonHang] ([MaDon], [Ngaydat], [MaKH], [MaKM], [Tongtien], [status], [DiachiGui]) VALUES (10, CAST(N'2022-11-02T00:00:00.000' AS DateTime), 9, 2, 1038000, N'Chờ xét duyệt', N'Hoằng Hóa, Thanh Hóa')
INSERT [dbo].[DonHang] ([MaDon], [Ngaydat], [MaKH], [MaKM], [Tongtien], [status], [DiachiGui]) VALUES (11, CAST(N'2022-10-05T00:00:00.000' AS DateTime), 1, 5, 10283000, N'Chờ xét duyệt', N'Gia Viễn, Ninh Bình')
INSERT [dbo].[DonHang] ([MaDon], [Ngaydat], [MaKH], [MaKM], [Tongtien], [status], [DiachiGui]) VALUES (12, CAST(N'2022-11-04T00:00:00.000' AS DateTime), 5, 2, 10930000, N'Chờ xét duyệt', N'New York, Mỹ')
INSERT [dbo].[DonHang] ([MaDon], [Ngaydat], [MaKH], [MaKM], [Tongtien], [status], [DiachiGui]) VALUES (13, CAST(N'2022-10-25T00:00:00.000' AS DateTime), 6, 2, 1029300, N'Chờ xét duyệt', N'Đan Phượng, Hà Nội')
INSERT [dbo].[DonHang] ([MaDon], [Ngaydat], [MaKH], [MaKM], [Tongtien], [status], [DiachiGui]) VALUES (14, CAST(N'2022-05-07T00:00:00.000' AS DateTime), 3, 5, 10293000, N'Chờ xét duyệt', N'Hoài Đức, Hà Nội')
INSERT [dbo].[DonHang] ([MaDon], [Ngaydat], [MaKH], [MaKM], [Tongtien], [status], [DiachiGui]) VALUES (15, CAST(N'2022-06-10T00:00:00.000' AS DateTime), 2, 4, NULL, N'Chờ xét duyệt', N'Thanh Chương, Nghệ An')
INSERT [dbo].[DonHang] ([MaDon], [Ngaydat], [MaKH], [MaKM], [Tongtien], [status], [DiachiGui]) VALUES (16, CAST(N'2022-07-31T00:00:00.000' AS DateTime), 9, 2, NULL, N'Chờ xét duyệt', N'Hòa An, Cao Bằng')
INSERT [dbo].[DonHang] ([MaDon], [Ngaydat], [MaKH], [MaKM], [Tongtien], [status], [DiachiGui]) VALUES (21, CAST(N'2022-11-08T15:28:07.533' AS DateTime), 8, 0, 27490000, N'Chờ xét duyệt', N'Hậu Thành, yên Thành Nghệ An')
INSERT [dbo].[DonHang] ([MaDon], [Ngaydat], [MaKH], [MaKM], [Tongtien], [status], [DiachiGui]) VALUES (22, CAST(N'2022-11-08T15:30:41.250' AS DateTime), 8, 0, 27490000, N'Chờ xét duyệt', N'Hậu Thành, yên Thành Nghệ An')
INSERT [dbo].[DonHang] ([MaDon], [Ngaydat], [MaKH], [MaKM], [Tongtien], [status], [DiachiGui]) VALUES (23, CAST(N'2022-11-08T15:33:09.960' AS DateTime), 8, 0, 82470000, N'Chờ xét duyệt', N'Hậu Thành, yên Thành Nghệ An')
INSERT [dbo].[DonHang] ([MaDon], [Ngaydat], [MaKH], [MaKM], [Tongtien], [status], [DiachiGui]) VALUES (24, CAST(N'2022-11-08T20:52:25.323' AS DateTime), 8, 0, 19243000, N'Chờ xét duyệt', N'Hậu Thành, yên Thành Nghệ An')
INSERT [dbo].[DonHang] ([MaDon], [Ngaydat], [MaKH], [MaKM], [Tongtien], [status], [DiachiGui]) VALUES (25, CAST(N'2022-11-30T00:11:33.610' AS DateTime), 8, 0, 2952000, N'Chờ xét duyệt', N'Hậu Thành, yên Thành Nghệ An')
INSERT [dbo].[DonHang] ([MaDon], [Ngaydat], [MaKH], [MaKM], [Tongtien], [status], [DiachiGui]) VALUES (26, CAST(N'2022-12-25T23:33:10.547' AS DateTime), 8, 0, 2952000, N'Chờ xét duyệt', N'Hậu Thành, yên Thành Nghệ An')
INSERT [dbo].[DonHang] ([MaDon], [Ngaydat], [MaKH], [MaKM], [Tongtien], [status], [DiachiGui]) VALUES (28, CAST(N'2022-12-26T09:51:55.293' AS DateTime), 8, 0, 52579000, N'Đã hoàn thành', N'Hậu Thành, yên Thành Nghệ An')
SET IDENTITY_INSERT [dbo].[DonHang] OFF
GO
INSERT [dbo].[HangSanXuat] ([MaHangSx], [TenHang], [SLsanpham]) VALUES (1, N'Apple                                             ', NULL)
INSERT [dbo].[HangSanXuat] ([MaHangSx], [TenHang], [SLsanpham]) VALUES (2, N'Samsung                                           ', NULL)
INSERT [dbo].[HangSanXuat] ([MaHangSx], [TenHang], [SLsanpham]) VALUES (3, N'Vivo                                              ', NULL)
INSERT [dbo].[HangSanXuat] ([MaHangSx], [TenHang], [SLsanpham]) VALUES (4, N'Xiaomi                                            ', NULL)
INSERT [dbo].[HangSanXuat] ([MaHangSx], [TenHang], [SLsanpham]) VALUES (5, N'Oppo                                              ', NULL)
INSERT [dbo].[HangSanXuat] ([MaHangSx], [TenHang], [SLsanpham]) VALUES (6, N'MSI                                               ', NULL)
INSERT [dbo].[HangSanXuat] ([MaHangSx], [TenHang], [SLsanpham]) VALUES (7, N'HP                                                ', NULL)
INSERT [dbo].[HangSanXuat] ([MaHangSx], [TenHang], [SLsanpham]) VALUES (8, N'Dell                                              ', NULL)
INSERT [dbo].[HangSanXuat] ([MaHangSx], [TenHang], [SLsanpham]) VALUES (9, N'Lenovo                                            ', NULL)
INSERT [dbo].[HangSanXuat] ([MaHangSx], [TenHang], [SLsanpham]) VALUES (10, N'Asus                                              ', NULL)
INSERT [dbo].[HangSanXuat] ([MaHangSx], [TenHang], [SLsanpham]) VALUES (11, N'Acer                                              ', NULL)
GO
SET IDENTITY_INSERT [dbo].[Khachhang] ON 

INSERT [dbo].[Khachhang] ([MaKH], [Hoten], [username], [matkhau], [sdt], [diachi], [email], [ngaysinh]) VALUES (1, N'Nguyễn Thành Công', N'cong123                                           ', N'ajtmjg                                            ', N'0868454609', N'Quảng Trị', N'congnguyen.1801@gmail.com                         ', CAST(N'2001-08-01' AS Date))
INSERT [dbo].[Khachhang] ([MaKH], [Hoten], [username], [matkhau], [sdt], [diachi], [email], [ngaysinh]) VALUES (2, N'Hà Công Quốc Bảo', N'baoha123                                          ', N'bao2341                                           ', N'033455115 ', N'Thanh Hóa', N'quocbao@gmail.com                                 ', CAST(N'2000-01-01' AS Date))
INSERT [dbo].[Khachhang] ([MaKH], [Hoten], [username], [matkhau], [sdt], [diachi], [email], [ngaysinh]) VALUES (3, N'Hoàng Phương Trinh', N'trinhssss                                         ', N'matkhau                                           ', N'035345215 ', N'Hà Tĩnh', N'trinhtrinh@gmail.com                              ', CAST(N'1999-03-04' AS Date))
INSERT [dbo].[Khachhang] ([MaKH], [Hoten], [username], [matkhau], [sdt], [diachi], [email], [ngaysinh]) VALUES (4, N'Hoàng Thị Xuân', N'xuanxuan                                          ', N'1223xuan                                          ', N'03645115  ', N'Hải Phòng', N'xuanxuan@gmail.com                                ', CAST(N'2004-03-04' AS Date))
INSERT [dbo].[Khachhang] ([MaKH], [Hoten], [username], [matkhau], [sdt], [diachi], [email], [ngaysinh]) VALUES (5, N'Văn Mai Hương', N'maihuonng                                         ', N'huongnnn1                                         ', N'033499115 ', N'Huế', N'maihuong@gmail.com                                ', CAST(N'2001-07-07' AS Date))
INSERT [dbo].[Khachhang] ([MaKH], [Hoten], [username], [matkhau], [sdt], [diachi], [email], [ngaysinh]) VALUES (6, N'Lê Văn Lương', N'leluonga                                          ', N'luong123                                          ', N'093456115 ', N'Sơn La', N'leluong@gmail.com                                 ', CAST(N'2003-08-08' AS Date))
INSERT [dbo].[Khachhang] ([MaKH], [Hoten], [username], [matkhau], [sdt], [diachi], [email], [ngaysinh]) VALUES (7, N'Đỗ Thị Lan', N'landolan                                          ', N'landoa                                            ', N'0388455115', N'Quảng Ninh', N'dolan@gmal.com                                    ', CAST(N'2004-03-08' AS Date))
INSERT [dbo].[Khachhang] ([MaKH], [Hoten], [username], [matkhau], [sdt], [diachi], [email], [ngaysinh]) VALUES (8, N'Khổng Phương Anh', N'phuonganh                                         ', N'anhphuong                                         ', N'02255115  ', N'Ninh Bình', N'phuonganh@gmail.com                               ', CAST(N'2001-04-05' AS Date))
INSERT [dbo].[Khachhang] ([MaKH], [Hoten], [username], [matkhau], [sdt], [diachi], [email], [ngaysinh]) VALUES (9, N'Trần Lan Anh', N'lananh134                                         ', N'lanh121123                                        ', N'018239424 ', N'Bình Định', N'lanh123@gmail.com                                 ', CAST(N'1993-11-02' AS Date))
INSERT [dbo].[Khachhang] ([MaKH], [Hoten], [username], [matkhau], [sdt], [diachi], [email], [ngaysinh]) VALUES (11, N'Nguyễn Mạnh Hưng', N'hungkhuc                                          ', N'1                                                 ', N'0358261006', N'Xã Hậu Thành, Huyện Yên Thành, Tỉnh Nghệ An', N'tieuquy123@gmail.com                              ', CAST(N'2022-11-16' AS Date))
INSERT [dbo].[Khachhang] ([MaKH], [Hoten], [username], [matkhau], [sdt], [diachi], [email], [ngaysinh]) VALUES (12, N'Nguyen Duy Hoa', N'123                                               ', N'1                                                 ', N'0358261006', N'Xã Hậu Thành, Huyện Yên Thành, Tỉnh Nghệ An', N'0358261006@zx.com                                 ', CAST(N'2022-11-24' AS Date))
INSERT [dbo].[Khachhang] ([MaKH], [Hoten], [username], [matkhau], [sdt], [diachi], [email], [ngaysinh]) VALUES (13, N'', N'123                                               ', N'1                                                 ', N'0358261006', N'Xã Hậu Thành, Huyện Yên Thành, Tỉnh Nghệ An', N'0358261006@zx.com                                 ', CAST(N'2022-12-11' AS Date))
INSERT [dbo].[Khachhang] ([MaKH], [Hoten], [username], [matkhau], [sdt], [diachi], [email], [ngaysinh]) VALUES (20, N'Nguyễn Văn Cần', N'tititaka                                          ', N'1                                                 ', N'0358261006', N'Xã Hậu Thành, Huyện Yên Thành, Tỉnh Nghệ An', N'trinhcosi2xx@gmail.com                            ', CAST(N'2022-12-30' AS Date))
SET IDENTITY_INSERT [dbo].[Khachhang] OFF
GO
SET IDENTITY_INSERT [dbo].[khuyenmai] ON 

INSERT [dbo].[khuyenmai] ([MaKM], [Ngaybatdau], [Ngayketthuc], [phantramgiam], [Tiengiam], [MoTa], [MaNguoiBan]) VALUES (1, CAST(N'2022-06-06T00:00:00.000' AS DateTime), CAST(N'2022-06-07T00:00:00.000' AS DateTime), 20, 0, N'Khuyến mãi hàng tháng', NULL)
INSERT [dbo].[khuyenmai] ([MaKM], [Ngaybatdau], [Ngayketthuc], [phantramgiam], [Tiengiam], [MoTa], [MaNguoiBan]) VALUES (2, CAST(N'2022-08-09T00:00:00.000' AS DateTime), CAST(N'2022-08-10T00:00:00.000' AS DateTime), 0, 500000, N'Ngày thành lập', NULL)
INSERT [dbo].[khuyenmai] ([MaKM], [Ngaybatdau], [Ngayketthuc], [phantramgiam], [Tiengiam], [MoTa], [MaNguoiBan]) VALUES (3, CAST(N'2022-10-20T00:00:00.000' AS DateTime), CAST(N'2022-10-21T00:00:00.000' AS DateTime), 30, 0, N'Sự kiện ra mắt', NULL)
INSERT [dbo].[khuyenmai] ([MaKM], [Ngaybatdau], [Ngayketthuc], [phantramgiam], [Tiengiam], [MoTa], [MaNguoiBan]) VALUES (4, CAST(N'2022-07-07T00:00:00.000' AS DateTime), CAST(N'2022-07-08T00:00:00.000' AS DateTime), 20, 0, N'Khuyễn mãi hàng tháng', NULL)
INSERT [dbo].[khuyenmai] ([MaKM], [Ngaybatdau], [Ngayketthuc], [phantramgiam], [Tiengiam], [MoTa], [MaNguoiBan]) VALUES (5, CAST(N'2022-08-08T00:00:00.000' AS DateTime), CAST(N'2022-08-09T00:00:00.000' AS DateTime), 20, 0, N'Khuyễn mãi hàng tháng', NULL)
INSERT [dbo].[khuyenmai] ([MaKM], [Ngaybatdau], [Ngayketthuc], [phantramgiam], [Tiengiam], [MoTa], [MaNguoiBan]) VALUES (6, CAST(N'2022-09-09T00:00:00.000' AS DateTime), CAST(N'2022-09-10T00:00:00.000' AS DateTime), 20, 0, N'Khuyễn mãi hàng tháng', NULL)
INSERT [dbo].[khuyenmai] ([MaKM], [Ngaybatdau], [Ngayketthuc], [phantramgiam], [Tiengiam], [MoTa], [MaNguoiBan]) VALUES (8, CAST(N'2022-12-27T00:00:00.000' AS DateTime), CAST(N'2023-01-06T00:00:00.000' AS DateTime), 20, NULL, N'tết dương lịch', NULL)
INSERT [dbo].[khuyenmai] ([MaKM], [Ngaybatdau], [Ngayketthuc], [phantramgiam], [Tiengiam], [MoTa], [MaNguoiBan]) VALUES (9, CAST(N'2023-01-04T00:00:00.000' AS DateTime), CAST(N'2023-01-08T00:00:00.000' AS DateTime), 20, NULL, N'Thích thì giảm thôi', NULL)
INSERT [dbo].[khuyenmai] ([MaKM], [Ngaybatdau], [Ngayketthuc], [phantramgiam], [Tiengiam], [MoTa], [MaNguoiBan]) VALUES (10, CAST(N'2023-01-04T00:00:00.000' AS DateTime), CAST(N'2023-01-14T00:00:00.000' AS DateTime), 20, NULL, N'adu', NULL)
SET IDENTITY_INSERT [dbo].[khuyenmai] OFF
GO
INSERT [dbo].[KM_SP] ([MaKM], [MaSP]) VALUES (1, 4)
INSERT [dbo].[KM_SP] ([MaKM], [MaSP]) VALUES (3, 1)
INSERT [dbo].[KM_SP] ([MaKM], [MaSP]) VALUES (3, 2)
GO
SET IDENTITY_INSERT [dbo].[NguoiBan] ON 

INSERT [dbo].[NguoiBan] ([MaNguoiBan], [HoTen], [SDT], [DiaChi], [Email], [taikhoan], [matkhau]) VALUES (1, N'Nguyễn Đẳng Cấp', N'0358261006                                                                                          ', N'236 Hoàng Quốc Việt', N'trinhcosi2xx@gmail.com', N'trinhno                                                                                             ', N'1                                                                                                   ')
INSERT [dbo].[NguoiBan] ([MaNguoiBan], [HoTen], [SDT], [DiaChi], [Email], [taikhoan], [matkhau]) VALUES (2, N'Nguuyễn Đỉnh Cao', N'0986454250                                                                                          ', N'Quận Nam Từ Liêm', N'xhiu@gmail.com', N'vip10                                                                                               ', N'1                                                                                                   ')
INSERT [dbo].[NguoiBan] ([MaNguoiBan], [HoTen], [SDT], [DiaChi], [Email], [taikhoan], [matkhau]) VALUES (3, N'Lưu Bá Ôn', NULL, N'Xã Hậu Thành, Huyện Yên Thành, Tỉnh Nghệ An', N'trinhcosi2xx@gmail.com', N'KingKong                                                                                            ', N'1                                                                                                   ')
SET IDENTITY_INSERT [dbo].[NguoiBan] OFF
GO
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([MaNV], [Hoten], [username], [matkhau], [sdt], [diachi], [email], [ngaysinh]) VALUES (1, N'Nguyễn Duy Trinh', N'trinhno                                           ', N'123123                                            ', N'0237482946', N'Nghệ An', N'trinhwater@gmail.com                              ', CAST(N'2000-12-27' AS Date))
INSERT [dbo].[NhanVien] ([MaNV], [Hoten], [username], [matkhau], [sdt], [diachi], [email], [ngaysinh]) VALUES (2, N'Đào Đình Huy', N'huypeach                                          ', N'peachy12                                          ', N'0237482941', N'Hải Dương', N'peach11@gmail.com                                 ', CAST(N'2001-03-04' AS Date))
INSERT [dbo].[NhanVien] ([MaNV], [Hoten], [username], [matkhau], [sdt], [diachi], [email], [ngaysinh]) VALUES (3, N'Nông Phương Trang', N'ptrang123                                         ', N'trang11                                           ', N'0293485924', N'Cao Bằng', N'trang62@gmail.com                                 ', CAST(N'2001-06-02' AS Date))
INSERT [dbo].[NhanVien] ([MaNV], [Hoten], [username], [matkhau], [sdt], [diachi], [email], [ngaysinh]) VALUES (4, N'Nguyễn Văn Công', N'nvcong08                                          ', N'123456                                            ', N'0128394621', N'Thanh Hóa', N'vancong@gmailc.om                                 ', CAST(N'2001-05-02' AS Date))
INSERT [dbo].[NhanVien] ([MaNV], [Hoten], [username], [matkhau], [sdt], [diachi], [email], [ngaysinh]) VALUES (5, N'Nguyen Duy Hoa', N'vip                                               ', N'1                                                 ', NULL, NULL, N'trinhcosi2xx@gmail.com                            ', NULL)
INSERT [dbo].[NhanVien] ([MaNV], [Hoten], [username], [matkhau], [sdt], [diachi], [email], [ngaysinh]) VALUES (7, N'Nguyen Duy No', N'Hilua                                             ', N'1                                                 ', NULL, NULL, N'3conga@gmail.com                                  ', NULL)
INSERT [dbo].[NhanVien] ([MaNV], [Hoten], [username], [matkhau], [sdt], [diachi], [email], [ngaysinh]) VALUES (8, N'Nguyen Duy Trinh', N'123                                               ', N'1                                                 ', NULL, NULL, N'trinhcosi2xx@gmail.com                            ', NULL)
INSERT [dbo].[NhanVien] ([MaNV], [Hoten], [username], [matkhau], [sdt], [diachi], [email], [ngaysinh]) VALUES (10, N'Thái Bá Sang', N'phuonganh                                         ', N'anhphuong                                         ', N'0358261006', N'Xã Hậu Thành, Huyện Yên Thành, Tỉnh Nghệ An', N'trinhcosi2xx@gmail.com                            ', CAST(N'2022-11-02' AS Date))
INSERT [dbo].[NhanVien] ([MaNV], [Hoten], [username], [matkhau], [sdt], [diachi], [email], [ngaysinh]) VALUES (11, N'Nguyễn Duy Trinh', N'BayBygirl                                         ', N'1                                                 ', NULL, NULL, N'0358261006@gmail.com                              ', NULL)
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
GO
INSERT [dbo].[PhanQuyen] ([idNhanVien], [idChucNang], [Ghichu]) VALUES (1, 1, NULL)
INSERT [dbo].[PhanQuyen] ([idNhanVien], [idChucNang], [Ghichu]) VALUES (2, 2, NULL)
INSERT [dbo].[PhanQuyen] ([idNhanVien], [idChucNang], [Ghichu]) VALUES (3, 2, NULL)
INSERT [dbo].[PhanQuyen] ([idNhanVien], [idChucNang], [Ghichu]) VALUES (4, 2, NULL)
GO
SET IDENTITY_INSERT [dbo].[Sanpham] ON 

INSERT [dbo].[Sanpham] ([MaSP], [TenSP], [Gia], [MaloaiSP], [Sltrongkho], [mota], [MaHangSx], [MaNguoiBan]) VALUES (1, N'Iphone 13 Pro Max 128GB', 27490000, 1, 20, N'iPhone 13 Pro Max giờ đây đã khoác lên màu xanh lá Alpine Green bí ẩn mà không kém phần sang trọng. Sắc màu mới đem lại cảm nhận mới mẻ mà giúp bạn có thêm nhiều lựa chọn khi sắm sửa cho bản thân một chiếc iPhone cao cấp thế hệ mới. Cầm iPhone 13 Pro Max màu xanh lá trên tay, bạn sẽ có cảm giác như đang sử dụng phiên bản giới hạn của sản phẩm này.
Bước nhảy vọt về thời lượng pin
Dòng iPhone Pro Max luôn được người dùng yêu thích nhờ thời lượng pin siêu dài, tuy nhiên iPhone 13 Pro Max còn làm được nhiều hơn thế. Dung lượng pin lớn hơn, màn hình mới và bộ vi xử lý Apple A15 Bionic tiết kiệm điện hơn giúp nó trở thành chiếc iPhone có thời lượng pin tốt nhất từ trước đến nay.
So với iPhone 12 Pro Max, iPhone 13 Pro Max có thời gian sử dụng dài hơn 2,5 giờ. Bạn sẽ cảm nhận rõ sự khác biệt khi sử dụng thực tế, thời lượng pin iPhone 13 Pro Max thậm chí còn có thể kéo dài đến ngày thứ 3 với nhu cầu sử dụng thông thường.
Sang trọng, lịch lãm và quý phái
iPhone 13 Pro Max có kiểu dáng sang trọng, thời thượng và sự tinh xảo đến từng đường nét. Phần khung máy cứng cáp làm từ thép không gỉ nằm giữa hai mặt kính cao cấp, trong đó phần kính bảo vệ màn hình có chất liệu gốm siêu cứng, vừa tuyệt đẹp, lại vừa vô cùng bền bỉ.
Hơn nữa, điện thoại còn có khả năng chống nước chuẩn IP68, cho phép bạn sử dụng mà không sợ các nguy cơ như đổ nước hay gặp trời mưa. Sẽ có 4 lựa chọn màu sắc dành cho iPhone 13 Pro Max là Xám, Vàng, Trắng và Xanh Sierra, tất cả các màu đều có khí chất riêng biệt, đẳng cấp.
Sức mạnh của hệ thống camera Pro mới
Cả 3 camera trên iPhone 13 Pro Max đều sử dụng cảm biến mới với chất lượng ống kính hàng đầu hiện nay. Nổi bật nhất là camera chính có khẩu độ lên tới f/1.5, kích thước điểm ảnh 1.9um, những con số khó tin đối với một chiếc điện thoại di động, cho hình ảnh và video thiếu sáng tốt hơn bao giờ hết.
', 1, 2)
INSERT [dbo].[Sanpham] ([MaSP], [TenSP], [Gia], [MaloaiSP], [Sltrongkho], [mota], [MaHangSx], [MaNguoiBan]) VALUES (2, N'Samsung Galaxy Z Flip4 128GB', 20990000, 1, 15, N'Với kích thước nhỏ gọn như vậy thì máy dễ dàng nằm gọn trong lòng bàn tay, đây được xem là một sản phẩm rất thích hợp dành cho những bạn nữ mong muốn có cho mình một thiết bị có màn hình lớn nhưng vẫn đáp ứng được tiêu chí nhỏ gọn và thời trang.

Một điểm hay trên phiên bản này là về giao diện chụp ảnh chia đôi màn hình đã hỗ trợ trên ứng dụng camera bên thứ 3, giờ đây khung hình hiển thị màn chụp sẽ được thu nhỏ và nằm vừa vặn bên trong nửa màn hình còn lại để mình dễ dàng theo dõi chất lượng ảnh, từ đó có thể chủ động hơn trong việc điều chỉnh góc chụp.', 2, 2)
INSERT [dbo].[Sanpham] ([MaSP], [TenSP], [Gia], [MaloaiSP], [Sltrongkho], [mota], [MaHangSx], [MaNguoiBan]) VALUES (4, N'Xiaomi Redmi 10 4GB-128GB 2021', 3690000, 1, 22, N'Dòng điện thoại Redmi yêu thích của bạn đã quay trở lại, Redmi 10 với bộ tứ camera 50MP AI đột phá, màn hình 90Hz siêu mượt và cấu hình “phá đảo” trong tầm giá, chắc chắn sẽ tiếp tục là lựa chọn hàng đầu ở phân khúc smartphone giá rẻ.', 4, NULL)
INSERT [dbo].[Sanpham] ([MaSP], [TenSP], [Gia], [MaloaiSP], [Sltrongkho], [mota], [MaHangSx], [MaNguoiBan]) VALUES (5, N'Samsung Galaxy A53 5G 256GB ', 8500000, 1, 10, N'Tận hưởng hiệu năng mạnh mẽ Exynos 1280, màn hình siêu mượt 120Hz và hệ thống camera 64MP chống rung OIS cải tiến. Tất cả được hội tụ bên trong Samsung Galaxy A53 5G gọn nhẹ, tươi trẻ và đầy màu sắc cá tính. Phiên bản bộ nhớ 256GB độc quyền tại FPT Shop còn giúp bạn lưu trữ nhiều hơn.', 2, 2)
INSERT [dbo].[Sanpham] ([MaSP], [TenSP], [Gia], [MaloaiSP], [Sltrongkho], [mota], [MaHangSx], [MaNguoiBan]) VALUES (10, N'OPPO Reno8 4G 8GB - 256GB', 8500000, 1, 3, N'Với OPPO Reno8, trải nghiệm nhiếp ảnh trên smartphone đã đột phá ranh giới cũ. Sự kết hợp giữa cảm biến camera siêu nhạy IMX709 với ống kính Micro30x giúp chiếc Reno mới nhất hóa thân thành một công cụ chụp ảnh chuyên nghiệp, một chuyên gia chụp chân dung hàng đầu.', 5, NULL)
INSERT [dbo].[Sanpham] ([MaSP], [TenSP], [Gia], [MaloaiSP], [Sltrongkho], [mota], [MaHangSx], [MaNguoiBan]) VALUES (11, N'iPhone 11 64GB', 11500000, 1, 5, N'iPhone 11 với 6 phiên bản màu sắc, camera có khả năng chụp ảnh vượt trội, thời lượng pin cực dài và bộ vi xử lý mạnh nhất từ trước đến nay sẽ mang đến trải nghiệm tuyệt vời dành cho bạn.', 1, NULL)
INSERT [dbo].[Sanpham] ([MaSP], [TenSP], [Gia], [MaloaiSP], [Sltrongkho], [mota], [MaHangSx], [MaNguoiBan]) VALUES (15, N'Laptop Lenovo Yoga Slim 7 Pro 14IHU5O i5 11300H/16GB/512GB/14"2.8K OLED/Win 11', 21500000, 8, 2, N'Hoàn thành công việc nhanh chóng với Lenovo Yoga Slim 7 Pro 14IHU5 O, chiếc laptop doanh nhân đẳng cấp được công nhận chuẩn Intel Evo, hội tụ cả tốc độ nhanh chóng, thời lượng pin dài và hình ảnh tuyệt đẹp. Với màn hình OLED 2.8K đẹp hoàn mỹ và âm thanh nổi Dolby Atmos, Yoga Slim 7 Pro còn là một trung tâm giải trí di động đích thực.', 9, NULL)
INSERT [dbo].[Sanpham] ([MaSP], [TenSP], [Gia], [MaloaiSP], [Sltrongkho], [mota], [MaHangSx], [MaNguoiBan]) VALUES (18, N'Laptop Acer Nitro Gaming AN515-57-54MV i5 11400H/8GB/512GB/15.6"FHD/NVIDIA GeForce', 23000000, 8, 3, N'Acer Nitro Gaming AN515-57-54MV là chiếc laptop gaming có mức giá vừa phải nhưng lại sở hữu cấu hình ấn tượng với bộ vi xử lý Intel thế hệ thứ 11 mạnh mẽ và card đồ họa rời RTX 30 series. Diện mạo mới, sức mạnh mới, Nitro 5 sẽ cùng bạn vươn tới những đỉnh cao.', 11, NULL)
INSERT [dbo].[Sanpham] ([MaSP], [TenSP], [Gia], [MaloaiSP], [Sltrongkho], [mota], [MaHangSx], [MaNguoiBan]) VALUES (21, N'Laptop HP 15s-fq2663TU i3 1115G4/4GB/256GB/15.6"HD/Win 11', 10000000, 8, 4, N'HP 15s-fq2663TU là lựa chọn laptop màn hình lớn giá rẻ chạy chip Intel thế hệ thứ 11 hấp dẫn, với hiệu năng đáng tin cậy và ổ SSD tốc độ cực nhanh, sẽ đáp ứng tốt các nhu cầu học tập, làm việc văn phòng của bạn.', 7, NULL)
INSERT [dbo].[Sanpham] ([MaSP], [TenSP], [Gia], [MaloaiSP], [Sltrongkho], [mota], [MaHangSx], [MaNguoiBan]) VALUES (22, N'Laptop MSI Modern 14 B11MOU-1028VN i3 1115G4/8GB/256GB/14"FHD/Win11', 12000000, 8, 6, N'Với mức giá bán ra phải chăng, MSI Modern 14 B11MOU vẫn giữ được cấu hình tốt kết hợp cùng một thiết kế mỏng nhẹ, gọn gàng. Sản phẩm sở hữu màn hình 14 inch sắc nét, bàn phím vận hành nhanh, hiệu quả cùng hệ thống cổng kết nối hiện đại, tiên tiến.', 6, NULL)
INSERT [dbo].[Sanpham] ([MaSP], [TenSP], [Gia], [MaloaiSP], [Sltrongkho], [mota], [MaHangSx], [MaNguoiBan]) VALUES (25, N'Laptop Asus TUF Gaming FX506LHB-HN188W i5 10300H/8GB/512GB/15.6"FHD/GTX 1650 4GB/Win11', 18000000, 8, 3, N'Asus TUF Gaming F15 FX506LHB-HN188W là chiếc laptop gaming giá rẻ với thiết kế tuyệt đẹp, phong cách chuẩn game thủ và cấu hình mạnh mẽ cho cả học tập, công việc cũng như chơi game. Bên cạnh đó là độ bền chuẩn quân đội đã làm nên tên tuổi của dòng TUF.', 10, NULL)
INSERT [dbo].[Sanpham] ([MaSP], [TenSP], [Gia], [MaloaiSP], [Sltrongkho], [mota], [MaHangSx], [MaNguoiBan]) VALUES (26, N'iPad Pro 11 2021 M1 Wi-Fi 128GB', 20000000, 2, 6, N'Mạnh mẽ hơn tất cả những gì bạn từng biết trước đây về một thiết bị di động, iPad Pro M1 2021 với bộ vi xử lý Apple M1 hoàn toàn mới cho tốc độ cực nhanh và khả năng đáp ứng công việc hoàn hảo.', 1, NULL)
INSERT [dbo].[Sanpham] ([MaSP], [TenSP], [Gia], [MaloaiSP], [Sltrongkho], [mota], [MaHangSx], [MaNguoiBan]) VALUES (27, N'Samsung Galaxy Tab S6 Lite 2022 ', 7000000, 2, 8, N'Gặp gỡ Samsung Galaxy Tab S6 Lite 2022 - phiên bản mới với sự nâng cấp mạnh về hiệu năng Snapdragon 720G, cho mọi tác vụ mượt mà, đa nhiệm hoàn hảo từ học tập, làm việc đến giải trí. Sự hỗ trợ của bút S-Pen còn là người bạn tuyệt vời để thỏa thích sáng tạo, tăng hiệu suất công việc.', 2, NULL)
INSERT [dbo].[Sanpham] ([MaSP], [TenSP], [Gia], [MaloaiSP], [Sltrongkho], [mota], [MaHangSx], [MaNguoiBan]) VALUES (29, N'Máy tính để bàn HP ProDesk 400G6 DMPentG6400T4GB/256GBPC-59D82PA', 7000000, 3, 6, N'HP ProDesk 400 G6 DMPentG6400T4GB là case máy tính để bàn với kích thước mini siêu nhỏ, rất gọn gàng trên bàn làm việc hoặc bạn có thể mang đi bất cứ đâu tùy thích. Cấu hình của chiếc máy tính mini này đủ để làm việc văn phòng, duyệt web hay xem phim giải trí.', 7, NULL)
INSERT [dbo].[Sanpham] ([MaSP], [TenSP], [Gia], [MaloaiSP], [Sltrongkho], [mota], [MaHangSx], [MaNguoiBan]) VALUES (31, N'Máy tính để bàn Asus S500MC-511400040W i5 11400/8GB/256GB', 12800000, 3, 8, N'Asus S500MC i5 là case máy tính đồng bộ có hiệu năng vô cùng ấn tượng với bộ vi xử lý Intel Core i5 11400, chạy tốt mọi phần mềm nặng. Đồng thời độ bền của Asus S500MC cũng rất đáng tin cậy trong một thiết kế thời trang.', 10, NULL)
INSERT [dbo].[Sanpham] ([MaSP], [TenSP], [Gia], [MaloaiSP], [Sltrongkho], [mota], [MaHangSx], [MaNguoiBan]) VALUES (32, N'iMac 24" 2021 Retina 4.5K M1/8-Core CPU/8-Core GPU/8GB/256GB SSD', 37500000, 3, 5, N'iMac 24" 2021 Retina 4.5K M1 là lựa chọn hoàn hảo thích hợp cho mọi không gian của bạn. Dù là để làm việc hay giải trí, sức mạnh cùng phong cách của iMac cũng mang đến sự thú vị và những giá trị riêng biệt chỉ có ở Apple.', 1, NULL)
INSERT [dbo].[Sanpham] ([MaSP], [TenSP], [Gia], [MaloaiSP], [Sltrongkho], [mota], [MaHangSx], [MaNguoiBan]) VALUES (33, N'Mac mini 2020 M1 256GB SSD MGNR3SA/A', 20000000, 3, 6, N'Bộ vi xử lý mới Apple M1 đưa Mac mini 2020 lên một đẳng cấp hoàn toàn khác biệt. Sẵn sàng làm việc, giải trí và sáng tạo trên chiếc máy tính để bàn siêu nhỏ gọn Mac Mini M1 với tốc độ, sức mạnh vượt xa trí tưởng tượng của bạn.', 1, NULL)
INSERT [dbo].[Sanpham] ([MaSP], [TenSP], [Gia], [MaloaiSP], [Sltrongkho], [mota], [MaHangSx], [MaNguoiBan]) VALUES (34, N'Chuột Bluetooth Zadez M371', 330000, 4, 7, N'Chuột Bluetooth Zadez M371 nổi bật với thiết kế sang trọng và hiện đại, phù hợp với mọi không gian làm việc của người dùng. Hơn nữa, chuột máy tính còn có phím bấm Slient, công nghệ Bluetooth 3.0, độ phân giải cao và kiểu dáng siêu mỏng.', NULL, NULL)
INSERT [dbo].[Sanpham] ([MaSP], [TenSP], [Gia], [MaloaiSP], [Sltrongkho], [mota], [MaHangSx], [MaNguoiBan]) VALUES (35, N'Bộ phát Wifi router chuẩn AC1200 ASUS RT-AC1200 V2', 790000, 4, 13, N'Mặc dù chỉ là một bộ định tuyến WiFi, Asus RT-AC1200 v2 vẫn được nhà sản xuất chăm chút tỉ mỉ về thiết kế bên ngoài. Để mang lại một kiểu dáng sang trọng và nổi bật, toàn bộ khung vỏ của router đều được hoàn thiện bằng nhựa nhám màu đen với các họa tiết nổi khối cắt ngang trên bề mặt. Thiết kế này giúp cho Asus RT-AC1200 v2 dễ dàng phối hợp với các đồ nội thất khác trong nhà. Ngoài ra, chất liệu nhựa nhám cũng giúp bộ định tuyến WiFi dễ dàng vệ sinh, ít bám bụi bẩn và tỏa nhiệt tốt.', NULL, NULL)
INSERT [dbo].[Sanpham] ([MaSP], [TenSP], [Gia], [MaloaiSP], [Sltrongkho], [mota], [MaHangSx], [MaNguoiBan]) VALUES (36, N'Tai nghe AirPods Pro 2021', 5000000, 4, 4, N'AirPods Pro 2021 sẽ giúp bạn cảm nhận trọn vẹn những giá trị làm nên tên tuổi của dòng tai nghe Apple như sự tinh xảo, độ nhỏ gọn và tính đa dụng thông qua hộp sạc đặc trưng. Sản phẩm sử dụng chip H1 thông minh và tăng cường chất âm thông qua Adaptive EQ. Những cải tiến hiệu quả trong phiên bản mới giúp AirPods Pro 2021 tương thích tốt với công nghệ sạc MagSafe.', 1, NULL)
INSERT [dbo].[Sanpham] ([MaSP], [TenSP], [Gia], [MaloaiSP], [Sltrongkho], [mota], [MaHangSx], [MaNguoiBan]) VALUES (37, N'Iphone 13 Pro Max 128GB', 10000000, 5, 1, N'Còn mới 98%', NULL, NULL)
INSERT [dbo].[Sanpham] ([MaSP], [TenSP], [Gia], [MaloaiSP], [Sltrongkho], [mota], [MaHangSx], [MaNguoiBan]) VALUES (41, N'OKADK', 100000, 2, 1, N'dhadjádkjád', NULL, NULL)
INSERT [dbo].[Sanpham] ([MaSP], [TenSP], [Gia], [MaloaiSP], [Sltrongkho], [mota], [MaHangSx], [MaNguoiBan]) VALUES (42, N'CONCA', 100000, 1, NULL, N'FGADG', 2, NULL)
INSERT [dbo].[Sanpham] ([MaSP], [TenSP], [Gia], [MaloaiSP], [Sltrongkho], [mota], [MaHangSx], [MaNguoiBan]) VALUES (43, N'chim chuột', 100000, 1, NULL, N'ydys', 1, NULL)
INSERT [dbo].[Sanpham] ([MaSP], [TenSP], [Gia], [MaloaiSP], [Sltrongkho], [mota], [MaHangSx], [MaNguoiBan]) VALUES (44, N'IPHON1', 100000, 1, NULL, N'SGF', 1, NULL)
INSERT [dbo].[Sanpham] ([MaSP], [TenSP], [Gia], [MaloaiSP], [Sltrongkho], [mota], [MaHangSx], [MaNguoiBan]) VALUES (45, N'HFDHSGF', 12, 1, NULL, N'DSFJSDÌ', 1, NULL)
INSERT [dbo].[Sanpham] ([MaSP], [TenSP], [Gia], [MaloaiSP], [Sltrongkho], [mota], [MaHangSx], [MaNguoiBan]) VALUES (46, NULL, NULL, 1, NULL, NULL, 1, NULL)
INSERT [dbo].[Sanpham] ([MaSP], [TenSP], [Gia], [MaloaiSP], [Sltrongkho], [mota], [MaHangSx], [MaNguoiBan]) VALUES (48, N'siuadhsad', NULL, 1, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Sanpham] OFF
GO
SET IDENTITY_INSERT [dbo].[Slide_anh] ON 

INSERT [dbo].[Slide_anh] ([MaSlide], [Linkanh]) VALUES (1, N'bannervip-2.png')
INSERT [dbo].[Slide_anh] ([MaSlide], [Linkanh]) VALUES (2, N'bannervip-3.png')
INSERT [dbo].[Slide_anh] ([MaSlide], [Linkanh]) VALUES (3, N'bannervip-4.png')
INSERT [dbo].[Slide_anh] ([MaSlide], [Linkanh]) VALUES (4, N'anhslidechinh.png')
INSERT [dbo].[Slide_anh] ([MaSlide], [Linkanh]) VALUES (5, N'bannervip-5.png')
INSERT [dbo].[Slide_anh] ([MaSlide], [Linkanh]) VALUES (6, N'bannervip-6.png')
INSERT [dbo].[Slide_anh] ([MaSlide], [Linkanh]) VALUES (7, N'baner3.jpg')
INSERT [dbo].[Slide_anh] ([MaSlide], [Linkanh]) VALUES (8, N'banner.png')
INSERT [dbo].[Slide_anh] ([MaSlide], [Linkanh]) VALUES (9, N'banner2.jpg')
INSERT [dbo].[Slide_anh] ([MaSlide], [Linkanh]) VALUES (10, N'banner4.jpg')
INSERT [dbo].[Slide_anh] ([MaSlide], [Linkanh]) VALUES (11, N'banner5.jpg')
INSERT [dbo].[Slide_anh] ([MaSlide], [Linkanh]) VALUES (12, N'banner6.jpg')
INSERT [dbo].[Slide_anh] ([MaSlide], [Linkanh]) VALUES (13, N'banner7.png')
INSERT [dbo].[Slide_anh] ([MaSlide], [Linkanh]) VALUES (14, N'banner-oppo.jpg')
INSERT [dbo].[Slide_anh] ([MaSlide], [Linkanh]) VALUES (15, N'banner-shopdetail.jpg')
INSERT [dbo].[Slide_anh] ([MaSlide], [Linkanh]) VALUES (16, N'banner-shopdetail1.jpg')
INSERT [dbo].[Slide_anh] ([MaSlide], [Linkanh]) VALUES (17, N'banner-shopdetail2.jpg')
INSERT [dbo].[Slide_anh] ([MaSlide], [Linkanh]) VALUES (18, N'banner-test.jpg')
INSERT [dbo].[Slide_anh] ([MaSlide], [Linkanh]) VALUES (19, N'subbanner1.png')
INSERT [dbo].[Slide_anh] ([MaSlide], [Linkanh]) VALUES (20, N'subbanner2.png')
INSERT [dbo].[Slide_anh] ([MaSlide], [Linkanh]) VALUES (21, N'10.jpg')
SET IDENTITY_INSERT [dbo].[Slide_anh] OFF
GO
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (1, N'anhchinh_1.jpg                                                                                                                                                                                                                                            ', 1)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (1, N'anhphu_1-1.jpg                                                                                                                                                                                                                                            ', 0)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (1, N'anhphu_1-2.png                                                                                                                                                                                                                                            ', 0)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (1, N'anhphu_1-3.jpg                                                                                                                                                                                                                                            ', 0)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (1, N'anhphu_1-4.png                                                                                                                                                                                                                                            ', 0)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (2, N'anhchinh2-0.png                                                                                                                                                                                                                                           ', 1)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (2, N'anhphu_2-1.png                                                                                                                                                                                                                                            ', 0)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (2, N'anhphu_2-2.jpg                                                                                                                                                                                                                                            ', 0)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (2, N'anhphu_2-3.jpg                                                                                                                                                                                                                                            ', 0)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (2, N'anhphu_2-4.jpg                                                                                                                                                                                                                                            ', 0)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (4, N'anhchinh_3.png                                                                                                                                                                                                                                            ', 1)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (4, N'anhphu_3-1.jpg                                                                                                                                                                                                                                            ', 0)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (4, N'anhphu_3-2.jpg                                                                                                                                                                                                                                            ', 0)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (4, N'anhphu_3-3.jpg                                                                                                                                                                                                                                            ', 0)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (4, N'anhphu_3-4.jpg                                                                                                                                                                                                                                            ', 0)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (4, N'anhphu_3-5.jpg                                                                                                                                                                                                                                            ', 0)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (5, N'anhchinh_4.jpg                                                                                                                                                                                                                                            ', 1)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (5, N'anhphu_4-1.jpg                                                                                                                                                                                                                                            ', 0)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (5, N'anhphu_4-2.jpg                                                                                                                                                                                                                                            ', 0)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (5, N'anhphu_4-3.jpg                                                                                                                                                                                                                                            ', 0)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (5, N'anhphu_4-4.jpg                                                                                                                                                                                                                                            ', 0)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (10, N'anhchinh_5.png                                                                                                                                                                                                                                            ', 1)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (10, N'anhphu_5-1.jpg                                                                                                                                                                                                                                            ', 0)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (10, N'anhphu_5-2.jpg                                                                                                                                                                                                                                            ', 0)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (10, N'anhphu_5-3.jpg                                                                                                                                                                                                                                            ', 0)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (10, N'anhphu_5-4.jpg                                                                                                                                                                                                                                            ', 0)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (11, N'anhchinh_6.png                                                                                                                                                                                                                                            ', 1)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (11, N'anhphu_6-1.jpg                                                                                                                                                                                                                                            ', 0)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (11, N'anhphu_6-2.jpg                                                                                                                                                                                                                                            ', 0)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (11, N'anhphu_6-3.jpg                                                                                                                                                                                                                                            ', 0)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (11, N'anhphu_6-4.jpg                                                                                                                                                                                                                                            ', 0)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (15, N'anhchinh_7.png                                                                                                                                                                                                                                            ', 1)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (15, N'anhphu_7-1.jpg                                                                                                                                                                                                                                            ', 0)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (15, N'anhphu_7-2.jpg                                                                                                                                                                                                                                            ', 0)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (15, N'anhphu_7-3.jpg                                                                                                                                                                                                                                            ', 0)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (18, N'anhchinh_8.jpg                                                                                                                                                                                                                                            ', 1)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (18, N'anhphu_8-1.jpg                                                                                                                                                                                                                                            ', 0)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (18, N'anhphu_8-2.jpg                                                                                                                                                                                                                                            ', 0)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (18, N'anhphu_8-3.jpg                                                                                                                                                                                                                                            ', 0)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (21, N'anhchinh_9.jpg                                                                                                                                                                                                                                            ', 1)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (21, N'anhphu_9-1.jpg                                                                                                                                                                                                                                            ', 0)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (21, N'anhphu_9-2.jpg                                                                                                                                                                                                                                            ', 0)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (21, N'anhphu_9-3.jpg                                                                                                                                                                                                                                            ', 0)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (22, N'anhchinh_10.jpg                                                                                                                                                                                                                                           ', 1)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (22, N'anhphu_10-1.jpg                                                                                                                                                                                                                                           ', 0)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (22, N'anhphu_10-12.jpg                                                                                                                                                                                                                                          ', 0)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (22, N'anhphu_10-3.jpg                                                                                                                                                                                                                                           ', 0)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (22, N'anhphu_10-4.jpg                                                                                                                                                                                                                                           ', 0)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (25, N'anhchinh_11.jpg                                                                                                                                                                                                                                           ', 1)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (25, N'anhphu_11-1.jpg                                                                                                                                                                                                                                           ', 0)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (25, N'anhphu_11-2.jpg                                                                                                                                                                                                                                           ', 0)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (25, N'anhphu_11-3.jpg                                                                                                                                                                                                                                           ', 0)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (25, N'anhphu_11-4.jpg                                                                                                                                                                                                                                           ', 0)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (26, N'anhchinh_12.jpg                                                                                                                                                                                                                                           ', 1)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (26, N'anhphu_12-1.jpg                                                                                                                                                                                                                                           ', 0)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (26, N'anhphu_12-2.jpg                                                                                                                                                                                                                                           ', 0)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (26, N'anhphu_12-3.jpg                                                                                                                                                                                                                                           ', 0)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (27, N'anhchinh_13.jpg                                                                                                                                                                                                                                           ', 1)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (27, N'anhphu_13-1.jpg                                                                                                                                                                                                                                           ', 0)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (27, N'anhphu_13-2.jpg                                                                                                                                                                                                                                           ', 0)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (27, N'anhphu_13-3.jpg                                                                                                                                                                                                                                           ', 0)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (29, N'anhchinh_14.jpg                                                                                                                                                                                                                                           ', 1)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (29, N'anhphu_14-1.jpg                                                                                                                                                                                                                                           ', 0)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (29, N'anhphu_14-2.jpg                                                                                                                                                                                                                                           ', 0)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (31, N'anhchinh_15.jpg                                                                                                                                                                                                                                           ', 1)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (31, N'anhphu_15-1.jpg                                                                                                                                                                                                                                           ', 0)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (31, N'anhphu_15-2.jpg                                                                                                                                                                                                                                           ', 0)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (31, N'anhphu_15-3.jpg                                                                                                                                                                                                                                           ', 0)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (32, N'anhchinh_16.jpg                                                                                                                                                                                                                                           ', 1)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (32, N'anhphu_16-2.jpg                                                                                                                                                                                                                                           ', 0)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (32, N'anhphu_16-3.jpg                                                                                                                                                                                                                                           ', 0)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (33, N'anhchinh_17.jpg                                                                                                                                                                                                                                           ', 1)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (33, N'anhphu_17-1.jpg                                                                                                                                                                                                                                           ', 0)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (33, N'anhphu_17-2.jpg                                                                                                                                                                                                                                           ', 0)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (33, N'anhphu_17-3.jpg                                                                                                                                                                                                                                           ', 0)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (34, N'anhchinh_18.jpg                                                                                                                                                                                                                                           ', 1)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (35, N'anhchinh_19.jpg                                                                                                                                                                                                                                           ', 1)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (35, N'anhphu_19-1.jpg                                                                                                                                                                                                                                           ', 0)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (35, N'anhphu_19-2.jpg                                                                                                                                                                                                                                           ', 0)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (36, N'320705328_557679762535150_654594543573845978_n.jpg                                                                                                                                                                                                        ', NULL)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (36, N'anhchinh_20.jpg                                                                                                                                                                                                                                           ', 1)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (36, N'anhphu_20-1.jpg                                                                                                                                                                                                                                           ', 0)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (36, N'anhphu_20-2.png                                                                                                                                                                                                                                           ', 0)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (37, N'anhchinh_1.jpg                                                                                                                                                                                                                                            ', 1)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (37, N'anhphu_1-1.jpg                                                                                                                                                                                                                                            ', 0)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (37, N'anhphu_1-2.png                                                                                                                                                                                                                                            ', 0)
INSERT [dbo].[SP_anh] ([MaSP], [Linkanh], [anhchinh]) VALUES (45, N'anhchinh8219.jpg                                                                                                                                                                                                                                          ', NULL)
GO
SET IDENTITY_INSERT [dbo].[SP_Danhgia] ON 

INSERT [dbo].[SP_Danhgia] ([Madanhgia_sp], [MaSP], [noidung_danhgia], [MaKH], [NgayDanhgia], [Sao], [trangthai]) VALUES (9, 1, N'Sản phẩm đẹp, giao nhanh', 3, CAST(N'2022-09-10' AS Date), 5, 1)
INSERT [dbo].[SP_Danhgia] ([Madanhgia_sp], [MaSP], [noidung_danhgia], [MaKH], [NgayDanhgia], [Sao], [trangthai]) VALUES (10, 1, N'Hàng chính hãng, giao nhanh', 6, CAST(N'2022-10-03' AS Date), 5, 2)
INSERT [dbo].[SP_Danhgia] ([Madanhgia_sp], [MaSP], [noidung_danhgia], [MaKH], [NgayDanhgia], [Sao], [trangthai]) VALUES (11, 4, N'Bền, đẹp, xuất sắc', 7, CAST(N'2022-05-02' AS Date), 5, 3)
INSERT [dbo].[SP_Danhgia] ([Madanhgia_sp], [MaSP], [noidung_danhgia], [MaKH], [NgayDanhgia], [Sao], [trangthai]) VALUES (12, 21, N'Giao nhanh, bền, đẹp, chắc chắn', 8, CAST(N'2021-12-23' AS Date), 5, 1)
INSERT [dbo].[SP_Danhgia] ([Madanhgia_sp], [MaSP], [noidung_danhgia], [MaKH], [NgayDanhgia], [Sao], [trangthai]) VALUES (14, 10, N'Hàng chính hãng, giao nhanh', 7, CAST(N'2022-10-03' AS Date), 5, 1)
INSERT [dbo].[SP_Danhgia] ([Madanhgia_sp], [MaSP], [noidung_danhgia], [MaKH], [NgayDanhgia], [Sao], [trangthai]) VALUES (15, 11, N'Sản phẩm đẹp, giao nhanh', 4, CAST(N'2022-09-10' AS Date), 4, 1)
INSERT [dbo].[SP_Danhgia] ([Madanhgia_sp], [MaSP], [noidung_danhgia], [MaKH], [NgayDanhgia], [Sao], [trangthai]) VALUES (17, 5, N'Hàng chính hãng, giao nhanh', 9, CAST(N'2022-09-10' AS Date), 4, 1)
INSERT [dbo].[SP_Danhgia] ([Madanhgia_sp], [MaSP], [noidung_danhgia], [MaKH], [NgayDanhgia], [Sao], [trangthai]) VALUES (20, 21, N'Giao nhanh, bền, đẹp, chắc chắn', 5, CAST(N'2021-12-23' AS Date), 5, 1)
INSERT [dbo].[SP_Danhgia] ([Madanhgia_sp], [MaSP], [noidung_danhgia], [MaKH], [NgayDanhgia], [Sao], [trangthai]) VALUES (21, 1, N'Hàng chính hãng, giao hàng nhanh, dịch vụ tốt', 6, CAST(N'2022-11-07' AS Date), 5, 1)
INSERT [dbo].[SP_Danhgia] ([Madanhgia_sp], [MaSP], [noidung_danhgia], [MaKH], [NgayDanhgia], [Sao], [trangthai]) VALUES (22, 2, N'Hàng chính hãng, giao hàng nhanh, dịch vụ tốt', 3, CAST(N'2022-11-07' AS Date), 5, 1)
INSERT [dbo].[SP_Danhgia] ([Madanhgia_sp], [MaSP], [noidung_danhgia], [MaKH], [NgayDanhgia], [Sao], [trangthai]) VALUES (23, 4, N'Hàng chính hãng, giao hàng nhanh, dịch vụ tốt', 2, CAST(N'2022-11-07' AS Date), 5, 1)
INSERT [dbo].[SP_Danhgia] ([Madanhgia_sp], [MaSP], [noidung_danhgia], [MaKH], [NgayDanhgia], [Sao], [trangthai]) VALUES (24, 5, N'Hàng chính hãng, giao hàng nhanh, dịch vụ tốt', 7, CAST(N'2022-11-07' AS Date), 5, 1)
INSERT [dbo].[SP_Danhgia] ([Madanhgia_sp], [MaSP], [noidung_danhgia], [MaKH], [NgayDanhgia], [Sao], [trangthai]) VALUES (25, 11, N'Hàng chính hãng, dịch vụ tốt', 2, CAST(N'2022-11-07' AS Date), 5, 1)
INSERT [dbo].[SP_Danhgia] ([Madanhgia_sp], [MaSP], [noidung_danhgia], [MaKH], [NgayDanhgia], [Sao], [trangthai]) VALUES (26, 15, N'Hàng chính hãng, giao hàng nhanh, dịch vụ tốt', 4, CAST(N'2022-11-07' AS Date), 5, 1)
INSERT [dbo].[SP_Danhgia] ([Madanhgia_sp], [MaSP], [noidung_danhgia], [MaKH], [NgayDanhgia], [Sao], [trangthai]) VALUES (27, 18, N'Hàng chính hãng, giao hàng nhanh, dịch vụ tốt', 7, CAST(N'2022-11-07' AS Date), 5, 1)
INSERT [dbo].[SP_Danhgia] ([Madanhgia_sp], [MaSP], [noidung_danhgia], [MaKH], [NgayDanhgia], [Sao], [trangthai]) VALUES (28, 21, N'Hàng chính hãng, giao hàng nhanh, dịch vụ tốt', 1, CAST(N'2022-11-07' AS Date), 5, 1)
INSERT [dbo].[SP_Danhgia] ([Madanhgia_sp], [MaSP], [noidung_danhgia], [MaKH], [NgayDanhgia], [Sao], [trangthai]) VALUES (29, 22, N'Hàng chính hãng, giao hàng nhanh, dịch vụ tốt', 8, CAST(N'2022-11-07' AS Date), 5, 1)
INSERT [dbo].[SP_Danhgia] ([Madanhgia_sp], [MaSP], [noidung_danhgia], [MaKH], [NgayDanhgia], [Sao], [trangthai]) VALUES (30, 25, N'Hàng chính hãng, giao hàng nhanh, dịch vụ tốt', 2, CAST(N'2022-11-07' AS Date), 5, 1)
INSERT [dbo].[SP_Danhgia] ([Madanhgia_sp], [MaSP], [noidung_danhgia], [MaKH], [NgayDanhgia], [Sao], [trangthai]) VALUES (31, 26, N'Hàng chính hãng,  dịch vụ tốt', 3, CAST(N'2022-11-07' AS Date), 5, 1)
INSERT [dbo].[SP_Danhgia] ([Madanhgia_sp], [MaSP], [noidung_danhgia], [MaKH], [NgayDanhgia], [Sao], [trangthai]) VALUES (32, 27, N'Hàng chính hãng, giao hàng nhanh, dịch vụ tốt', 4, CAST(N'2022-11-07' AS Date), 5, 1)
INSERT [dbo].[SP_Danhgia] ([Madanhgia_sp], [MaSP], [noidung_danhgia], [MaKH], [NgayDanhgia], [Sao], [trangthai]) VALUES (33, 29, N'Hàng chính hãng, giao hàng nhanh, dịch vụ tốt', 5, CAST(N'2022-11-07' AS Date), 5, 1)
INSERT [dbo].[SP_Danhgia] ([Madanhgia_sp], [MaSP], [noidung_danhgia], [MaKH], [NgayDanhgia], [Sao], [trangthai]) VALUES (34, 31, N'Hàng chính hãng, giao hàng nhanh, dịch vụ tốt', 6, CAST(N'2022-11-07' AS Date), 5, 1)
INSERT [dbo].[SP_Danhgia] ([Madanhgia_sp], [MaSP], [noidung_danhgia], [MaKH], [NgayDanhgia], [Sao], [trangthai]) VALUES (35, 32, N'Hàng chính hãng, giao hàng nhanh, dịch vụ tốt', 7, CAST(N'2022-11-07' AS Date), 5, 1)
INSERT [dbo].[SP_Danhgia] ([Madanhgia_sp], [MaSP], [noidung_danhgia], [MaKH], [NgayDanhgia], [Sao], [trangthai]) VALUES (36, 33, N'Hàng chính hãng, giao hàng nhanh', 8, CAST(N'2022-11-07' AS Date), 5, 1)
INSERT [dbo].[SP_Danhgia] ([Madanhgia_sp], [MaSP], [noidung_danhgia], [MaKH], [NgayDanhgia], [Sao], [trangthai]) VALUES (37, 34, N'Hàng chính hãng, giao hàng nhanh, dịch vụ tốt', 9, CAST(N'2022-11-07' AS Date), 5, 1)
INSERT [dbo].[SP_Danhgia] ([Madanhgia_sp], [MaSP], [noidung_danhgia], [MaKH], [NgayDanhgia], [Sao], [trangthai]) VALUES (38, 35, N'Hàng chính hãng, giao hàng nhanh, dịch vụ tốt', 2, CAST(N'2022-11-07' AS Date), 5, 1)
INSERT [dbo].[SP_Danhgia] ([Madanhgia_sp], [MaSP], [noidung_danhgia], [MaKH], [NgayDanhgia], [Sao], [trangthai]) VALUES (39, 36, N'Hàng chính hãng, giao hàng nhanh, dịch vụ tốt', 5, CAST(N'2022-11-07' AS Date), 5, 1)
INSERT [dbo].[SP_Danhgia] ([Madanhgia_sp], [MaSP], [noidung_danhgia], [MaKH], [NgayDanhgia], [Sao], [trangthai]) VALUES (40, 37, N'Hàng chính hãng, giao hàng nhanh, dịch vụ tốt', 6, CAST(N'2022-11-07' AS Date), 5, 1)
INSERT [dbo].[SP_Danhgia] ([Madanhgia_sp], [MaSP], [noidung_danhgia], [MaKH], [NgayDanhgia], [Sao], [trangthai]) VALUES (43, 2, N'giá chát quá shop ơi', 8, CAST(N'2022-11-08' AS Date), 4, 1)
INSERT [dbo].[SP_Danhgia] ([Madanhgia_sp], [MaSP], [noidung_danhgia], [MaKH], [NgayDanhgia], [Sao], [trangthai]) VALUES (44, 4, N'rất tốt với đẹp', 8, CAST(N'2022-12-26' AS Date), NULL, 0)
SET IDENTITY_INSERT [dbo].[SP_Danhgia] OFF
GO
SET IDENTITY_INSERT [dbo].[SP_Theloai] ON 

INSERT [dbo].[SP_Theloai] ([Maloaisp], [tentheloai]) VALUES (1, N'Thời Trang')
INSERT [dbo].[SP_Theloai] ([Maloaisp], [tentheloai]) VALUES (2, N'Điện tử')
INSERT [dbo].[SP_Theloai] ([Maloaisp], [tentheloai]) VALUES (3, N'Gia dụng')
INSERT [dbo].[SP_Theloai] ([Maloaisp], [tentheloai]) VALUES (4, N'Điện thoại')
INSERT [dbo].[SP_Theloai] ([Maloaisp], [tentheloai]) VALUES (5, N'Laptop')
INSERT [dbo].[SP_Theloai] ([Maloaisp], [tentheloai]) VALUES (8, N'Bàm Ghế')
SET IDENTITY_INSERT [dbo].[SP_Theloai] OFF
GO
INSERT [dbo].[TaiKhoan] ([tk], [mk], [isBuyer], [isSeller]) VALUES (N'baoha123                                          ', N'bao2341                                           ', 1, NULL)
INSERT [dbo].[TaiKhoan] ([tk], [mk], [isBuyer], [isSeller]) VALUES (N'cong123                                           ', N'ajtmjg                                            ', 1, NULL)
INSERT [dbo].[TaiKhoan] ([tk], [mk], [isBuyer], [isSeller]) VALUES (N'KingKong                                          ', N'1                                                 ', 0, 1)
INSERT [dbo].[TaiKhoan] ([tk], [mk], [isBuyer], [isSeller]) VALUES (N'lananh134                                         ', N'lanh121123                                        ', 1, NULL)
INSERT [dbo].[TaiKhoan] ([tk], [mk], [isBuyer], [isSeller]) VALUES (N'landolan                                          ', N'landoa                                            ', 1, NULL)
INSERT [dbo].[TaiKhoan] ([tk], [mk], [isBuyer], [isSeller]) VALUES (N'leluonga                                          ', N'luong123                                          ', 1, NULL)
INSERT [dbo].[TaiKhoan] ([tk], [mk], [isBuyer], [isSeller]) VALUES (N'maihuonng                                         ', N'huongnnn1                                         ', 1, NULL)
INSERT [dbo].[TaiKhoan] ([tk], [mk], [isBuyer], [isSeller]) VALUES (N'phuonganh                                         ', N'anhphuong                                         ', 1, NULL)
INSERT [dbo].[TaiKhoan] ([tk], [mk], [isBuyer], [isSeller]) VALUES (N'ptrang123                                         ', N'trang11                                           ', NULL, NULL)
INSERT [dbo].[TaiKhoan] ([tk], [mk], [isBuyer], [isSeller]) VALUES (N'tititaka                                          ', N'1                                                 ', 1, 0)
INSERT [dbo].[TaiKhoan] ([tk], [mk], [isBuyer], [isSeller]) VALUES (N'trinhno                                           ', N'123123                                            ', NULL, NULL)
INSERT [dbo].[TaiKhoan] ([tk], [mk], [isBuyer], [isSeller]) VALUES (N'trinhssss                                         ', N'matkhau                                           ', 1, NULL)
GO
ALTER TABLE [dbo].[CTDonHang]  WITH CHECK ADD FOREIGN KEY([MaDon])
REFERENCES [dbo].[DonHang] ([MaDon])
GO
ALTER TABLE [dbo].[CTDonHang]  WITH CHECK ADD  CONSTRAINT [FK__CTDonHang__MaSP__3B75D760] FOREIGN KEY([MaSP])
REFERENCES [dbo].[Sanpham] ([MaSP])
GO
ALTER TABLE [dbo].[CTDonHang] CHECK CONSTRAINT [FK__CTDonHang__MaSP__3B75D760]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[Khachhang] ([MaKH])
GO
ALTER TABLE [dbo].[khuyenmai]  WITH CHECK ADD  CONSTRAINT [fk_km_id_nb] FOREIGN KEY([MaNguoiBan])
REFERENCES [dbo].[NguoiBan] ([MaNguoiBan])
GO
ALTER TABLE [dbo].[khuyenmai] CHECK CONSTRAINT [fk_km_id_nb]
GO
ALTER TABLE [dbo].[KM_KH]  WITH CHECK ADD  CONSTRAINT [fk_hk1] FOREIGN KEY([MaKM])
REFERENCES [dbo].[khuyenmai] ([MaKM])
GO
ALTER TABLE [dbo].[KM_KH] CHECK CONSTRAINT [fk_hk1]
GO
ALTER TABLE [dbo].[KM_KH]  WITH CHECK ADD  CONSTRAINT [fk_hk4] FOREIGN KEY([MaKH])
REFERENCES [dbo].[Khachhang] ([MaKH])
GO
ALTER TABLE [dbo].[KM_KH] CHECK CONSTRAINT [fk_hk4]
GO
ALTER TABLE [dbo].[KM_SP]  WITH CHECK ADD  CONSTRAINT [fk_hk3] FOREIGN KEY([MaKM])
REFERENCES [dbo].[khuyenmai] ([MaKM])
GO
ALTER TABLE [dbo].[KM_SP] CHECK CONSTRAINT [fk_hk3]
GO
ALTER TABLE [dbo].[KM_SP]  WITH CHECK ADD  CONSTRAINT [fk_hk5] FOREIGN KEY([MaSP])
REFERENCES [dbo].[Sanpham] ([MaSP])
GO
ALTER TABLE [dbo].[KM_SP] CHECK CONSTRAINT [fk_hk5]
GO
ALTER TABLE [dbo].[PhanQuyen]  WITH CHECK ADD FOREIGN KEY([idChucNang])
REFERENCES [dbo].[ChucNang] ([id])
GO
ALTER TABLE [dbo].[PhanQuyen]  WITH CHECK ADD FOREIGN KEY([idNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[Sanpham]  WITH CHECK ADD  CONSTRAINT [FK__Sanpham__MaHangS__6FE99F9F] FOREIGN KEY([MaHangSx])
REFERENCES [dbo].[HangSanXuat] ([MaHangSx])
GO
ALTER TABLE [dbo].[Sanpham] CHECK CONSTRAINT [FK__Sanpham__MaHangS__6FE99F9F]
GO
ALTER TABLE [dbo].[Sanpham]  WITH CHECK ADD  CONSTRAINT [fk_maloaisp] FOREIGN KEY([MaloaiSP])
REFERENCES [dbo].[SP_Theloai] ([Maloaisp])
GO
ALTER TABLE [dbo].[Sanpham] CHECK CONSTRAINT [fk_maloaisp]
GO
ALTER TABLE [dbo].[Sanpham]  WITH CHECK ADD  CONSTRAINT [fk_sp_id_nb] FOREIGN KEY([MaNguoiBan])
REFERENCES [dbo].[NguoiBan] ([MaNguoiBan])
GO
ALTER TABLE [dbo].[Sanpham] CHECK CONSTRAINT [fk_sp_id_nb]
GO
ALTER TABLE [dbo].[SP_anh]  WITH CHECK ADD  CONSTRAINT [FK__SP_anh__MaSP__2180FB33] FOREIGN KEY([MaSP])
REFERENCES [dbo].[Sanpham] ([MaSP])
GO
ALTER TABLE [dbo].[SP_anh] CHECK CONSTRAINT [FK__SP_anh__MaSP__2180FB33]
GO
ALTER TABLE [dbo].[SP_Danhgia]  WITH CHECK ADD  CONSTRAINT [fk_htk_SPMAKH] FOREIGN KEY([MaKH])
REFERENCES [dbo].[Khachhang] ([MaKH])
GO
ALTER TABLE [dbo].[SP_Danhgia] CHECK CONSTRAINT [fk_htk_SPMAKH]
GO
ALTER TABLE [dbo].[SP_Danhgia]  WITH CHECK ADD  CONSTRAINT [fk_masp] FOREIGN KEY([MaSP])
REFERENCES [dbo].[Sanpham] ([MaSP])
GO
ALTER TABLE [dbo].[SP_Danhgia] CHECK CONSTRAINT [fk_masp]
GO
USE [master]
GO
ALTER DATABASE [HTTC_Shop] SET  READ_WRITE 
GO
