﻿USE PM_Ban_Laptop
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
INSERT INTO BienThe(ID_Laptop, MaBienThe, CPU, RAM, ManHinh, GPU, OCung, MauSac, HeDieuHanh, GiaVon, GiaBan, Hinh)
VALUES
(1, 'MBT01', 1, 1, 1, 1, 1, 'Black', 1, 500.00, 550.00, 'image_url'),
(2, 'MBT02', 2, 2, 2, 2, 2, 'Silver', 2, 600.00, 660.00, 'image_url'),
(3, 'MBT03', 3, 3, 3, 3, 3, 'Grey', 3, 700.00, 770.00, 'image_url'),
(4, 'MBT04', 4, 4, 4, 4, 4, 'Gold', 4, 800.00, 880.00, 'image_url'),
(5, 'MBT05', 5, 5, 5, 5, 5, 'Blue', 5, 900.00, 990.00, 'image_url'),
(6, 'MBT06', 6, 6, 6, 6, 6, 'Red', 6, 1000.00, 1100.00, 'image_url'),
(7, 'MBT07', 7, 7, 7, 7, 7, 'White', 7, 1100.00, 1210.00, 'image_url'),
(8, 'MBT08', 8, 8, 8, 8, 8, 'Black', 8, 1200.00, 1320.00, 'image_url'),
(9, 'MBT09', 9, 9, 9, 9, 9, 'Silver', 9, 1300.00, 1430.00, 'image_url'),
(10, 'MBT10', 10, 10, 10, 10, 10, 'Grey', 10, 1400.00, 1540.00, 'image_url');
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
(11, 'SN21',1),
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
SELECT * FROM dbo.Serial
-- Insert into BienThe
INSERT INTO BienThe(ID_Laptop, MaBienThe, CPU, RAM, ManHinh, GPU, OCung, MauSac, HeDieuHanh, GiaVon, GiaBan, Hinh)
VALUES
(1, 'MBT11', 2, 2, 2, 2, 2, 'Silver', 2, 600.00, 660.00, 'image_url'),
(1, 'MBT12', 3, 3, 3, 3, 3, 'Grey', 3, 700.00, 770.00, 'image_url'),
(2, 'MBT13', 4, 4, 4, 4, 4, 'Gold', 4, 800.00, 880.00, 'image_url'),
(2, 'MBT14', 5, 5, 5, 5, 5, 'Blue', 5, 900.00, 990.00, 'image_url'),
(3, 'MBT15', 6, 6, 6, 6, 6, 'Red', 6, 1000.00, 1100.00, 'image_url'),
(3, 'MBT16', 7, 7, 7, 7, 7, 'White', 7, 1100.00, 1210.00, 'image_url'),
(4, 'MBT17', 8, 8, 8, 8, 8, 'Black', 8, 1200.00, 1320.00, 'image_url'),
(4, 'MBT18', 9, 9, 9, 9, 9, 'Silver', 9, 1300.00, 1430.00, 'image_url'),
(5, 'MBT19', 10, 10, 10, 10, 10, 'Grey', 10, 1400.00, 1540.00, 'image_url'),
(5, 'MBT20', 1, 1, 1, 1, 1, 'Black', 1, 500.00, 550.00, 'image_url'),
(6, 'MBT21', 2, 2, 2, 2, 2, 'Silver', 2, 600.00, 660.00, 'image_url'),
(6, 'MBT22', 3, 3, 3, 3, 3, 'Grey', 3, 700.00, 770.00, 'image_url'),
(7, 'MBT23', 4, 4, 4, 4, 4, 'Gold', 4, 800.00, 880.00, 'image_url'),
(7, 'MBT24', 5, 5, 5, 5, 5, 'Blue', 5, 900.00, 990.00, 'image_url'),
(8, 'MBT25', 6, 6, 6, 6, 6, 'Red', 6, 1000.00, 1100.00, 'image_url'),
(8, 'MBT26', 7, 7, 7, 7, 7, 'White', 7, 1100.00, 1210.00, 'image_url'),
(9, 'MBT27', 8, 8, 8, 8, 8, 'Black', 8, 1200.00, 1320.00, 'image_url'),
(9, 'MBT28', 9, 9, 9, 9, 9, 'Silver', 9, 1300.00, 1430.00, 'image_url'),
(10, 'MBT29', 10, 10, 10, 10, 10, 'Grey', 10, 1400.00, 1540.00, 'image_url'),
(10, 'MBT30', 1, 1, 1, 1, 1, 'Black', 1, 500.00, 550.00, 'image_url');
GO

SELECT * FROM dbo.BienThe

SELECT dbo.Laptop.MaLaptop, TenLaptop, PhanLoai.TenLoai, Hang.TenHang, dbo.DongLaptop.TenDong, NamSanXuat FROM dbo.Laptop JOIN dbo.DongLaptop ON DongLaptop.ID = Laptop.DongLaptop JOIN dbo.Hang ON Hang.ID = DongLaptop.Hang JOIN dbo.PhanLoai ON PhanLoai.ID = Laptop.PhanLoai


SELECT MaBienThe, CPU, RAM, ManHinh, GPU, OCung, MauSac, HeDieuHanh, GiaVon, GiaBan, COUNT(serialNumber) AS [Số lượng] FROM BienThe LEFT JOIN Serial ON BienThe.ID = Serial.ID_BienThe
GROUP BY MaBienThe, CPU, RAM, ManHinh, GPU, OCung, MauSac, HeDieuHanh, GiaVon, GiaBan 
GO

SELECT dbo.BienThe.MaBienThe, dbo.Laptop.MaLaptop, (dbo.CPU.hangCPU + ' ' + dbo.CPU.loaiCPU) AS [CPU], (dbo.RAM.loaiRAM + ' - ' + CAST(dbo.RAM.dungLuong AS VARCHAR(10)) + 'GB') AS [RAM], (dbo.ManHinh.congNgheManHinh + ' - ' + CAST(dbo.ManHinh.kichThuocManHinh AS VARCHAR(10)) + ' - ' + dbo.ManHinh.doPhanGiai) AS [Màn hình], (dbo.GPU.loaiCard + ' - ' + dbo.GPU.hang) AS [GPU], (N'Ổ ' + dbo.OCung.kieuOCung + ' - ' + CAST(dbo.OCung.dungLuong AS VARCHAR(10)) + ' GB') AS [Ổ cứng], MauSac, (dbo.HeDieuHanh.os + ' ' + dbo.HeDieuHanh.versions + ' ' + CAST(dbo.HeDieuHanh.kieu AS VARCHAR(10)) + '(bit)') AS [Hệ điều hành], GiaVon, GiaBan, COUNT(SerialNumber) AS [Số lượng]  FROM dbo.BienThe JOIN dbo.Laptop ON Laptop.ID = BienThe.ID_Laptop LEFT JOIN dbo.Serial ON Serial.ID_BienThe = BienThe.ID JOIN dbo.CPU ON CPU.ID = BienThe.CPU JOIN dbo.RAM ON RAM.ID = BienThe.RAM JOIN dbo.ManHinh ON ManHinh.ID = BienThe.ManHinh JOIN dbo.GPU ON GPU.ID = BienThe.GPU JOIN dbo.OCung ON OCung.ID = BienThe.OCung JOIN dbo.HeDieuHanh ON HeDieuHanh.ID = BienThe.HeDieuHanh WHERE dbo.Laptop.MaLaptop = 'ML01'
GROUP BY (dbo.CPU.hangCPU + ' ' + dbo.CPU.loaiCPU),
         (dbo.RAM.loaiRAM + ' - ' + CAST(dbo.RAM.dungLuong AS VARCHAR(10)) + 'GB'),
         (dbo.ManHinh.congNgheManHinh + ' - ' + CAST(dbo.ManHinh.kichThuocManHinh AS VARCHAR(10)) + ' - ' + dbo.ManHinh.doPhanGiai ),
         (dbo.GPU.loaiCard + ' - ' + dbo.GPU.hang),
         (N'Ổ ' + dbo.OCung.kieuOCung + ' - ' + CAST(dbo.OCung.dungLuong AS VARCHAR(10)) + ' GB'),
         (dbo.HeDieuHanh.os + ' ' + dbo.HeDieuHanh.versions + ' ' + CAST(dbo.HeDieuHanh.kieu AS VARCHAR(10)) + '(bit)'),
         MaBienThe,
         MaLaptop,
         MauSac,
         GiaVon,
         GiaBan

GO
SELECT dbo.Laptop.MaLaptop, SoLuongLoa, Keyboard, TouchPad, CongKetNoi, Wifi, Bluetooth, Webcam, SoLuongQuat, TrongLuong, Pin FROM dbo.MoTa JOIN dbo.Laptop ON Laptop.ID = MoTa.MaLaptop WHERE dbo.Laptop.MaLaptop = 
    (SELECT ROW_NUMBER() OVER (ORDER BY dbo.BienThe.MaBienThe) AS rownum,  dbo.BienThe.MaBienThe, dbo.Laptop.MaLaptop, (dbo.CPU.hangCPU + ' ' + dbo.CPU.loaiCPU) AS [CPU], (dbo.RAM.loaiRAM + ' - ' + CAST(dbo.RAM.dungLuong AS VARCHAR(10)) + 'GB') AS [RAM], (dbo.ManHinh.congNgheManHinh + ' - ' + CAST(dbo.ManHinh.kichThuocManHinh AS VARCHAR(10)) + ' - ' + dbo.ManHinh.doPhanGiai) AS [Màn hình], (dbo.GPU.loaiCard + ' - ' + dbo.GPU.hang) AS [GPU], (N'Ổ ' + dbo.OCung.kieuOCung + ' - ' + CAST(dbo.OCung.dungLuong AS VARCHAR(10)) + ' GB') AS [Ổ cứng], MauSac, (dbo.HeDieuHanh.os + ' ' + dbo.HeDieuHanh.versions + ' ' + CAST(dbo.HeDieuHanh.kieu AS VARCHAR(10)) + '(bit)') AS [Hệ điều hành], GiaVon, GiaBan, COUNT(SerialNumber) AS [Số lượng]  FROM dbo.BienThe JOIN dbo.Laptop ON Laptop.ID = BienThe.ID_Laptop LEFT JOIN dbo.Serial ON Serial.ID_BienThe = BienThe.ID JOIN dbo.CPU ON CPU.ID = BienThe.CPU JOIN dbo.RAM ON RAM.ID = BienThe.RAM JOIN dbo.ManHinh ON ManHinh.ID = BienThe.ManHinh JOIN dbo.GPU ON GPU.ID = BienThe.GPU JOIN dbo.OCung ON OCung.ID = BienThe.OCung JOIN dbo.HeDieuHanh ON HeDieuHanh.ID = BienThe.HeDieuHanh
GROUP BY (dbo.CPU.hangCPU + ' ' + dbo.CPU.loaiCPU),
         (dbo.RAM.loaiRAM + ' - ' + CAST(dbo.RAM.dungLuong AS VARCHAR(10)) + 'GB'),
         (dbo.ManHinh.congNgheManHinh + ' - ' + CAST(dbo.ManHinh.kichThuocManHinh AS VARCHAR(10)) + ' - ' + dbo.ManHinh.doPhanGiai ),
         (dbo.GPU.loaiCard + ' - ' + dbo.GPU.hang),
         (N'Ổ ' + dbo.OCung.kieuOCung + ' - ' + CAST(dbo.OCung.dungLuong AS VARCHAR(10)) + ' GB'),
         (dbo.HeDieuHanh.os + ' ' + dbo.HeDieuHanh.versions + ' ' + CAST(dbo.HeDieuHanh.kieu AS VARCHAR(10)) + '(bit)'),
         MaBienThe,
         MaLaptop,
         MauSac,
         GiaVon,
         GiaBan)
    AS temp
    WHERE rownum BETWEEN 11 AND 20

SELECT dbo.BienThe.MaBienThe, dbo.Laptop.MaLaptop, (dbo.CPU.hangCPU + ' ' + dbo.CPU.loaiCPU) AS [CPU], (dbo.RAM.loaiRAM + ' - ' + CAST(dbo.RAM.dungLuong AS VARCHAR(10)) + 'GB') AS [RAM], (dbo.ManHinh.congNgheManHinh + ' - ' + CAST(dbo.ManHinh.kichThuocManHinh AS VARCHAR(10)) + ' - ' + dbo.ManHinh.doPhanGiai) AS [Màn hình], (dbo.GPU.loaiCard + ' - ' + dbo.GPU.hang) AS [GPU], (N'Ổ ' + dbo.OCung.kieuOCung + ' - ' + CAST(dbo.OCung.dungLuong AS VARCHAR(10)) + ' GB') AS [Ổ cứng], MauSac, (dbo.HeDieuHanh.os + ' ' + dbo.HeDieuHanh.versions + ' ' + CAST(dbo.HeDieuHanh.kieu AS VARCHAR(10)) + '(bit)') AS [Hệ điều hành], GiaVon, GiaBan, COUNT(SerialNumber) AS [Số lượng]  FROM dbo.BienThe JOIN dbo.Laptop ON Laptop.ID = BienThe.ID_Laptop LEFT JOIN dbo.Serial ON Serial.ID_BienThe = BienThe.ID JOIN dbo.CPU ON CPU.ID = BienThe.CPU JOIN dbo.RAM ON RAM.ID = BienThe.RAM JOIN dbo.ManHinh ON ManHinh.ID = BienThe.ManHinh JOIN dbo.GPU ON GPU.ID = BienThe.GPU JOIN dbo.OCung ON OCung.ID = BienThe.OCung JOIN dbo.HeDieuHanh ON HeDieuHanh.ID = BienThe.HeDieuHanh
				WHERE TrangThai = 0 GROUP BY (dbo.CPU.hangCPU + ' ' + dbo.CPU.loaiCPU),(dbo.RAM.loaiRAM + ' - ' + CAST(dbo.RAM.dungLuong AS VARCHAR(10)) + 'GB'),(dbo.ManHinh.congNgheManHinh + ' - ' + CAST(dbo.ManHinh.kichThuocManHinh AS VARCHAR(10)) + ' - ' + dbo.ManHinh.doPhanGiai ),(dbo.GPU.loaiCard + ' - ' + dbo.GPU.hang),(N'Ổ ' + dbo.OCung.kieuOCung + ' - ' + CAST(dbo.OCung.dungLuong AS VARCHAR(10)) + ' GB'),(dbo.HeDieuHanh.os + ' ' + dbo.HeDieuHanh.versions + ' ' + CAST(dbo.HeDieuHanh.kieu AS VARCHAR(10)) + '(bit)'),MaBienThe,MaLaptop,MauSac, GiaVon,GiaBan;
			
SELECT dbo.Laptop.MaLaptop, TenLaptop, PhanLoai.TenLoai, Hang.TenHang, dbo.DongLaptop.TenDong, NamSanXuat FROM dbo.Laptop JOIN dbo.DongLaptop ON DongLaptop.ID = Laptop.DongLaptop JOIN dbo.Hang ON Hang.ID = DongLaptop.Hang JOIN dbo.PhanLoai ON PhanLoai.ID = Laptop.PhanLoai WHERE dbo.Hang.TenHang LIKE '%%' AND dbo.DongLaptop.TenDong LIKE '%%' AND dbo.PhanLoai.TenLoai LIKE '%%'

SELECT dbo.BienThe.MaBienThe, dbo.Laptop.MaLaptop, (dbo.CPU.hangCPU + ' ' + dbo.CPU.loaiCPU) AS [CPU], (dbo.RAM.loaiRAM + ' - ' + CAST(dbo.RAM.dungLuong AS VARCHAR(10)) + 'GB') AS [RAM], (dbo.ManHinh.congNgheManHinh + ' - ' + CAST(dbo.ManHinh.kichThuocManHinh AS VARCHAR(10)) + ' - ' + dbo.ManHinh.doPhanGiai) AS [Màn hình], (dbo.GPU.loaiCard + ' - ' + dbo.GPU.hang) AS [GPU], (N'Ổ ' + dbo.OCung.kieuOCung + ' - ' + CAST(dbo.OCung.dungLuong AS VARCHAR(10)) + ' GB') AS [Ổ cứng], MauSac, (dbo.HeDieuHanh.os + ' ' + dbo.HeDieuHanh.versions + ' ' + CAST(dbo.HeDieuHanh.kieu AS VARCHAR(10)) + '(bit)') AS [Hệ điều hành], GiaVon, GiaBan, COUNT(SerialNumber) AS [Số lượng]  FROM dbo.BienThe JOIN dbo.Laptop ON Laptop.ID = BienThe.ID_Laptop LEFT JOIN dbo.Serial ON Serial.ID_BienThe = BienThe.ID JOIN dbo.CPU ON CPU.ID = BienThe.CPU JOIN dbo.RAM ON RAM.ID = BienThe.RAM JOIN dbo.ManHinh ON ManHinh.ID = BienThe.ManHinh JOIN dbo.GPU ON GPU.ID = BienThe.GPU JOIN dbo.OCung ON OCung.ID = BienThe.OCung JOIN dbo.HeDieuHanh ON HeDieuHanh.ID = BienThe.HeDieuHanh WHERE dbo.Laptop.MaLaptop = ? GROUP BY (dbo.CPU.hangCPU + ' ' + dbo.CPU.loaiCPU),(dbo.RAM.loaiRAM + ' - ' + CAST(dbo.RAM.dungLuong AS VARCHAR(10)) + 'GB'),(dbo.ManHinh.congNgheManHinh + ' - ' + CAST(dbo.ManHinh.kichThuocManHinh AS VARCHAR(10)) + ' - ' + dbo.ManHinh.doPhanGiai ),(dbo.GPU.loaiCard + ' - ' + dbo.GPU.hang),(N'Ổ ' + dbo.OCung.kieuOCung + ' - ' + CAST(dbo.OCung.dungLuong AS VARCHAR(10)) + ' GB'),(dbo.HeDieuHanh.os + ' ' + dbo.HeDieuHanh.versions + ' ' + CAST(dbo.HeDieuHanh.kieu AS VARCHAR(10)) + '(bit)'),MaBienThe,MaLaptop,MauSac, GiaVon,GiaBan";
GO

UPDATE BienThe SET GiaVon = 8000000, GiaBan = 9000000 WHERE ID = 1;
UPDATE BienThe SET GiaVon = 9000000, GiaBan = 10000000 WHERE ID = 2;
UPDATE BienThe SET GiaVon = 10000000, GiaBan = 11000000 WHERE ID = 3;
UPDATE BienThe SET GiaVon = 11000000, GiaBan = 12000000 WHERE ID = 4;
UPDATE BienThe SET GiaVon = 12000000, GiaBan = 13000000 WHERE ID = 5;
UPDATE BienThe SET GiaVon = 13000000, GiaBan = 14000000 WHERE ID = 6;
UPDATE BienThe SET GiaVon = 14000000, GiaBan = 15000000 WHERE ID = 7;
UPDATE BienThe SET GiaVon = 15000000, GiaBan = 16000000 WHERE ID = 8;
UPDATE BienThe SET GiaVon = 16000000, GiaBan = 17000000 WHERE ID = 9;
UPDATE BienThe SET GiaVon = 17000000, GiaBan = 18000000 WHERE ID = 10;
UPDATE BienThe SET GiaVon = 18000000, GiaBan = 19000000 WHERE ID = 11;
UPDATE BienThe SET GiaVon = 19000000, GiaBan = 20000000 WHERE ID = 12;
UPDATE BienThe SET GiaVon = 20000000, GiaBan = 21000000 WHERE ID = 13;
UPDATE BienThe SET GiaVon = 21000000, GiaBan = 22000000 WHERE ID = 14;
UPDATE BienThe SET GiaVon = 22000000, GiaBan = 23000000 WHERE ID = 15;
UPDATE BienThe SET GiaVon = 23000000, GiaBan = 24000000 WHERE ID = 16;
UPDATE BienThe SET GiaVon = 24000000, GiaBan = 25000000 WHERE ID = 17;
UPDATE BienThe SET GiaVon = 25000000, GiaBan = 26000000 WHERE ID = 18;
UPDATE BienThe SET GiaVon = 26000000, GiaBan = 27000000 WHERE ID = 19;
UPDATE BienThe SET GiaVon = 27000000, GiaBan = 28000000 WHERE ID = 20;
UPDATE BienThe SET GiaVon = 28000000, GiaBan = 29000000 WHERE ID = 21;
UPDATE BienThe SET GiaVon = 29000000, GiaBan = 30000000 WHERE ID = 22;
UPDATE BienThe SET GiaVon = 30000000, GiaBan = 31000000 WHERE ID = 23;
UPDATE BienThe SET GiaVon = 31000000, GiaBan = 32000000 WHERE ID = 24;
UPDATE BienThe SET GiaVon = 32000000, GiaBan = 33000000 WHERE ID = 25;
UPDATE BienThe SET GiaVon = 33000000, GiaBan = 34000000 WHERE ID = 26;
UPDATE BienThe SET GiaVon = 34000000, GiaBan = 35000000 WHERE ID = 27;
UPDATE BienThe SET GiaVon = 35000000, GiaBan = 36000000 WHERE ID = 28;
UPDATE BienThe SET GiaVon = 36000000, GiaBan = 37000000 WHERE ID = 29;
UPDATE BienThe SET GiaVon = 37000000, GiaBan = 38000000 WHERE ID = 30;


/*
SELECT * FROM BienTheSELECT
    Laptop.MaLaptop,
    Laptop.TenLaptop,
    Hang.TenHang AS Hang,
    ThongSoKyThuat.RAM,
    ThongSoKyThuat.CPU,
    ThongSoKyThuat.OCung,
    COUNT(LaptopNhap.SerialNumber) AS [SoLuong],
    ThongSoKyThuat.GiaVon,
    ThongSoKyThuat.GiaBan
FROM Laptop
INNER JOIN ThongSoKyThuat ON Laptop.ID = ThongSoKyThuat.TenLaptop
LEFT JOIN LaptopNhap ON ThongSoKyThuat.MaLaptop = LaptopNhap.MaLaptop
INNER JOIN Hang ON Laptop.Hang = Hang.ID
GROUP BY
    Laptop.MaLaptop,
    Laptop.TenLaptop,
    Hang.TenHang,
    ThongSoKyThuat.RAM,
    ThongSoKyThuat.CPU,
    ThongSoKyThuat.OCung,
    ThongSoKyThuat.GiaVon,
    ThongSoKyThuat.GiaBan;
*/