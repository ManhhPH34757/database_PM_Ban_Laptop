USE PM_Ban_Laptop
GO

INSERT dbo.NhanVien
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
(   'NV001',        -- MaNV - varchar(20)
    N'Nguyễn Ngọc Mạnh',       -- HoTen - nvarchar(50)
    '0387172021',        -- SoDienThoai - varchar(13)
    '2004-07-27', -- NgaySinh - date
    1,      -- GioiTinh - bit
    'nguyenmanh2707ngt@gmail.com',        -- Email - varchar(100)
    'manhh.jpg',        -- Hinh - varchar(255)
    N'Tỉnh Vĩnh Phúc - Huyện Lập Thạch - Xã Bàn Giản - Khu 3 Thôn Tây Hạ Nam'        -- DiaChi - nvarchar(255)
    )
GO

INSERT dbo.NhanVien
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
    N'Nguyễn Ngọc Ánh',       -- HoTen - nvarchar(50)
    '0987807660',        -- SoDienThoai - varchar(13)
    '2004-09-17', -- NgaySinh - date
    0,      -- GioiTinh - bit
    'nguyenanh1709ngt@gmail.com',        -- Email - varchar(100)
    'anh.jpg',        -- Hinh - varchar(255)
    N'Tỉnh Vĩnh Phúc - Huyện Lập Thạch - Xã Bàn Giản - Khu 3 Thôn Tây Hạ Nam'        -- DiaChi - nvarchar(255)
    )
GO

INSERT INTO dbo.TaiKhoan
(
    MaNV,
    TenDangNhap,
    MatKhau,
    VaiTro
)
VALUES
(   'NV001',  -- MaNV - varchar(20)
    'ManhnnPH34757',  -- TenDangNhap - varchar(100)
    'Nguyenmanh@2707',  -- MatKhau - varchar(100)
    1 -- VaiTro - bit
    )
GO

INSERT INTO dbo.TaiKhoan
(
    MaNV,
    TenDangNhap,
    MatKhau,
    VaiTro
)
VALUES
(   'NV002',  -- MaNV - varchar(20)
    'AnhnnPH34584',  -- TenDangNhap - varchar(100)
    'Nguyenanh@1709',  -- MatKhau - varchar(100)
    0 -- VaiTro - bit
    )
GO
/*
SELECT NhanVien.MaNV, HoTen, SoDienThoai, NgaySinh, GioiTinh, Email, Hinh, DiaChi, TenDangNhap, MatKhau, VaiTro FROM dbo.NhanVien JOIN dbo.TaiKhoan ON TaiKhoan.MaNV = NhanVien.MaNV
GO*/




