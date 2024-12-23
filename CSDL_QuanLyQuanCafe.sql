-- Tạo cơ sở dữ liệu
CREATE DATABASE QuanLyQuanCafe;
GO

USE QuanLyQuanCafe;

-- Bảng TaiKhoan
CREATE TABLE TaiKhoan (
    ID INT PRIMARY KEY IDENTITY(1,1),
    HoTen NVARCHAR(100) NOT NULL,
    SoDienThoai NVARCHAR(15) NOT NULL,
    TenDangNhap NVARCHAR(50) NOT NULL UNIQUE,
    MatKhau NVARCHAR(100) NOT NULL,
    LoaiNguoiDung NVARCHAR(20) NOT NULL
);

-- Bảng DanhMuc
CREATE TABLE DanhMuc (
    MaDanhMuc INT PRIMARY KEY, -- Duy trì mã danh mục thủ công
    TenDanhMuc NVARCHAR(100) NOT NULL
);

-- Bảng Menu
CREATE TABLE Menu (
    MaMon INT PRIMARY KEY, -- Duy trì mã món thủ công
    TenMon NVARCHAR(100) NOT NULL,
    Gia FLOAT NOT NULL,
    MaDanhMuc INT NOT NULL,
    FOREIGN KEY (MaDanhMuc) REFERENCES DanhMuc(MaDanhMuc)
);

-- Bảng Ban
CREATE TABLE Ban (
    MaBan INT IDENTITY(1,1) PRIMARY KEY,
    TenBan NVARCHAR(50) NOT NULL,
    TrangThai NVARCHAR(50) NOT NULL
);

CREATE TABLE HoaDon (
    MaHoaDon INT IDENTITY(1,1) PRIMARY KEY,
    MaBan INT,
    NgayTao DATETIME NOT NULL,
    TongTien FLOAT,
	DaThanhToan BIT NOT NULL DEFAULT 0,
	PhuongThucThanhToan NVARCHAR(50),
	GiamGia FLOAT,
    FOREIGN KEY (MaBan) REFERENCES Ban(MaBan)
);
CREATE TABLE ChiTietHoaDon (
    MaChiTietHoaDon INT IDENTITY(1,1) PRIMARY KEY,
    MaHoaDon INT,
    MaMon INT,
    SoLuong INT NOT NULL,
    ThanhTien FLOAT NOT NULL,
    FOREIGN KEY (MaHoaDon) REFERENCES HoaDon(MaHoaDon),
    FOREIGN KEY (MaMon) REFERENCES Menu(MaMon)
);



-- Dữ liệu mẫu cho bảng DanhMuc
INSERT INTO DanhMuc (MaDanhMuc, TenDanhMuc) 
VALUES 
(1, N'Cà phê'),
(2, N'Trà'),
(3, N'Nước ép'),
(4, N'Sinh tố'),
(5, N'Trà sữa'),
(6, N'Ăn vặt');

-- Dữ liệu mẫu cho bảng Menu
INSERT INTO Menu (MaMon, TenMon, Gia, MaDanhMuc) 
VALUES 
-- Danh mục: Cà phê
(101, N'Cà phê đen', 20000, 1),
(102, N'Cà phê sữa', 20000, 1),
(103, N'Bạc xỉu', 25000, 1),
(104, N'Cà phê muối', 25000, 1),

-- Danh mục: Trà
(201, N'Trà sen vàng', 20000, 2),
(202, N'Trà chanh', 20000, 2),
(203, N'Trà đào', 20000, 2),
(204, N'Trà vải', 20000, 2),

-- Danh mục: Nước ép
(301, N'Nước ép ổi', 25000, 3),
(302, N'Nước ép cà chua', 25000, 3),
(303, N'Nước ép dưa hấu', 25000, 3),
(304, N'Nước ép thơm', 25000, 3),

-- Danh mục: Sinh tố
(401, N'Sinh tố dâu', 25000, 4),
(402, N'Sinh tố bơ', 25000, 4),
(403, N'Sinh tố việt quất', 25000, 4),
(404, N'Sinh tố xoài', 25000, 4),

-- Danh mục: Trà sữa
(501, N'Trà sữa socola', 25000, 5),
(502, N'Trà sữa matcha', 25000, 5),
(503, N'Trà sữa kem trứng', 25000, 5),
(504, N'Trà sữa khoai môn', 25000, 5),

-- Danh mục: Ăn vặt
(601, N'Bánh tráng trộn', 20000, 6),
(602, N'Chân gà sốt thái', 40000, 6),
(603, N'Combo đồ chiên', 50000, 6);

-- Dữ liệu mẫu cho TaiKhoan
INSERT INTO TaiKhoan (HoTen, SoDienThoai, TenDangNhap, MatKhau, LoaiNguoiDung) VALUES 
(N'Nguyễn Thị Kim Trâm', '0379133089', 'admin', '123', N'Admin'),
(N'Lê Thị Mỹ Duyên', '0347579249',  'nhanvien', '456', N'Nhân viên');

INSERT INTO Ban (TenBan, TrangThai) VALUES (N'Bàn 1', N'Trống');
INSERT INTO Ban (TenBan, TrangThai) VALUES (N'Bàn 2', N'Trống');
INSERT INTO Ban (TenBan, TrangThai) VALUES (N'Bàn 3', N'Trống');
INSERT INTO Ban (TenBan, TrangThai) VALUES (N'Bàn 4', N'Trống');
INSERT INTO Ban (TenBan, TrangThai) VALUES (N'Bàn 5', N'Trống');
INSERT INTO Ban (TenBan, TrangThai) VALUES (N'Bàn 6', N'Trống');
INSERT INTO Ban (TenBan, TrangThai) VALUES (N'Bàn 7', N'Trống');
INSERT INTO Ban (TenBan, TrangThai) VALUES (N'Bàn 8', N'Trống');
INSERT INTO Ban (TenBan, TrangThai) VALUES (N'Bàn 9', N'Trống');
INSERT INTO Ban (TenBan, TrangThai) VALUES (N'Bàn 10', N'Trống');
INSERT INTO Ban (TenBan, TrangThai) VALUES (N'Bàn 11', N'Trống');
INSERT INTO Ban (TenBan, TrangThai) VALUES (N'Bàn 12', N'Trống');
INSERT INTO Ban (TenBan, TrangThai) VALUES (N'Bàn 13', N'Trống');
INSERT INTO Ban (TenBan, TrangThai) VALUES (N'Bàn 14', N'Trống');
INSERT INTO Ban (TenBan, TrangThai) VALUES (N'Bàn 15', N'Trống');
INSERT INTO Ban (TenBan, TrangThai) VALUES (N'Bàn 16', N'Trống');
INSERT INTO Ban (TenBan, TrangThai) VALUES (N'Bàn 17', N'Trống');
INSERT INTO Ban (TenBan, TrangThai) VALUES (N'Bàn 18', N'Trống');
INSERT INTO Ban (TenBan, TrangThai) VALUES (N'Bàn 19', N'Trống');
INSERT INTO Ban (TenBan, TrangThai) VALUES (N'Bàn 20', N'Trống');

