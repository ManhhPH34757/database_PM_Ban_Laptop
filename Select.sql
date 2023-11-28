USE PM_Ban_Laptop
GO


SELECT MaBienThe, CPU, RAM, ManHinh, GPU, OCung, MauSac, HeDieuHanh, GiaVon, GiaBan, COUNT(serialNumber) AS [Số lượng] FROM BienThe LEFT JOIN Serial ON BienThe.ID = Serial.ID_BienThe
GROUP BY MaBienThe, CPU, RAM, ManHinh, GPU, OCung, MauSac, HeDieuHanh, GiaVon, GiaBan 
GO
SELECT DongLaptop.ID, MaDong, Hang, Hang.TenHang, TenDong FROM Donglaptop JOIN Hang ON Hang.ID = DongLaptop.Hang WHERE TenHang = 'Dell'
SELECT Laptop.ID, MaLaptop, TenLaptop, PhanLoai.ID AS PhanLoai, PhanLoai.Tenloai, Hang.ID AS Hang, Hang.TenHang, DongLaptop.ID AS DongLaptop, DongLaptop.TenDong, NamSanXuat  FROM Laptop JOIN PhanLoai ON Laptop.PhanLoai = PhanLoai.ID JOIN DongLaptop ON Laptop.DongLaptop = DongLaptop.ID JOIN Hang ON Hang.ID = DongLaptop.Hang
SELECT * FROM RAM

SELECT * FROM dbo.Laptop
SELECT * FROM dbo.MoTa
SELECT * FROM dbo.BienThe

SELECT * 
	FROM  dbo.Laptop JOIN dbo.BienThe ON BienThe.ID_Laptop = Laptop.ID
		JOIN dbo.Serial ON Serial.ID_BienThe = BienThe.ID
	WHERE SerialNumber = 'SN03' 



	SELECT * FROM dbo.BienThe
SELECT * FROM dbo.CTHoadon
-- select hoadon

SELECT dbo.HoaDon.ID AS 'ID_HoaDon', dbo.HoaDon.MaHD ,dbo.Serial.ID AS 'ID_Serial', dbo.Serial.SerialNumber 
FROM dbo.CTHoaDon JOIN dbo.HoaDon ON HoaDon.ID = CTHoaDon.MaHD
	JOIN dbo.Serial ON Serial.ID = CTHoaDon.ID_Serial

	SELECT * FROM dbo.CTHoaDon JOIN dbo.HoaDon ON HoaDon.ID = CTHoaDon.MaHD WHERE dbo.HoaDon.MaHD = 'HD001';


SELECT HoaDon.ID, dbo.HoaDon.MaHD, HoaDon.MaKH,dbo.HinhThucVanChuyen.ID AS 'ID_HinhThucVanChuyen',
				dbo.HinhThucVanChuyen.HinhThuc AS 'HinhThucVanChuyen',dbo.HinhThucThanhToan.ID AS 'ID_HinhThucThanhToan',
				dbo.HinhThucThanhToan.HinhThuc AS 'HinhThucThanhToan',
				dbo.PhieuGiamGia.ID AS 'ID_PhieuGiamGia', PhieuGiamGia.MaPG, dbo.HoaDon.DotGiamGia,
				HoaDon.MaNV,dbo.HoaDon.NgayTao, dbo.HoaDon.TongTien
				FROM dbo.HoaDon JOIN  dbo.KhachHang ON KhachHang.MaKH = HoaDon.MaKH
						JOIN dbo.HinhThucVanChuyen ON HinhThucVanChuyen.ID = HoaDon.HinhThucVanChuyen
						JOIN dbo.HinhThucThanhToan ON HinhThucThanhToan.ID = HoaDon.HinhThucThanhToan
						LEFT JOIN dbo.PhieuGiamGia ON PhieuGiamGia.ID = HoaDon.PhieuGiamGia
						LEFT JOIN dbo.DotGiamGia ON DotGiamGia.MaDG = dbo.HoaDon.DotGiamGia
						JOIN dbo.NhanVien ON NhanVien.MaNV = HoaDon.MaNV



SELECT HoaDon.ID, dbo.HoaDon.MaHD, HoaDon.MaKH,dbo.HinhThucVanChuyen.ID AS 'ID_HinhThucVanChuyen',
				dbo.HinhThucVanChuyen.HinhThuc AS 'HinhThucVanChuyen',dbo.HinhThucThanhToan.ID AS 'ID_HinhThucThanhToan',
				dbo.HinhThucThanhToan.HinhThuc AS 'HinhThucThanhToan',
				dbo.PhieuGiamGia.ID AS 'ID_PhieuGiamGia', PhieuGiamGia.MaPG, dbo.HoaDon.DotGiamGia,
				HoaDon.MaNV, dbo.HoaDon.NgayTao, dbo.HoaDon.TongTien
				FROM dbo.HoaDon JOIN  dbo.KhachHang ON KhachHang.MaKH = HoaDon.MaKH
						JOIN dbo.HinhThucVanChuyen ON HinhThucVanChuyen.ID = HoaDon.HinhThucVanChuyen
						JOIN dbo.HinhThucThanhToan ON HinhThucThanhToan.ID = HoaDon.HinhThucThanhToan
						LEFT JOIN dbo.PhieuGiamGia ON PhieuGiamGia.ID = HoaDon.PhieuGiamGia
						LEFT JOIN dbo.DotGiamGia ON DotGiamGia.MaDG = dbo.HoaDon.DotGiamGia
						JOIN dbo.NhanVien ON NhanVien.MaNV = HoaDon.MaNV 
				WHERE dbo.HoaDon.MaHD = ?;


-- select CThoaDon

SELECT CTHoaDon.ID, dbo.HoaDon.ID AS [ID_HoaDon], dbo.HoaDon.MaHD, dbo.CTHoaDon.ID_Serial,
		dbo.Serial.SerialNumber, dbo.Laptop.TenLaptop, dbo.BienThe.Gia 
		FROM dbo.CTHoaDon JOIN dbo.HoaDon ON HoaDon.ID = CTHoaDon.MaHD 
				JOIN dbo.Serial ON Serial.ID = CTHoaDon.ID_Serial 
				JOIN dbo.BienThe ON BienThe.ID = Serial.ID_BienThe 
				JOIN dbo.Laptop ON Laptop.ID = BienThe.ID_Laptop 
		WHERE HoaDon.MaHD = ? ;


SELECT CTHoaDon.ID, dbo.HoaDon.ID AS [ID_HoaDon], dbo.HoaDon.MaHD, dbo.CTHoaDon.ID_Serial,
		dbo.Serial.SerialNumber, dbo.Laptop.TenLaptop, dbo.BienThe.Gia 
		FROM dbo.CTHoaDon JOIN dbo.HoaDon ON HoaDon.ID = CTHoaDon.MaHD 
				JOIN dbo.Serial ON Serial.ID = CTHoaDon.ID_Serial 
				JOIN dbo.BienThe ON BienThe.ID = Serial.ID_BienThe 
				JOIN dbo.Laptop ON Laptop.ID = BienThe.ID_Laptop 
		WHERE CTHoaDon.ID = ?;



-- select PhieuDoi


SELECT dbo.PhieuDoi.ID AS 'ID_PhieuDoi', dbo.PhieuDoi.MaPhieuDoi,dbo.Serial.ID AS 'ID_Serial_Old', dbo.Serial.SerialNumber AS 'SerialNumber_Old', (SELECT Gia FROM dbo.BienThe JOIN dbo.Serial ON Serial.ID_BienThe = BienThe.ID JOIN dbo.CTPhieuDoi ON CTPhieuDoi.ID_Serial_Old = Serial.ID WHERE SerialNumber = dbo.CTPhieuDoi.ID_Serial_Old) AS [GiaCu],
	dbo.Serial.ID AS 'ID_Serial_New', dbo.Serial.SerialNumber AS 'SerialNumber_New'
FROM dbo.CTPhieuDoi JOIN dbo.PhieuDoi ON PhieuDoi.ID = CTPhieuDoi.ID_PhieuDoi
	JOIN dbo.Serial ON Serial.ID = CTPhieuDoi.ID_Serial_Old AND Serial.ID = CTPhieuDoi.ID_Serial_New
	JOIN dbo.BienThe ON BienThe.ID = Serial.ID_BienThe
GO


SELECT * FROM dbo.PhieuDoi WHERE MaPhieuDoi = ?;
SELECT * FROM dbo.CTPhieuDoi JOIN dbo.PhieuDoi ON PhieuDoi.ID = CTPhieuDoi.ID_PhieuDoi WHERE MaPhieuDoi = ?;

SELECT * FROM dbo.CTPhieuDoi

SELECT * FROM dbo.PhieuDoi

SELECT dbo.PhieuDoi.ID, dbo.PhieuDoi.MaPhieuDoi, dbo.PhieuDoi.MaKH,dbo.KhachHang.HoTen AS 'HoTenKhachHang',
				dbo.HoaDon.MaHD,dbo.PhieuDoi.MaNV, dbo.NhanVien.HoTen AS 'HoTenNhanVien',dbo.PhieuDoi.NgayTao,dbo.PhieuDoi.LiDo
				FROM dbo.PhieuDoi JOIN dbo.KhachHang ON KhachHang.MaKH = PhieuDoi.MaKH
				JOIN dbo.NhanVien ON NhanVien.MaNV = PhieuDoi.MaNV
				JOIN HoaDon ON HoaDon.ID = PhieuDoi.MaHD WHERE MaPhieuDoi = ?;


SELECT dbo.PhieuDoi.ID, dbo.PhieuDoi.MaPhieuDoi, dbo.PhieuDoi.MaKH,dbo.KhachHang.HoTen AS 'HoTenKhachHang',
				dbo.HoaDon.MaHD,dbo.PhieuDoi.MaNV, dbo.NhanVien.HoTen AS 'HoTenNhanVien',dbo.PhieuDoi.NgayTao,dbo.PhieuDoi.LiDo
				FROM dbo.PhieuDoi JOIN dbo.KhachHang ON KhachHang.MaKH = PhieuDoi.MaKH
				JOIN dbo.NhanVien ON NhanVien.MaNV = PhieuDoi.MaNV
				JOIN HoaDon ON HoaDon.ID = PhieuDoi.MaHD;





		SELECT 	dbo.CTPhieuDoi.ID,
			    dbo.PhieuDoi.ID AS 'ID_PhieuDoi', 
			    dbo.PhieuDoi.MaPhieuDoi,
			    dbo.CTPhieuDoi.ID_Serial_Old AS 'ID_Serial_Old',
			    SerialOld.SerialNumber AS 'SerialNumber_Old',
				BienThe_Old.Gia AS 'Gia_Old',
			    dbo.CTPhieuDoi.ID_Serial_New AS 'ID_Serial_New', 
			    SerialNew.SerialNumber AS 'SerialNumber_New',
				BienThe_New.Gia AS 'Gia_New'
			FROM  
			    dbo.CTPhieuDoi 
			JOIN 
			    dbo.PhieuDoi ON PhieuDoi.ID = CTPhieuDoi.ID_PhieuDoi
			JOIN 
			    dbo.Serial AS SerialOld ON SerialOld.ID = CTPhieuDoi.ID_Serial_Old
			JOIN 
			    dbo.Serial AS SerialNew ON SerialNew.ID = CTPhieuDoi.ID_Serial_New
			JOIN 
			    dbo.BienThe AS BienThe_Old ON BienThe_Old.ID = SerialOld.ID_BienThe
			JOIN 
				dbo.BienThe AS BienThe_New ON BienThe_New.ID = SerialNew.ID_BienThe
			WHERE MaPhieuDoi = ?;


-- select CTPhieuDoi


			SELECT 
				dbo.CTPhieuDoi.ID,
			    dbo.PhieuDoi.ID AS 'ID_PhieuDoi', 
			    dbo.PhieuDoi.MaPhieuDoi,
			    dbo.CTPhieuDoi.ID_Serial_Old AS 'ID_Serial_Old', 
			    SerialOld.SerialNumber AS 'SerialNumber_Old',
				LapTop_Old.TenLaptop AS 'TenLapTop_Old',
				BienThe_Old.Gia AS 'Gia_Old',
			    dbo.CTPhieuDoi.ID_Serial_New AS 'ID_Serial_New', 
			    SerialNew.SerialNumber AS 'SerialNumber_New',
				LapTop_New.TenLaptop AS 'TenLapTop_New',
				BienThe_New.Gia AS 'Gia_New'
			FROM 
			    dbo.CTPhieuDoi 
			JOIN
			    dbo.PhieuDoi ON PhieuDoi.ID = CTPhieuDoi.ID_PhieuDoi
			JOIN 
			    dbo.Serial AS SerialOld ON SerialOld.ID = CTPhieuDoi.ID_Serial_Old
			JOIN 
			    dbo.Serial AS SerialNew ON SerialNew.ID = CTPhieuDoi.ID_Serial_New
			JOIN
			    dbo.BienThe AS BienThe_Old ON BienThe_Old.ID = SerialOld.ID_BienThe
			JOIN
				dbo.BienThe AS BienThe_New ON BienThe_New.ID = SerialNew.ID_BienThe
			JOIN
				dbo.Laptop AS LapTop_Old ON LapTop_Old.ID = BienThe_Old.ID_Laptop
			JOIN 
				dbo.Laptop AS LapTop_New ON LapTop_New.ID = BienThe_New.ID_Laptop
			WHERE MaPhieuDoi = ?;



























































