USE PM_Ban_Laptop
GO

INSERT INTO dbo.Hang ( TenHang, Logo, HoTro ) VALUES (   'Dell', 'dell.png',  'https://www.dell.com/support/home/en-vn' )
INSERT INTO dbo.Hang ( TenHang, Logo, HoTro ) VALUES (   'Lenovo', 'lenovo.png',  'https://www.lenovo.com/vn/vn/contact/' )

GO

INSERT INTO dbo.PhanLoai ( TenLoai, MoTa ) VALUES (   N'Gaming', N'Máy tính Gaming' )
INSERT INTO dbo.PhanLoai ( TenLoai, MoTa ) VALUES (   N'Văn phòng', N'Máy tính văn phòng' )
INSERT INTO dbo.PhanLoai ( TenLoai, MoTa ) VALUES (   N'Thiết kế đồ họa', N'Sử dụng cho người làm đồ họa' )
INSERT INTO dbo.PhanLoai ( TenLoai, MoTa ) VALUES (   N'Doanh nhân', N'Máy tính cho doanh nhân' )


GO

INSERT INTO dbo.RAM ( LoaiRAM, DungLuong, TocDoRAM, SoKheCamRoi, SoKheRAMConLai, SoRAMOnboard, HoTroRAMToiDa ) VALUES ( '', 0, 0, 0, 0, 0, 0 )

GO

INSERT dbo.CPU ( HangCPU, CongNghe, LoaiCPU, TocDoCPU, TocDoToiDa, SoNhan, SoLuong, BoNhoDem ) VALUES ( '', '', '', 0.0, 0.0, 0, 0, 0 )

GO

INSERT INTO dbo.HeDieuHanh ( OS, Versions, Kieu ) VALUES ( 'Windows', 'Windows 10 Pro', 64 )
INSERT INTO dbo.HeDieuHanh ( OS, Versions, Kieu ) VALUES ( 'Windows', 'Windows 10 Pro', 32 )
INSERT INTO dbo.HeDieuHanh ( OS, Versions, Kieu ) VALUES ( 'Windows', 'Windows 10 Home', 64 )
INSERT INTO dbo.HeDieuHanh ( OS, Versions, Kieu ) VALUES ( 'Windows', 'Windows 11 Pro', 64 )
INSERT INTO dbo.HeDieuHanh ( OS, Versions, Kieu ) VALUES ( 'Windows', 'Windows 11 Home', 64 )
INSERT INTO dbo.HeDieuHanh ( OS, Versions, Kieu ) VALUES ( 'Windows', 'Windows 11 Home', 32 )

GO

INSERT INTO RAM (LoaiRAM, DungLuong, TocDoRAM, SoKheCamRoi, SoKheRAMConLai, SoRAMOnboard, HoTroRAMToiDa)
VALUES
  ('RAM Type 1', 8, 2400, 4, 2, 0, 32),
  ('RAM Type 2', 16, 3200, 4, 2, 0, 64),
  ('RAM Type 3', 8, 2666, 2, 2, 0, 32),
  ('RAM Type 4', 32, 3600, 4, 0, 0, 128),
  ('RAM Type 5', 16, 3000, 4, 1, 0, 64);
GO

INSERT INTO CPU (HangCPU, CongNghe, LoaiCPU, TocDoCPU, TocDoToiDa, SoNhan, SoLuong, BoNhoDem)
VALUES
  ('CPU Brand 1', 'Technology 1', 'CPU Type 1', 2.6, 4.1, 4, 8, 8),
  ('CPU Brand 2', 'Technology 2', 'CPU Type 2', 3.0, 4.5, 6, 12, 12),
  ('CPU Brand 3', 'Technology 3', 'CPU Type 3', 2.3, 3.7, 4, 8, 8),
  ('CPU Brand 4', 'Technology 4', 'CPU Type 4', 3.2, 4.8, 8, 16, 16),
  ('CPU Brand 5', 'Technology 5', 'CPU Type 5', 2.8, 4.2, 6, 12, 12);
GO

INSERT INTO ManHinh (KichThuocManHinh, CongNgheManHinh, DoPhanGiai, TanSoQuet, TamNen, DoSang, DoPhuMau, TiLemanHinh)
VALUES
  (15.6, 'Technology 1', '1920x1080', 60, 'Tam Nen 1', 250, 'Do Phu Mau 1', 'Tili 1'),
  (14, 'Technology 2', '1366x768', 60, 'Tam Nen 2', 220, 'Do Phu Mau 2', 'Tili 2'),
  (17.3, 'Technology 3', '2560x1440', 144, 'Tam Nen 3', 300, 'Do Phu Mau 3', 'Tili 3'),
  (13.3, 'Technology 4', '2560x1600', 120, 'Tam Nen 4', 400, 'Do Phu Mau 4', 'Tili 4'),
  (15.6, 'Technology 5', '3840x2160', 60, 'Tam Nen 5', 500, 'Do Phu Mau 5', 'Tili 5');
GO

INSERT INTO DoHoa (LoaiCard, Hang)
VALUES
  ('Graphics Type 1', 'Brand 1'),
  ('Graphics Type 2', 'Brand 2'),
  ('Graphics Type 3', 'Brand 3'),
  ('Graphics Type 4', 'Brand 4'),
  ('Graphics Type 5', 'Brand 5');
GO

INSERT INTO OCung (KieuOCung, DungLuong)
VALUES
  ('HDD', 500),
  ('SSD', 256),
  ('HDD', 1000),
  ('SSD', 512),
  ('SSD', 1);
GO
SELECT * FROM dbo.Laptop
DELETE FROM dbo.RAM WHERE ID = 1


SELECT
    Laptop.ID,
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
    Laptop.ID,
    Laptop.TenLaptop,
    Hang.TenHang,
    ThongSoKyThuat.RAM,
    ThongSoKyThuat.CPU,
    ThongSoKyThuat.OCung,
    ThongSoKyThuat.GiaVon,
    ThongSoKyThuat.GiaBan;


INSERT INTO Laptop (Hang, PhanLoai, TenLaptop, TrongLuong, XuatXu, NamXB, HeDieuHanh, Hinh, ThoiGianBaoHanh, ChatLieu)
VALUES 
(1, 1, 'Laptop 1', 2.5, 'Vietnam', 2022, 1, 'image1.jpg', 12, 'Aluminum'),
(2, 1, 'Laptop 2', 2.0, 'China', 2021, 2, 'image2.jpg', 24, 'Plastic'),
(1, 2, 'Laptop 3', 2.2, 'Taiwan', 2023, 3, 'image3.jpg', 18, 'Carbon Fiber'),
(2, 2, 'Laptop 4', 2.7, 'Vietnam', 2021, 1, 'image4.jpg', 12, 'Aluminum'),
(2, 1, 'Laptop 5', 3.0, 'China', 2022, 2, 'image5.jpg', 24, 'Plastic'),
(1, 1, 'Laptop 6', 2.4, 'Taiwan', 2023, 3, 'image6.jpg', 18, 'Carbon Fiber'),
(2, 2, 'Laptop 7', 2.8, 'Vietnam', 2021, 1, 'image7.jpg', 12, 'Aluminum'),
(2, 2, 'Laptop 8', 2.1, 'China', 2022, 2, 'image8.jpg', 24, 'Plastic'),
(1, 1, 'Laptop 9', 2.3, 'Taiwan', 2023, 3, 'image9.jpg', 18, 'Carbon Fiber'),
(1, 1, 'Laptop 10', 2.6, 'Vietnam', 2021, 1, 'image10.jpg', 12, 'Aluminum'),
(1, 2, 'Laptop 11', 2.9, 'China', 2022, 2, 'image11.jpg', 24, 'Plastic'),
(2, 2, 'Laptop 12', 2.2, 'Taiwan', 2023, 3, 'image12.jpg', 18, 'Carbon Fiber'),
(1, 1, 'Laptop 13', 2.5, 'Vietnam', 2021, 1, 'image13.jpg', 12, 'Aluminum'),
(1, 1, 'Laptop 14', 2.0, 'China', 2022, 2, 'image14.jpg', 24, 'Plastic'),
(1, 2, 'Laptop 15', 2.3, 'Taiwan', 2023, 3, 'image15.jpg', 18, 'Carbon Fiber'),
(1, 2, 'Laptop 16', 2.7, 'Vietnam', 2021, 1, 'image16.jpg', 12, 'Aluminum'),
(1, 1, 'Laptop 17', 3.0, 'China', 2022, 2, 'image17.jpg', 24, 'Plastic'),
(1, 1, 'Laptop 18', 2.4, 'Taiwan', 2023, 3, 'image18.jpg', 18, 'Carbon Fiber'),
(1, 2, 'Laptop 19', 2.8, 'Vietnam', 2021, 1, 'image19.jpg', 12, 'Aluminum'),
(2, 2, 'Laptop 20', 2.1, 'China', 2022, 2, 'image20.jpg', 24, 'Plastic');
SELECT * FROM laptop
GO

INSERT INTO ThongSoKyThuat (MaLaptop, TenLaptop, GiaVon, GiaBan, CPU, RAM, ManHinh, DoHoa, OCung, MauSac, SoLuongLoa, Keyboard, TouchPad, CongKetNoi, Wifi, Bluetooth, Webcam, Pin)
VALUES 
('ML002', 22, 900, 1100, 3, 4, 3, 2, 3, 'Silver', 2, 'Backlit Keyboard', 'TouchPad 2', 'USB, HDMI', '802.11ac', 'Bluetooth 4.0', 'Webcam 1', 'Li-ion'),
('ML003', 23, 800, 1000, 4, 2, 2, 3, 4, 'Gray', 4, 'Mechanical Keyboard', 'TouchPad 3', 'USB, Thunderbolt', '802.11ax', 'Bluetooth 5.0', 'Webcam 2', 'Li-poly'),
('ML004', 4, 1100, 1300, 5, 3, 4, 4, 5, 'Gold', 2, 'Standard Keyboard', 'TouchPad 4', 'USB, HDMI, DisplayPort', '802.11ac', 'Bluetooth 4.2', 'Webcam 3', 'Li-ion'),
('ML005', 5, 1200, 1400, 3, 4, 3, 2, 4, 'White', 4, 'Backlit Keyboard', 'TouchPad 5', 'USB, Thunderbolt 3', '802.11ax', 'Bluetooth 5.1', 'Webcam 4', 'Li-poly'),
('ML006', 6, 1000, 1200, 2, 3, 2, 3, 2, 'Black', 2, 'Mechanical Keyboard', 'TouchPad 6', 'USB, HDMI', '802.11ac', 'Bluetooth 4.0', 'Webcam 5', 'Li-ion'),
('ML007', 7, 900, 1100, 4, 2, 4, 4, 3, 'Silver', 4, 'Standard Keyboard', 'TouchPad 7', 'USB, Thunderbolt', '802.11ax', 'Bluetooth 5.0', 'Webcam 6', 'Li-poly'),
('ML008', 8, 800, 1000, 3, 4, 2, 2, 3, 'Gray', 2, 'Backlit Keyboard', 'TouchPad 8', 'USB, HDMI, DisplayPort', '802.11ac', 'Bluetooth 4.2', 'Webcam 7', 'Li-ion'),
('ML009', 9, 1100, 1300, 5, 3, 5, 3, 4, 'Gold', 4, 'Mechanical Keyboard', 'TouchPad 9', 'USB, Thunderbolt 3', '802.11ax', 'Bluetooth 5.1', 'Webcam 8', 'Li-poly'),
('ML010', 10, 1200, 1400, 4, 2, 4, 2, 5, 'White', 2, 'Standard Keyboard', 'TouchPad 10', 'USB, HDMI', '802.11ac', 'Bluetooth 4.0', 'Webcam 9', 'Li-ion'),
('ML011', 11, 1000, 1200, 2, 4, 2, 3, 2, 'Black', 4, 'Backlit Keyboard', 'TouchPad 11', 'USB, Thunderbolt', '802.11ax', 'Bluetooth 5.0', 'Webcam 10', 'Li-poly');
