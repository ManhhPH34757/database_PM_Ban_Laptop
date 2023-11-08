CREATE DATABASE PM_Ban_Laptop
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

CREATE TABLE KhachHang(
	MaKH VARCHAR(20) PRIMARY KEY,
	HoTen NVARCHAR(50) NOT NULL,
	SoDienThoai VARCHAR(13) NOT NULL,
	NgaySinh DATE NOT NULL,
	GioiTinh BIT NOT NULL,
	Email VARCHAR(100) NOT NULL,
	DiaChi NVARCHAR(255) NOT NULL
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

CREATE TABLE Hang(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	TenHang VARCHAR(50) NOT NULL,
	Logo VARCHAR(255) NOT NULL,
	HoTro VARCHAR(255) NULL --link page Hãng
)
GO

CREATE TABLE PhanLoai(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	TenLoai NVARCHAR(100) NOT NULL,
	MoTa NVARCHAR(255) NULL 
)
GO

CREATE TABLE RAM(
	ID INT IDENTITY(1,1) PRIMARY KEY,
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

CREATE TABLE DoHoa(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	LoaiCard VARCHAR(30) NOT NULL,
	Hang VARCHAR(30) NOT NULL
)
GO

CREATE TABLE OCung(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	KieuOCung VARCHAR(10) NOT NULL,
	DungLuong INT NOT NULL
)
GO

CREATE TABLE Keyboard(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	KieuBanPhim VARCHAR(50) NOT NULL,
	BanPhimSo BIT NOT NULL,
	DenBanPhim VARCHAR(30) NOT NULL
)
GO

CREATE TABLE TouchPad(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	LoaiTouchPad NVARCHAR(50) NOT NULL,
	Mota NVARCHAR(255) NULL 
)
GO 

CREATE TABLE HeDieuHanh(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	OS VARCHAR(30) NOT NULL,
	Versions VARCHAR(30) NOT NULL,
	Kieu INT NOT NULL --ĐV: bit
)
GO

CREATE TABLE Laptop(
	SerialNumber VARCHAR(30) PRIMARY KEY,
	TenLaptop NVARCHAR(255) NOT NULL,
	Hang INT FOREIGN KEY REFERENCES dbo.Hang(ID) NOT NULL,
	PhanLoai INT FOREIGN KEY REFERENCES dbo.PhanLoai(ID) NOT NULL,
	XuatXu NVARCHAR(30) NOT NULL,
	NamXB INT NOT NULL,
	NhaCungCap NVARCHAR(50) NOT NULL,
	GiaGoc FLOAT NOT NULL,
	GiaBan FLOAT NOT NULL,
	HeDieuHanh INT FOREIGN KEY REFERENCES dbo.HeDieuHanh(ID) NOT NULL,
	Hinh VARCHAR(255) NOT NULL,
	CPU INT FOREIGN KEY REFERENCES dbo.CPU(ID) NOT NULL,
	RAM INT FOREIGN KEY REFERENCES dbo.RAM(ID) NOT NULL,
	ManHinh INT FOREIGN KEY REFERENCES dbo.ManHinh(ID) NOT NULL,
	DoHoa INT FOREIGN KEY REFERENCES dbo.DoHoa(ID) NOT NULL,
	LuuTru INT FOREIGN KEY REFERENCES dbo.LuuTru(ID) NOT NULL,
	ThoiGianBaoHanh INT NOT NULL,
	TrongLuong INT NOT NULL,
	MauSac NVARCHAR(20) NOT NULL,
	ChatLieu NVARCHAR(30) NOT NULL,
	SoLuongLoa INT NOT NULL,
	Key_Touch INT FOREIGN KEY REFERENCES dbo.Keyboard_TouchPad(ID) NOT NULL,
	CongKetNoi NVARCHAR(255) NOT NULL,
	Wifi NVARCHAR(30) NOT NULL,
	Bluetooth NVARCHAR(30) NOT NULL,
	Webcam NVARCHAR(100) NOT NULL,
	Pin VARCHAR(20) NOT NULL,
	TrangThai BIT NOT NULL, --Active/InActive
	Mota NVARCHAR(255) NOT NULL
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

CREATE TABLE DonHang(
	MaDH VARCHAR(20) PRIMARY KEY,
	MaKH VARCHAR(20) FOREIGN KEY REFERENCES dbo.KhachHang(MaKH) NOT NULL,
	HinhThucVanChuyen INT FOREIGN KEY REFERENCES dbo.HinhThucVanChuyen(ID) NOT NULL,
	HinhThucThanhToan INT FOREIGN KEY REFERENCES dbo.HinhThucThanhToan(ID) NOT NULL,
	PhieuGiamGia 
	DotGiamGia 
	XacNhan BIT NOT NULL,
	TrangThai BIT NOT NULL,
	TongTien FLOAT NOT NULL

)
GO 

CREATE TABLE CTDonHang(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	MaDH VARCHAR(20) FOREIGN KEY REFERENCES dbo.DonHang(MaDH) ON DELETE CASCADE NOT NULL,
	SerialNumber VARCHAR(30) FOREIGN KEY REFERENCES dbo.Laptop(SerialNumber) ON DELETE CASCADE NOT NULL
)
GO 

CREATE TABLE HoaDon(
	MaHD VARCHAR(20) PRIMARY KEY,
	MaDH VARCHAR(20) FOREIGN KEY REFERENCES dbo.DonHang(MaDH) NOT NULL,
	MaKH VARCHAR(20) FOREIGN KEY REFERENCES dbo.KhachHang(MaKH) NOT NULL,
	MaNV VARCHAR(20) FOREIGN KEY REFERENCES dbo.NhanVien(MaNV) NOT NULL,
	NgayTao DATE NOT NULL,
	TongTien FLOAT NOT NULL
)
GO 

CREATE TABLE CTHoaDon(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	MaHD VARCHAR(20) FOREIGN KEY REFERENCES dbo.HoaDon(MaHD) ON DELETE CASCADE NOT NULL,
	SerialNumber VARCHAR(30) FOREIGN KEY REFERENCES dbo.Laptop(SerialNumber) ON DELETE CASCADE NOT NULL
)
GO 

/*
CREATE TABLE PhieuBaoHanh(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	MaKH VARCHAR(20) FOREIGN KEY REFERENCES dbo.KhachHang(MaKH) NOT NULL,
	SerialNumber VARCHAR(30) FOREIGN KEY REFERENCES dbo.Laptop(SerialNumber) NOT NULL,
	MaHD VARCHAR(20) FOREIGN KEY REFERENCES dbo.HoaDon(MaHD) NOT NULL,
	ThoiGianBaoHanh INT NOT NULL,
	DieuKienBaoHanh NVARCHAR(255) NOT NULL
)
GO
*/

CREATE TABLE PhieuDoi(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	MaKH VARCHAR(20) FOREIGN KEY REFERENCES dbo.KhachHang(MaKH) NOT NULL,
	MaHD VARCHAR(20) FOREIGN KEY REFERENCES dbo.HoaDon(MaHD) NOT NULL,
	SerialNumber VARCHAR(30) FOREIGN KEY REFERENCES dbo.Laptop(SerialNumber) NOT NULL,
	NgayTao DATE NOT NULL,
	LiDo NVARCHAR(255) NOT NULL
)
GO

CREATE TABLE LS_HoaDon(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	MaNV VARCHAR(20) FOREIGN KEY REFERENCES dbo.NhanVien(MaNV) NOT NULL,
	MaHoaDon VARCHAR(20) FOREIGN KEY REFERENCES dbo.HoaDon(MaHD) NOT NULL,
	LichSuLamViec NVARCHAR(100) NOT NULL
)
GO

CREATE TABLE LS_Laptop(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	MaNV VARCHAR(20) FOREIGN KEY REFERENCES dbo.NhanVien(MaNV) NOT NULL,
	SerialNumber VARCHAR(30) FOREIGN KEY REFERENCES dbo.Laptop(SerialNumber) NOT NULL,
	LichSuLamViec NVARCHAR(100) NOT NULL
)
GO

CREATE TABLE LS_PhieuGiamGia(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	MaNV VARCHAR(20) FOREIGN KEY REFERENCES dbo.NhanVien(MaNV) NOT NULL,
	PhieuGiamGia VARCHAR(20) FOREIGN KEY REFERENCES  NOT NULL,
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
ab



