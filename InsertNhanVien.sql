INSERT INTO NhanVien VALUES
('NV001', N'Nguyễn Văn A', '0123456789', '1990-01-01', 1, 'nvana@gmail.com', 'image.jpg', N'Hà Nội'),
('NV002', N'Trần Thị B', '9876543210', '1991-02-02', 0, 'tranb@gmail.com', 'image2.jpg', N'Hồ Chí Minh'),
('NV003', N'Lê Văn C', '1234567890', '1992-03-03', 1, 'levanc@gmail.com', 'image3.jpg', N'Đà Nẵng'),
('NV004', N'Phạm Thị D', '9876543210', '1993-04-04', 0, 'phamd@gmail.com', 'image4.jpg', N'Cần Thơ'),
('NV005', N'Đỗ Văn E', '1234567890', '1994-05-05', 1, 'dodu@gmail.com', 'image5.jpg', N'Hải Phòng');

GO	
INSERT INTO TaiKhoan (MaNV, TenDangNhap, MatKhau, VaiTro) VALUES
('NV001', 'nvana@gmail.com', '123456', 1),
('NV002', 'tranb@gmail.com', 'password1', 0),
('NV003', 'levanc@gmail.com', 'abc123', 1),
('NV004', 'phamd@gmail.com', 'phamdu', 0),
('NV005', 'dodu@gmail.com', 'dodu123', 1);

GO
INSERT INTO PhieuGiamGia VALUES
('PG001', 'Phiếu giảm giá 5%', '2023-12-31', 50, 5, 0),
('PG002', 'Phiếu giảm giá 10% ', '2023-11-30', 30, 10, 500000),
('PG003', 'Phiếu giảm giá 15% ', '2024-01-31', 20, 15, 1000000),
('PG004', 'Phiếu giảm giá 20%', '2024-02-29', 10, 20, 2000000),
('PG005', 'Phiếu giảm giá 25%', '2024-03-31', 5, 25, 3000000)
INSERT INTO KhachHang VALUES
('KH001', N'Nguyễn Văn A', '0987654321', '1980-01-01', 1, 'nguyenvana@gmail.com', N'Hà Nội, Việt Nam'),
('KH002', N'Trần Thị B', '0123456789', '1990-02-02', 0, 'tranthib@gmail.com', N'TP. Hồ Chí Minh, Việt Nam'),
('KH003', N'Lê Văn C', '0965432178', '1995-03-03', 1, 'levanc@gmail.com', N'Đà Nẵng, Việt Nam'),
('KH004', N'Đỗ Thị D', '0876543210', '2000-04-04', 0, 'dothid@gmail.com', N'Cần Thơ, Việt Nam'),
('KH005', N'Phạm Văn E', '0789654321', '2005-05-05', 1, 'phamvane@gmail.com', N'Hải Phòng, Việt Nam')
INSERT INTO DotGiamGia VALUES
('DG001', N'sALE 11/11', '2023-12-31', 5, 0),
('DG002', N'sALE 12/12', '2023-11-30', 10, 500000),
('DG003', N'Black friday', '2024-01-31', 15, 1000000),
('DG004', N'Ngày mua sắm', '2024-02-29', 0, 2000000),
('DG005', N'holyday sale', '2024-03-31', 0, 3000000)
INSERT INTO HinhThucVanChuyen VALUES
(N'Giao hàng tận nơi', N'VNĐ/km', 2000),
(N'Nhận hàng tại kho', N'VNĐ/kiện', 1500),
(N'Giao hàng thu hộ', N'VNĐ/kiện', 2500),
(N'Chuyển phát nhanh', N'VNĐ/kiện', 3000),
(N'Giao hàng quốc tế', N'USD/kg', 10)
INSERT INTO HinhThucThanhToan VALUES
(N'Tiền mặt'),
(N'Thẻ tín dụng'),
(N'Thẻ ghi nợ'),
(N'Chuyển khoản ngân hàng'),
(N'Thanh toán online')
INSERT INTO HoaDon VALUES
('HD001', 'KH001', 1, 2, NULL, 'DG002', 'NV001', '2023-11-14', 500000),
('HD002', 'KH002', 2, 3, NULL, 'DG003', 'NV002', '2023-11-14', 1200000),
('HD003', 'KH003', 3, 1, 'PG002', 'DG001', 'NV003', '2023-11-14', 400000),
('HD004', 'KH004', 1, 4, 'PG003', 'DG004', 'NV004', '2023-11-14', 2500000),
('HD005', 'KH005', 2, 5, NULL, 'DG005', 'NV005', '2023-11-14', 3800000)
INSERT INTO LS_HoaDon VALUES
( 'NV001', 'HD001', N'Tạo hóa đơn'),
( 'NV002', 'HD002', N'Xóa hóa đơn '),
( 'NV003', 'HD003', N'Cập nhật hóa đơn'),
( 'NV004', 'HD004', N'Tạo hóa đơn'),
( 'NV005', 'HD005', N'Xóa hóa đơn')
INSERT INTO dbo.LS_PhieuDoi(MaNV,MaHoaDon, LichSuLamViec)VALUES(   'NV001', 'HD001',  N'Tạo phiếu đổi'  ),
																(   'NV002', 'HD002',  N'Xóa phiếu đổi'  ),
																(   'NV003', 'HD003',  N'Cập nhật phiếu đổi'  ),
																(   'NV004', 'HD004',  N'Tạo phiếu đổi'  ),
																(   'NV005', 'HD005',  N'Cập nhật phiếu đổi'  )

INSERT INTO TaiKhoan (MaNV, TenDangNhap, MatKhau, VaiTro)
VALUES ('NV001', 'admin', '123456', 1),
('NV002', 'user1', 'qwerty', 0),
('NV003', 'user2', 'asdfgh', 0),
('NV004', 'user3', 'zxcvbn', 0),
('NV005', 'user4', '123456789', 0);


INSERT INTO dbo.LS_HoaDon( MaNV, MaHoaDon, LichSuLamViec)VALUES(  'NV005',  'HD003',   N'Xóa hóa đơn'  ),
(  'NV002',  'HD003',   N'Xóa hóa đơn'  ),
(  'NV002',  'HD004',   N'Cập nhật hóa đơn'  ),
(  'NV004',  'HD005',   N'Xóa hóa đơn'  ),
(  'NV003',  'HD004',   N'Tạo hóa đơn'  )
INSERT INTO dbo.LS_PhieuDoi( MaNV,MaHoaDon, LichSuLamViec)VALUES('NV003',  'HD002',  N'Tạo Phiếu đổi' ),
('NV002',  'HD003',  N'Cập nhật Phiếu đổi' ),
('NV003',  'HD002',  N'Cập nhật Phiếu đổi' ),
('NV004',  'HD004',  N'Xóa Phiếu đổi' ),
('NV005',  'HD002',  N'Cập nhật Phiếu đổi' )