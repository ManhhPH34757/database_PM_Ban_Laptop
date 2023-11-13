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
