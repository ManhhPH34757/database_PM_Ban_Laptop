﻿CREATE DATABASE PM_Ban_Laptop
GO

USE PM_Ban_Laptop
GO

CREATE TABLE NhanVien(
	MaNV VARCHAR(20) PRIMARY KEY,
	HoTen NVARCHAR(50) NOT NULL,
	SoDienThoai VARCHAR(13) NOT NULL,
	NgaySinh DATE NOT NULL,
	GioiTinh BIT NOT NULL,
	Email VARCHAR(100) NOT NULL,
	Hinh VARCHAR(255) NOT NULL,
	DiaChi NVARCHAR(255) NOT NULL
)
GO

CREATE TABLE TaiKhoan(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	MaNV VARCHAR(20) FOREIGN KEY REFERENCES dbo.NhanVien(MaNV) ON DELETE CASCADE ON UPDATE CASCADE UNIQUE NOT NULL,
	TenDangNhap VARCHAR(100) NOT NULL,
	MatKhau VARCHAR(100) NOT NULL,
	VaiTro BIT NOT NULL
)
GO

CREATE TABLE PhieuGiamGia(
	MaPG VARCHAR(20) PRIMARY KEY,
	TenPhieu NVARCHAR(30) NOT NULL,
	Han DATE NOT NULL,
	SoLuong INT NOT NULL,
	GiaGiam FLOAT NOT NULL,
	DieuKienHoaDon FLOAT NOT NULL
)
GO

CREATE TABLE KhachHang(
	MaKH VARCHAR(20) PRIMARY KEY,
	HoTen NVARCHAR(50) NOT NULL,
	SoDienThoai VARCHAR(13) NOT NULL,
	NgaySinh DATE NOT NULL,
	GioiTinh BIT NOT NULL,
	Email VARCHAR(100) NOT NULL,
	DiaChi NVARCHAR(255) NOT NULL,
	PhieuGiamGia VARCHAR(20) FOREIGN KEY REFERENCES PhieuGiamGia(MaPG) NULL
)
GO

CREATE TABLE Hang(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	MaHang VARCHAR(20) UNIQUE NOT NULL,
	TenHang VARCHAR(50) NOT NULL,
	HoTro VARCHAR(255) NULL --link page Hãng
)
GO

CREATE TABLE DongLaptop(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	MaDong VARCHAR(20) UNIQUE NOT NULL,
	Hang INT FOREIGN KEY REFERENCES Hang(ID) NOT NULL,
	TenDong NVARCHAR(30) NOT NULL
)
GO 

CREATE TABLE PhanLoai(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	MaLoai VARCHAR(20) UNIQUE NOT NULL,
	TenLoai NVARCHAR(100) NOT NULL,
	MoTa NVARCHAR(255) NULL 
)
GO

CREATE TABLE RAM(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	MaRAM VARCHAR(20) UNIQUE NOT NULL,
	LoaiRAM VARCHAR(50) NOT NULL,
	DungLuong INT NOT NULL, --ĐV: GB
	TocDoRAM INT NOT NULL, --ĐV: MHz
	SoKheCamRoi INT NOT NULL,
	SoKheRAMConLai INT NOT NULL,
	SoRAMOnboard INT NOT NULL,
	HoTroRAMToiDa INT NOT NULL --ĐV: GB
)
GO

CREATE TABLE CPU(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	MaCPU VARCHAR(20) UNIQUE NOT NULL,
	HangCPU VARCHAR(20) NOT NULL,
	CongNghe VARCHAR(20) NOT NULL,
	LoaiCPU VARCHAR(20) NOT NULL,
	TocDoCPU FLOAT NOT NULL, --ĐV: GHz
	TocDoToiDa FLOAT NOT NULL, --ĐV: GHz
	SoNhan INT NOT NULL,
	SoLuong INT NOT NULL, --Số luồng
	BoNhoDem INT NOT NULL --ĐV: MB
)
GO

CREATE TABLE ManHinh(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	MaManHinh VARCHAR(20) UNIQUE NOT NULL,
	KichThuocManHinh FLOAT NOT NULL, --ĐV: inch
	CongNgheManHinh VARCHAR(100) NOT NULL,
	DoPhanGiai VARCHAR(30) NOT NULL, --ĐV: Pixels
	TanSoQuet INT NOT NULL,
	TamNen VARCHAR(30) NOT NULL,
	DoSang INT NOT NULL, --ĐV: nits
	DoPhuMau VARCHAR(50) NOT NULL,
	TiLemanHinh VARCHAR(30) NOT NULL,
)
GO

CREATE TABLE GPU(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	MaGPU VARCHAR(20) UNIQUE NOT NULL,
	LoaiCard VARCHAR(30) NOT NULL,
	Hang VARCHAR(30) NOT NULL
)
GO

CREATE TABLE OCung(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	MaOCung VARCHAR(20) UNIQUE NOT NULL,
	KieuOCung VARCHAR(10) NOT NULL,
	DungLuong INT NOT NULL
)
GO

CREATE TABLE HeDieuHanh(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	MaHeDieuHanh VARCHAR(20) UNIQUE NOT NULL,
	OS VARCHAR(30) NOT NULL,
	Versions VARCHAR(30) NOT NULL,
	Kieu INT NOT NULL --ĐV: bit
)
GO

CREATE TABLE Laptop(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	MaLaptop VARCHAR(20) UNIQUE NOT NULL,
	TenLaptop NVARCHAR(255) NOT NULL,
	PhanLoai INT FOREIGN KEY REFERENCES dbo.PhanLoai(ID) NOT NULL,
	DongLaptop INT FOREIGN KEY REFERENCES DongLaptop(ID) NOT NULL,
	NamSanXuat INT NOT NULL
)
GO

CREATE TABLE MoTa(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	MaLaptop INT FOREIGN KEY REFERENCES Laptop(ID) UNIQUE NOT NULL,
	SoLuongLoa INT NOT NULL,
	Keyboard NVARCHAR(50) NOT NULL,
	TouchPad NVARCHAR(50) NOT NULL,
	CongKetNoi NVARCHAR(100) NOT NULL,
	Wifi NVARCHAR(50) NOT NULL,
	Bluetooth NVARCHAR(50) NOT NULL,
	Webcam NVARCHAR(50) NOT NULL,
	SoLuongQuat INT NOT NULL,
	TrongLuong FLOAT NOT NULL,
	Pin VARCHAR(20) NOT NULL
)
GO 

CREATE TABLE BienThe(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	ID_Laptop INT FOREIGN KEY REFERENCES Laptop(ID) NOT NULL,
	MaBienThe VARCHAR(20) UNIQUE NOT NULL,
	CPU INT FOREIGN KEY REFERENCES dbo.CPU(ID) NOT NULL,
	RAM INT FOREIGN KEY REFERENCES dbo.RAM(ID) NOT NULL,
	ManHinh INT FOREIGN KEY REFERENCES dbo.ManHinh(ID) NOT NULL,
	GPU INT FOREIGN KEY REFERENCES dbo.GPU(ID) NOT NULL,
	OCung INT FOREIGN KEY REFERENCES dbo.OCung(ID) NOT NULL,
	MauSac NVARCHAR(20) NOT NULL,
	HeDieuHanh INT FOREIGN KEY REFERENCES dbo.HeDieuHanh(ID) NOT NULL,
	GiaVon FLOAT NOT NULL,
	GiaBan FLOAT NOT NULL,
	Hinh VARCHAR(255) NOT NULL
)
GO

CREATE TABLE Serial(
	ID int IDENTITY(1,1) PRIMARY KEY,
	ID_BienThe int FOREIGN KEY REFERENCES BienThe(ID) NOT NULL,
	SerialNumber VARCHAR(30) UNIQUE NOT NULL,
	TrangThai BIT NOT NULL
)
GO

CREATE TABLE NhaCungCap(
	MaNCC VARCHAR(20) PRIMARY KEY,
	TenNCC NVARCHAR(100) NOT NULL,
	NguoiPhuTrach NVARCHAR(30) NOT NULL,
	SoDienThoai VARCHAR(13) NOT NULL,
	Email VARCHAR(255) NOT NULL,
	DiaChi NVARCHAR(255) NOT NULL
)
GO

CREATE TABLE HoaDonNhap(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	MaDN VARCHAR(30) UNIQUE NOT NULL,
	NhaCungCap VARCHAR(20) FOREIGN KEY REFERENCES dbo.NhaCungCap(MaNCC) NOT NULL,
	MaNV VARCHAR(20) FOREIGN KEY REFERENCES dbo.NhanVien(MaNV) NOT NULL,
	NgayTao DATE NOT NULL,
	TongTien FLOAT NOT NULL
)
GO

CREATE TABLE ChiTietHDN(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	MaDN VARCHAR(30) FOREIGN KEY REFERENCES dbo.HoaDonNhap(MaDN) NOT NULL,
	ID_Serial INT FOREIGN KEY REFERENCES dbo.Serial(ID) NOT NULL
)
GO

CREATE TABLE DotGiamGia(
	MaDG VARCHAR(20) PRIMARY KEY,
	TenDG NVARCHAR(50) NOT NULL,
	Han DATE NOT NULL,
	GiaGiam FLOAT NOT NULL,
	DieuKienHoaDon FLOAT NOT NULL
)
GO

CREATE TABLE HinhThucVanChuyen(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	HinhThuc NVARCHAR(30) NOT NULL,
	DonVi NVARCHAR(30) NOT NULL,
	GiaVC FLOAT NOT NULL
)
GO

CREATE TABLE HinhThucThanhToan(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	HinhThuc NVARCHAR(30) NOT NULL
)
GO

CREATE TABLE HoaDon(
	MaHD VARCHAR(20) PRIMARY KEY,
	MaDH VARCHAR(20) FOREIGN KEY REFERENCES dbo.DonHang(MaDH) NOT NULL,
	MaKH VARCHAR(20) FOREIGN KEY REFERENCES dbo.KhachHang(MaKH) NOT NULL,
	HinhThucVanChuyen INT FOREIGN KEY REFERENCES dbo.HinhThucVanChuyen(ID) NOT NULL,
	HinhThucThanhToan INT FOREIGN KEY REFERENCES dbo.HinhThucThanhToan(ID) NOT NULL,
	PhieuGiamGia VARCHAR(20) FOREIGN KEY REFERENCES dbo.PhieuGiamGia(MaPG) NULL,
	DotGiamGia VARCHAR(20) FOREIGN KEY REFERENCES dbo.DotGiamGia(MaDG) NULL,
	MaNV VARCHAR(20) FOREIGN KEY REFERENCES dbo.NhanVien(MaNV) NOT NULL,
	NgayTao DATE NOT NULL,
	TongTien FLOAT NOT NULL
)
GO 

CREATE TABLE CTHoaDon(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	MaHD VARCHAR(20) FOREIGN KEY REFERENCES dbo.HoaDon(MaHD) ON DELETE CASCADE NOT NULL,
	ID_Serial INT FOREIGN KEY REFERENCES dbo.Serial(ID) ON DELETE CASCADE NOT NULL
)
GO 

CREATE TABLE PhieuDoi(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	MaPhieuDoi VARCHAR(30) UNIQUE NOT NULL,
	MaKH VARCHAR(20) FOREIGN KEY REFERENCES dbo.KhachHang(MaKH) NOT NULL,
	MaHD VARCHAR(20) FOREIGN KEY REFERENCES dbo.HoaDon(MaHD) NOT NULL,
	NgayTao DATE NOT NULL,
	LiDo NVARCHAR(255) NOT NULL
)
GO

CREATE TABLE CTPhieuDoi(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	ID_PhieuDoi INT FOREIGN KEY REFERENCES dbo.PhieuDoi(ID) ON DELETE CASCADE NOT NULL,
	ID_Serial_Old INT FOREIGN KEY REFERENCES dbo.Serial(ID) NOT NULL,
	ID_Serial_New INT FOREIGN KEY REFERENCES dbo.Serial(ID) NOT NULL
)
GO 
/*
CREATE TABLE LS_HoaDon(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	MaNV VARCHAR(20) FOREIGN KEY REFERENCES dbo.NhanVien(MaNV) NOT NULL,
	MaHoaDon VARCHAR(20) FOREIGN KEY REFERENCES dbo.HoaDon(MaHD) NOT NULL,
	LichSuLamViec NVARCHAR(100) NOT NULL
)
GO

CREATE TABLE LS_LaptopNhap(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	MaNV VARCHAR(20) FOREIGN KEY REFERENCES dbo.NhanVien(MaNV) NOT NULL,
	ID_Serial INT FOREIGN KEY REFERENCES dbo.Serial(ID) ON DELETE CASCADE NOT NULL,
	LichSuLamViec NVARCHAR(100) NOT NULL
)
GO

CREATE TABLE LS_PhieuGiamGia(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	MaNV VARCHAR(20) FOREIGN KEY REFERENCES dbo.NhanVien(MaNV) NOT NULL,
	PhieuGiamGia VARCHAR(20) FOREIGN KEY REFERENCES dbo.PhieuGiamGia(MaPG) NOT NULL,
	LichSuLamViec NVARCHAR(100) NOT NULL
)
GO

CREATE TABLE LS_KhachHang(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	MaNV VARCHAR(20) FOREIGN KEY REFERENCES dbo.NhanVien(MaNV) NOT NULL,
	MaHoaDon VARCHAR(20) FOREIGN KEY REFERENCES dbo.HoaDon(MaHD) NOT NULL,
	LichSuLamViec NVARCHAR(100) NOT NULL
)
GO

CREATE TABLE LS_DonHang(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	MaNV VARCHAR(20) FOREIGN KEY REFERENCES dbo.NhanVien(MaNV) NOT NULL,
	MaHoaDon VARCHAR(20) FOREIGN KEY REFERENCES dbo.HoaDon(MaHD) NOT NULL,
	LichSuLamViec NVARCHAR(100) NOT NULL
)
GO

CREATE TABLE LS_DotGiamGia(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	MaNV VARCHAR(20) FOREIGN KEY REFERENCES dbo.NhanVien(MaNV) NOT NULL,
	MaHoaDon VARCHAR(20) FOREIGN KEY REFERENCES dbo.HoaDon(MaHD) NOT NULL,
	LichSuLamViec NVARCHAR(100) NOT NULL
)
GO

CREATE TABLE LS_PhieuDoi(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	MaNV VARCHAR(20) FOREIGN KEY REFERENCES dbo.NhanVien(MaNV) NOT NULL,
	MaHoaDon VARCHAR(20) FOREIGN KEY REFERENCES dbo.HoaDon(MaHD) NOT NULL,
	LichSuLamViec NVARCHAR(100) NOT NULL
)
GO

CREATE TABLE LS_NhanVien(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	MaNV VARCHAR(20) FOREIGN KEY REFERENCES dbo.NhanVien(MaNV) NOT NULL,
	MaHoaDon VARCHAR(20) FOREIGN KEY REFERENCES dbo.HoaDon(MaHD) NOT NULL,
	LichSuLamViec NVARCHAR(100) NOT NULL
)
GO
*/
