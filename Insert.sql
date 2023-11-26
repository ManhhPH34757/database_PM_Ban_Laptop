USE PM_Ban_Laptop
GO

-- Insert into Hang
INSERT INTO Hang(MaHang, TenHang, HoTro)
VALUES
('MH01', 'Dell', 'www.dell.com'),
('MH02', 'HP', 'www.hp.com'),
('MH03', 'Lenovo', 'www.lenovo.com'),
('MH04', 'Apple', 'www.apple.com'),
('MH05', 'Asus', 'www.asus.com'),
('MH06', 'Acer', 'www.acer.com'),
('MH07', 'Microsoft', 'www.microsoft.com'),
('MH08', 'Sony', 'www.sony.com'),
('MH09', 'Samsung', 'www.samsung.com'),
('MH10', 'LG', 'www.lg.com');
GO

-- Insert into DongLaptop
INSERT INTO DongLaptop(MaDong, Hang, TenDong)
VALUES
('MD01', 1, 'Inspiron'),
('MD02', 1, 'XPS'),
('MD03', 2, 'Pavilion'),
('MD04', 2, 'Envy'),
('MD05', 3, 'ThinkPad'),
('MD06', 3, 'IdeaPad'),
('MD07', 4, 'MacBook Air'),
('MD08', 4, 'MacBook Pro'),
('MD09', 5, 'ROG'),
('MD10', 5, 'ZenBook');
GO

INSERT INTO DongLaptop(MaDong, Hang, TenDong)
VALUES
('DL01', 6, 'Series 1'),
('DL02', 6, 'Series 2'),
('DL03', 7, 'Surface Laptop 4'),
('DL04', 7, 'Surface Laptop 5'),
('DL05', 8, 'Vaio S VJS132X0511S'),
('DL06', 9, 'Galaxy Book3 Pro'),
('DL07', 9, 'Galaxy Book3 Ultra'),
('DL08', 10, 'Gram Style'),
('DL09', 10, 'Gram SuperSlim'),
('DL10', 7, 'Surface Pro 9');
GO


-- Continue with the rest of the tables...
-- Insert into PhanLoai
INSERT INTO PhanLoai(MaLoai, TenLoai, MoTa)
VALUES
('ML01', 'Gaming', 'Designed for high performance gaming with high quality graphics and speed'),
('ML02', 'Business', 'Optimized for business tasks with emphasis on speed and reliability'),
('ML03', 'Education', 'Affordable, easy to use, durable, and resource efficient'),
('ML04', 'Personal', 'For everyday use such as browsing, email, and social media'),
('ML05', 'Multimedia', 'High performance for video editing, graphic design, and other multimedia applications'),
('ML06', 'Portable', 'Lightweight and compact, for computing on the go'),
('ML07', '2-in-1', 'Flexible design that combines the features of laptops and tablets'),
('ML08', 'Workstation', 'High performance laptops for complex and scientific applications'),
('ML09', 'Rugged', 'Designed to operate reliably under harsh usage conditions'),
('ML10', 'Netbook', 'Small, lightweight, legacy-free, and inexpensive laptop computer');
GO

-- Continue with the rest of the tables...
-- Insert into RAM
INSERT INTO RAM(MaRAM, LoaiRAM, DungLuong, TocDoRAM, SoKheCamRoi, SoKheRAMConLai, SoRAMOnboard, HoTroRAMToiDa)
VALUES
('MR01', 'DDR4', 8, 2400, 2, 1, 0, 16),
('MR02', 'DDR4', 16, 2400, 2, 0, 0, 16),
('MR03', 'DDR4', 8, 2666, 2, 1, 0, 16),
('MR04', 'DDR4', 16, 2666, 2, 0, 0, 16),
('MR05', 'DDR4', 32, 2666, 2, 0, 0, 32),
('MR06', 'DDR4', 8, 3200, 2, 1, 0, 16),
('MR07', 'DDR4', 16, 3200, 2, 0, 0, 16),
('MR08', 'DDR4', 32, 3200, 2, 0, 0, 32),
('MR09', 'DDR4', 64, 3200, 4, 0, 0, 64),
('MR10', 'DDR4', 128, 3200, 4, 0, 0, 128);
GO

-- Insert into CPU
INSERT INTO CPU(MaCPU, HangCPU, CongNghe, LoaiCPU, TocDoCPU, TocDoToiDa, SoNhan, SoLuong, BoNhoDem)
VALUES
('MC01', 'Intel', '14nm', 'i3-8100', 3.6, 3.6, 4, 4, 6),
('MC02', 'Intel', '14nm', 'i5-8400', 2.8, 4.0, 6, 6, 9),
('MC03', 'Intel', '14nm', 'i7-8700', 3.2, 4.6, 6, 12, 12),
('MC04', 'Intel', '14nm', 'i7-9700K', 3.6, 4.9, 8, 8, 12),
('MC05', 'Intel', '14nm', 'i9-9900K', 3.6, 5.0, 8, 16, 16),
('MC06', 'AMD', '7nm', 'Ryzen 5 3600', 3.6, 4.2, 6, 12, 32),
('MC07', 'AMD', '7nm', 'Ryzen 7 3700X', 3.6, 4.4, 8, 16, 32),
('MC08', 'AMD', '7nm', 'Ryzen 9 3900X', 3.8, 4.6, 12, 24, 64),
('MC09', 'AMD', '7nm', 'Ryzen 9 3950X', 3.5, 4.7, 16, 32, 64),
('MC10', 'AMD', '7nm', 'Ryzen 9 5950X', 3.4, 4.9, 16, 32, 64);
GO

-- Continue with the rest of the tables...
-- Insert into ManHinh
INSERT INTO ManHinh(MaManHinh, KichThuocManHinh, CongNgheManHinh, DoPhanGiai, TanSoQuet, TamNen, DoSang, DoPhuMau, TiLemanHinh)
VALUES
('MMH01', 13.3, 'IPS', '1920x1080', 60, 'LED', 300, 'sRGB 100%', '16:9'),
('MMH02', 15.6, 'IPS', '1920x1080', 60, 'LED', 300, 'sRGB 100%', '16:9'),
('MMH03', 17.3, 'IPS', '1920x1080', 60, 'LED', 300, 'sRGB 100%', '16:9'),
('MMH04', 13.3, 'IPS', '2560x1600', 60, 'LED', 500, 'sRGB 100%', '16:10'),
('MMH05', 15.4, 'IPS', '2880x1800', 60, 'LED', 500, 'sRGB 100%', '16:10'),
('MMH06', 13.3, 'OLED', '3840x2160', 60, 'LED', 400, 'DCI-P3 100%', '16:9'),
('MMH07', 15.6, 'OLED', '3840x2160', 60, 'LED', 400, 'DCI-P3 100%', '16:9'),
('MMH08', 14, 'IPS', '1920x1080', 120, 'LED', 300, 'sRGB 100%', '16:9'),
('MMH09', 15.6, 'IPS', '1920x1080', 144, 'LED', 300, 'sRGB 100%', '16:9'),
('MMH10', 17.3, 'IPS', '1920x1080', 240, 'LED', 300, 'sRGB 100%', '16:9');
GO

-- Insert into GPU
INSERT INTO GPU(MaGPU, LoaiCard, Hang)
VALUES
('MG01', 'Integrated', 'Intel'),
('MG02', 'Dedicated', 'Nvidia'),
('MG03', 'Integrated', 'AMD'),
('MG04', 'Dedicated', 'AMD'),
('MG05', 'Integrated', 'Intel'),
('MG06', 'Dedicated', 'Nvidia'),
('MG07', 'Integrated', 'AMD'),
('MG08', 'Dedicated', 'AMD'),
('MG09', 'Integrated', 'Intel'),
('MG10', 'Dedicated', 'Nvidia');
GO

-- Insert into OCung
INSERT INTO OCung(MaOCung, KieuOCung, DungLuong)
VALUES
('MOC01', 'HDD', 500),
('MOC02', 'HDD', 1000),
('MOC03', 'SSD', 128),
('MOC04', 'SSD', 256),
('MOC05', 'SSD', 512),
('MOC06', 'SSD', 1024),
('MOC07', 'NVMe', 256),
('MOC08', 'NVMe', 512),
('MOC09', 'NVMe', 1024),
('MOC10', 'NVMe', 2048);
GO

-- Insert into HeDieuHanh
INSERT INTO HeDieuHanh(MaHeDieuHanh, OS, Versions, Kieu)
VALUES
('MHDH01', 'Windows', '10 Home', 64),
('MHDH02', 'Windows', '10 Pro', 64),
('MHDH03', 'Windows', '11 Home', 64),
('MHDH04', 'Windows', '11 Pro', 64),
('MHDH05', 'macOS', 'Mojave', 64),
('MHDH06', 'macOS', 'Catalina', 64),
('MHDH07', 'macOS', 'Big Sur', 64),
('MHDH08', 'macOS', 'Monterey', 64),
('MHDH09', 'Linux', 'Ubuntu', 64),
('MHDH10', 'Linux', 'Fedora', 64);
GO

-- Insert into Laptop
INSERT INTO Laptop(MaLaptop, TenLaptop, PhanLoai, DongLaptop, NamSanXuat)
VALUES
('ML01', 'Dell Inspiron 15 3000', 1, 1, 2020),
('ML02', 'HP Pavilion 15', 1, 3, 2020),
('ML03', 'Lenovo ThinkPad X1 Carbon', 2, 5, 2021),
('ML04', 'Apple MacBook Air', 6, 7, 2021),
('ML05', 'Asus ROG Strix G15', 1, 9, 2022),
('ML06', 'Acer Aspire 5', 4, 6, 2022),
('ML07', 'Microsoft Surface Laptop 4', 6, 7, 2022),
('ML08', 'Sony VAIO SX14', 6, 8, 2023),
('ML09', 'Samsung Galaxy Book Pro 360', 7, 9, 2023),
('ML10', 'LG Gram 17', 6, 10, 2023);
GO

-- Insert into MoTa
INSERT INTO MoTa(MaLaptop, SoLuongLoa, Keyboard, TouchPad, CongKetNoi, Wifi, Bluetooth, Webcam, SoLuongQuat, TrongLuong, Pin)
VALUES
(1, 2, 'Standard', 'Multi-touch', 'HDMI, USB 3.1, USB-C', 'Wi-Fi 5', 'Bluetooth 5.0', '720p', 1, 1.83, '3-cell'),
(2, 2, 'Backlit', 'Multi-touch', 'HDMI, USB 3.1, USB-C', 'Wi-Fi 5', 'Bluetooth 5.0', '720p', 1, 1.85, '3-cell'),
(3, 2, 'Backlit', 'Multi-touch', 'HDMI, USB 3.1, USB-C', 'Wi-Fi 6', 'Bluetooth 5.1', '720p', 1, 1.09, '4-cell'),
(4, 2, 'Backlit', 'Force Touch', '2x Thunderbolt 3', 'Wi-Fi 5', 'Bluetooth 5.0', '720p', 0, 1.29, 'Built-in'),
(5, 2, 'RGB Backlit', 'Multi-touch', 'HDMI, USB 3.2, USB-C', 'Wi-Fi 6', 'Bluetooth 5.1', '720p', 2, 2.30, '4-cell'),
(6, 2, 'Backlit', 'Multi-touch', 'HDMI, USB 3.1, USB-C', 'Wi-Fi 6', 'Bluetooth 5.0', '720p', 1, 1.90, '3-cell'),
(7, 2, 'Backlit', 'Multi-touch', 'USB-C', 'Wi-Fi 6', 'Bluetooth 5.0', '720p', 0, 1.26, 'Built-in'),
(8, 2, 'Backlit', 'Multi-touch', 'HDMI, USB 3.1, USB-C', 'Wi-Fi 6', 'Bluetooth 5.1', '720p', 1, 1.05, '4-cell'),
(9, 2, 'Backlit', 'Multi-touch', 'HDMI, USB 3.2, USB-C', 'Wi-Fi 6', 'Bluetooth 5.1', '720p', 1, 1.04, 'Built-in'),
(10, 2, 'Backlit', 'Multi-touch', 'HDMI, USB 3.1, USB-C', 'Wi-Fi 6', 'Bluetooth 5.1', '720p', 1, 1.35, '2-cell');
GO

-- Continue with the rest of the tables...
-- Insert into BienThe
INSERT INTO BienThe(ID_Laptop, MaBienThe, CPU, RAM, ManHinh, GPU, OCung, MauSac, HeDieuHanh, Gia, Hinh)
VALUES
(1, 'MBT01', 1, 1, 1, 1, 1, 'Black', 1, 8000000, 'image_url'),
(2, 'MBT02', 2, 2, 2, 2, 2, 'Silver', 2, 12000000, 'image_url'),
(3, 'MBT03', 3, 3, 3, 3, 3, 'Grey', 3, 16000000, 'image_url'),
(4, 'MBT04', 4, 4, 4, 4, 4, 'Gold', 4, 20000000, 'image_url'),
(5, 'MBT05', 5, 5, 5, 5, 5, 'Blue', 5, 24000000, 'image_url'),
(6, 'MBT06', 6, 6, 6, 6, 6, 'Red', 6, 28000000, 'image_url'),
(7, 'MBT07', 7, 7, 7, 7, 7, 'White', 7, 32000000, 'image_url'),
(8, 'MBT08', 8, 8, 8, 8, 8, 'Black', 8, 36000000, 'image_url'),
(9, 'MBT09', 9, 9, 9, 9, 9, 'Silver', 9, 40000000, 'image_url'),
(10, 'MBT10', 10, 10, 10, 10, 10, 'Grey', 10, 40000000, 'image_url');
GO

-- Insert into BienThe
INSERT INTO BienThe(ID_Laptop, MaBienThe, CPU, RAM, ManHinh, GPU, OCung, MauSac, HeDieuHanh, Gia, Hinh)
VALUES
(1, 'MBT11', 2, 2, 2, 2, 2, 'Silver', 2, 8000000, 'image_url'),
(1, 'MBT12', 3, 3, 3, 3, 3, 'Grey', 3, 12000000, 'image_url'),
(2, 'MBT13', 4, 4, 4, 4, 4, 'Gold', 4, 16000000, 'image_url'),
(2, 'MBT14', 5, 5, 5, 5, 5, 'Blue', 5, 20000000, 'image_url'),
(3, 'MBT15', 6, 6, 6, 6, 6, 'Red', 6, 24000000, 'image_url'),
(3, 'MBT16', 7, 7, 7, 7, 7, 'White', 7, 28000000, 'image_url'),
(4, 'MBT17', 8, 8, 8, 8, 8, 'Black', 8, 32000000, 'image_url'),
(4, 'MBT18', 9, 9, 9, 9, 9, 'Silver', 9, 36000000, 'image_url'),
(5, 'MBT19', 10, 10, 10, 10, 10, 'Grey', 10, 40000000, 'image_url'),
(5, 'MBT20', 1, 1, 1, 1, 1, 'Black', 1, 8000000, 'image_url'),
(6, 'MBT21', 2, 2, 2, 2, 2, 'Silver', 2, 12000000, 'image_url'),
(6, 'MBT22', 3, 3, 3, 3, 3, 'Grey', 3, 16000000, 'image_url'),
(7, 'MBT23', 4, 4, 4, 4, 4, 'Gold', 4, 20000000, 'image_url'),
(7, 'MBT24', 5, 5, 5, 5, 5, 'Blue', 5, 24000000, 'image_url'),
(8, 'MBT25', 6, 6, 6, 6, 6, 'Red', 6, 28000000, 'image_url'),
(8, 'MBT26', 7, 7, 7, 7, 7, 'White', 7, 32000000, 'image_url'),
(9, 'MBT27', 8, 8, 8, 8, 8, 'Black', 8, 36000000, 'image_url'),
(9, 'MBT28', 9, 9, 9, 9, 9, 'Silver', 9, 40000000, 'image_url'),
(10, 'MBT29', 10, 10, 10, 10, 10, 'Grey', 10, 40000000, 'image_url'),
(10, 'MBT30', 1, 1, 1, 1, 1, 'Black', 1, 8000000, 'image_url');
GO

-- Insert into Serial
INSERT INTO Serial(ID_BienThe, SerialNumber, TrangThai)
VALUES
(1, 'SN01',1),
(2, 'SN02',0),
(3, 'SN03',1),
(4, 'SN04',0),
(5, 'SN05',1),
(6, 'SN06',1),
(7, 'SN07',1),
(8, 'SN08',1),
(9, 'SN09',1),
(10, 'SN10',1);
GO

INSERT INTO Serial(ID_BienThe, SerialNumber, TrangThai)
VALUES
(11, 'SN32',1),
(22, 'SN22',0),
(23, 'SN13',1),
(24, 'SN24',1),
(25, 'SN25',1),
(26, 'SN26',1),
(27, 'SN27',1),
(28, 'SN28',1),
(29, 'SN29',1),
(20, 'SN31',1);
GO



--Insert NhanVien

INSERT INTO dbo.NhanVien
(
    MaNV,
    HoTen,
    SoDienThoai,
    NgaySinh,
    GioiTinh,
    Email,
    Hinh,
    DiaChi
)
VALUES
(   'NV002',        -- MaNV - varchar(20)
    N'Nguyễn Thị Hương Giang',       -- HoTen - nvarchar(50)
    '0369584462',        -- SoDienThoai - varchar(13)
    '2004-08-08', -- NgaySinh - date
    0,      -- GioiTinh - bit
    'giangchan08082004@gmail.com',        -- Email - varchar(100)
    'arr.pgn',        -- Hinh - varchar(255)
    N'Di Trạch'        -- DiaChi - nvarchar(255)
    );

	--Insert TaiKhoan
	SELECT * FROM dbo.TaiKhoan
INSERT dbo.TaiKhoan
(
    MaNV,
    TenDangNhap,
    MatKhau,
    VaiTro
)
VALUES
(   'NV001',  -- MaNV - varchar(20)
    'khai123',  -- TenDangNhap - varchar(100)
    'giang123',  -- MatKhau - varchar(100)
    0 -- VaiTro - bit
    ),
	('NV002','giangchan','giang123',1);


	--Insert PHieuGG
	INSERT INTO dbo.PhieuGiamGia
(
    MaPG,
    TenPhieu,
    Han,
    SoLuong,
    GiaGiam,
    DieuKienHoaDon
)
VALUES
(   'PGG001',        -- MaPG - varchar(20)
    N'Giảm 20%',       -- TenPhieu - nvarchar(30)
    '2023-11-20', -- Han - date
    20,         -- SoLuong - int
    2000000,       -- GiaGiam - float
    20000000        -- DieuKienHoaDon - float
    ),
	('PGG002','Giảm 5% cho đơn từ 15000000','2023-12-10',30,750000,15000000);


	--Insert KhachHang
	INSERT INTO dbo.KhachHang
(
    MaKH,
    HoTen,
    SoDienThoai,
    NgaySinh,
    GioiTinh,
    Email,
    DiaChi
)
VALUES
(   'KH001',        -- MaKH - varchar(20)
    N'Nguyễn Thị Hương Giang',       -- HoTen - nvarchar(50)
    '0369584462',        -- SoDienThoai - varchar(13)
    '2004-08-08', -- NgaySinh - date
    0,      -- GioiTinh - bit
    'giangchan08082004@gmail.com',        -- Email - varchar(100)
    N'113 - Đan Khê'      -- DiaChi - nvarchar(255)
   
    ),
	('KH002',N'Trần Thị Mỹ Duyên','0282828822','2004-02-11',0,'tranduyen204@gmail.com',N'113 Đan Khê'),
	('KH003',N'Nguyễn Mạnh','0928277282','2004-07-27',1,'manh@gmail.com','10 phương canh');


	--
	SELECT * FROM dbo.Serial JOIN dbo.BienThe ON BienThe.ID = Serial.ID_BienThe

	--HinhThucVanChuyen
	INSERT dbo.HinhThucVanChuyen
(
    HinhThuc,
    DonVi,
    GiaVC
)
VALUES
(   N'Giao Hàng Nhanh', -- HinhThuc - nvarchar(30)
    N'Ninja', -- DonVi - nvarchar(30)
    30000  -- GiaVC - float
    ),
	(N'Giao Hàng Tiết Kiệm',N'Giao Hàng Tiết Kiệm',20000);



	--Insert HinhThucThanhToan
	INSERT dbo.HinhThucThanhToan
(
    HinhThuc
)
VALUES
(N'Thanh Toán Khi Nhận Hàng' -- HinhThuc - nvarchar(30)
    ),(N'Thanh Toán Chuyển Khoản');

	-- insert Hoa Don
	SELECT dbo.HoaDon.MaHD FROM dbo.HoaDon
SELECT * FROM dbo.HoaDon
INSERT dbo.HoaDon
(
    MaHD,
    MaKH,
    HinhThucVanChuyen,
    HinhThucThanhToan,
    PhieuGiamGia,
    DotGiamGia,
    MaNV,
    NgayTao,
    TongTien
)
VALUES
(   'HD001',        -- MaHD - varchar(20)
    'KH001',        -- MaKH - varchar(20)
    1,         -- HinhThucVanChuyen - int
    1,         -- HinhThucThanhToan - int
    NULL,        -- PhieuGiamGia - varchar(20)
    NULL,        -- DotGiamGia - varchar(20)
    'NV002',        -- MaNV - varchar(20)
    GETDATE(), -- NgayTao - date
    580000        -- TongTien - float
    ),
	('HD002','KH002',2,1,NULL,NULL,'NV001',GETDATE(),1450000);




	--Insert ChiTietHoaDon
	SELECT * FROM dbo.CTHoaDon
SELECT * FROM dbo.Serial
INSERT dbo.CTHoaDon
(
    MaHD,
    ID_Serial
)
VALUES
(   1, -- MaHD - varchar(20)
    2  -- ID_Serial - int
    ),
	(2,3),
	(2,4);


	--
	

-- insert PhieuDoi

INSERT INTO dbo.PhieuDoi
(
    MaPhieuDoi,
    MaKH,
    MaHD,
    MaNV,
    NgayTao,
    LiDo
)
VALUES
(   'PD001',        -- MaPhieuDoi - varchar(30)
    'KH001',        -- MaKH - varchar(20)
    1,         -- MaHD - int
    'NV002',        -- MaNV - varchar(20)
    GETDATE(), -- NgayTao - date
    N'aa'        -- LiDo - nvarchar(255)
    )


	--insert CT phieudoi

INSERT INTO dbo.CTPhieuDoi
(
    ID_PhieuDoi,
    ID_Serial_Old,
    ID_Serial_New
)
VALUES
(   1, -- ID_PhieuDoi - int
    1, -- ID_Serial_Old - int
    2  -- ID_Serial_New - int
    )

