CREATE DATABASE DuAn2
IF OBJECT_ID('Users') IS NOT NULL
	DROP TABLE Users
GO
CREATE TABLE Users
(
	TenDN	NVARCHAR(50) NOT NULL,
	MatKhau	NVARCHAR(50) NULL,
	HoTen	NVARCHAR(50) NULL,
	Sdt		int,
	DiaChi  NVARCHAR(50) NULL,
	Email   NVARCHAR(50) NULL,
	VaiTro	NVARCHAR(50) NULL,
	CONSTRAINT PK_Users PRIMARY KEY(TenDN)
)
IF OBJECT_ID('KhachHang') IS NOT NULL
	DROP TABLE KhachHang
GO
CREATE TABLE KhachHang
(
	TenDNKH	NVARCHAR(50) NOT NULL,
	TenKH	NVARCHAR(50) NULL,
	Sdt		int,
	DiaChi  NVARCHAR(50) NULL,
	MatKhau	NVARCHAR(50) NULL,
	Email   NVARCHAR(50) NULL,
	CONSTRAINT PK_KhachHang PRIMARY KEY(TenDNKH)
)
IF OBJECT_ID('QLLoaiAo') IS NOT NULL
	DROP TABLE QLLoaiAo
GO
CREATE TABLE QLLoaiAo
(
	MaLoai	    NVARCHAR(50) NOT NULL,
	PhanLoai	NVARCHAR(50) NULL,
	CONSTRAINT PK_QLLoaiAo PRIMARY KEY(MaLoai)
)
IF OBJECT_ID('QLLogo') IS NOT NULL
	DROP TABLE QLLogo
GO
CREATE TABLE QLLogo
(
	MaLogo	    NVARCHAR(50) NOT NULL,
	Anh			NVARCHAR(50) NOT NULL,
	Gia			FLOAT NULL,
	KieuIn		NVARCHAR(50) NOT NULL,
	GiaLogo		FLOAT NULL,
	CONSTRAINT PK_QLLogo PRIMARY KEY(MaLogo)
)
IF OBJECT_ID('SanPham') IS NOT NULL
	DROP TABLE SanPham
GO
CREATE TABLE SanPham
(
	MaSP	NVARCHAR(50) NOT NULL,
	TenSP	NVARCHAR(50) NULL,
	KichCo	NVARCHAR(10) NULL,
	MauSac	NVARCHAR(50) NULL,
	MaLoai  NVARCHAR(50) NULL,
	SoLuongTon	int NULL,
	DonGia   Float NULL,
	Anh   NVARCHAR(50) NULL,
	ChatLieu   NVARCHAR(50) NULL,
	CONSTRAINT PK_SanPham PRIMARY KEY(MaSP),
	CONSTRAINT FK_QLLoaiAo_SanPham FOREIGN KEY(MaLoai) REFERENCES QLLoaiAo,
)

IF OBJECT_ID('HoaDon') IS NOT NULL
	DROP TABLE HoaDon
GO
CREATE TABLE HoaDon
(
	MaHD	    int identity(1,1) NOT NULL,
	TenDNKH		NVARCHAR(50) NOT NULL,
	NgayXuat	DATE NULL,
	TenDN		NVARCHAR(50) NOT NULL,
	CONSTRAINT PK_HoaDon PRIMARY KEY(MaHD),
	CONSTRAINT FK_KhachHang_HoaDon FOREIGN KEY(TenDNKH) REFERENCES KhachHang,
	CONSTRAINT FK_Users_HoaDon FOREIGN KEY(TenDN) REFERENCES Users,
)

IF OBJECT_ID('HoaDonChiTiet') IS NOT NULL
	DROP TABLE HoaDonChiTiet
GO
CREATE TABLE HoaDonChiTiet
(
	MaHoaDonChiTiet int identity(1,1) NOT NULL,
	MaHD	    int NOT NULL,
	MaSP		NVARCHAR(50) NOT NULL,
	SoLuong		int NOT NULL,
	DonGia		FLOAT NULL,
	Malogo		NVARCHAR(50) NOT NULL,
	GiaLogo		FLOAT NULL,
	TongTien	FLOAT NULL,
	CONSTRAINT PK_HoaDonChiTiet PRIMARY KEY(MaHoaDonChiTiet),
	CONSTRAINT FK_HoaDon_HoaDonChiTiet FOREIGN KEY(MaHD) REFERENCES HoaDon,
	CONSTRAINT FK_SanPham_HoaDonChiTiet FOREIGN KEY(MaSP) REFERENCES SanPham,
	CONSTRAINT FK_QLLogo_HoaDonChiTiet FOREIGN KEY(Malogo) REFERENCES QLLogo,
)

-----

IF OBJECT_ID('SanPhamMoi') IS NOT NULL
	DROP TABLE SanPhamMoi
GO
CREATE TABLE SanPhamMoi
(
	MaSPM	NVARCHAR(50) NOT NULL,
	TenSPM	NVARCHAR(50) NULL,
	KichCo	NVARCHAR(10) NULL,
	MauSac	NVARCHAR(50) NULL,
	MaLoai  NVARCHAR(50) NULL,
	SoLuongTon	int NULL,
	DonGia   Float NULL,
	Anh   NVARCHAR(50) NULL,
	ChatLieu   NVARCHAR(50) NULL,
	CONSTRAINT PK_SanPhamMoi PRIMARY KEY(MaSPM),
	CONSTRAINT FK_QLLoaiAo_SanPhamMoi FOREIGN KEY(MaLoai) REFERENCES QLLoaiAo,
)

-----
insert into QLLoaiAo(MaLoai,PhanLoai) values(N'ML01',N'Sản phẩm có sẵn');
insert into QLLoaiAo(MaLoai,PhanLoai) values(N'ML02',N'Dịch vụ áo phông');
--
select * from QLLoaiAo


insert into SanPham(MaSP,TenSP,KichCo,MauSac,MaLoai,SoLuongTon,DonGia,Anh,ChatLieu) values(N'SP01',N'Áo phông',N'Size M',N'Blue',N'ML01',30,180000,N'anh1.jpg',N'Cotton');
insert into SanPham(MaSP,TenSP,KichCo,MauSac,MaLoai,SoLuongTon,DonGia,Anh,ChatLieu) values(N'SP02',N'Áo phông',N'Size S',N'Pink',N'ML01',30,180000,N'anh2.jpg',N'Cotton');
insert into SanPham(MaSP,TenSP,KichCo,MauSac,MaLoai,SoLuongTon,DonGia,Anh,ChatLieu) values(N'SP03',N'Áo phông Chính ngu',N'Size XXL',N'Violet',N'ML01',30,180000,N'anh3.jpg',N'Cotton');
insert into SanPham(MaSP,TenSP,KichCo,MauSac,MaLoai,SoLuongTon,DonGia,Anh,ChatLieu) values(N'SP04',N'Áo phông',N'Size XL',N'Black',N'ML01',30,180000,N'anh4.jpg',N'Cotton');
insert into SanPham(MaSP,TenSP,KichCo,MauSac,MaLoai,SoLuongTon,DonGia,Anh,ChatLieu) values(N'SP05',N'Áo phông',N'Size L',N'Green',N'ML01',30,180000,N'anh5.jpg',N'Cotton');
insert into SanPham(MaSP,TenSP,KichCo,MauSac,MaLoai,SoLuongTon,DonGia,Anh,ChatLieu) values(N'SP06',N'Áo phông',N'Size S',N'Yellow',N'ML01',30,180000,N'anh6.jpg',N'Cotton');
insert into SanPham(MaSP,TenSP,KichCo,MauSac,MaLoai,SoLuongTon,DonGia,Anh,ChatLieu) values(N'SP07',N'Áo phông',N'Size S',N'Yellow',N'ML01',30,180000,N'anh7.jpg',N'Cotton');
insert into SanPham(MaSP,TenSP,KichCo,MauSac,MaLoai,SoLuongTon,DonGia,Anh,ChatLieu) values(N'SP08',N'Áo phông',N'Size S',N'Yellow',N'ML01',30,180000,N'anh8.jpg',N'Cotton');
insert into SanPham(MaSP,TenSP,KichCo,MauSac,MaLoai,SoLuongTon,DonGia,Anh,ChatLieu) values(N'SP09',N'Áo phông',N'Size S',N'Yellow',N'ML01',30,180000,N'anh9.jpg',N'Cotton');
insert into SanPham(MaSP,TenSP,KichCo,MauSac,MaLoai,SoLuongTon,DonGia,Anh,ChatLieu) values(N'SP10',N'Áo phông',N'Size S',N'Yellow',N'ML01',30,180000,N'anh10.jpg',N'Cotton');
insert into SanPham(MaSP,TenSP,KichCo,MauSac,MaLoai,SoLuongTon,DonGia,Anh,ChatLieu) values(N'SP11',N'Áo phông',N'Size S',N'Yellow',N'ML01',30,180000,N'anh11.jpg',N'Cotton');
insert into SanPham(MaSP,TenSP,KichCo,MauSac,MaLoai,SoLuongTon,DonGia,Anh,ChatLieu) values(N'SP12',N'Áo phông',N'Size S',N'Yellow',N'ML01',30,180000,N'anh12.jpg',N'Cotton');
insert into SanPham(MaSP,TenSP,KichCo,MauSac,MaLoai,SoLuongTon,DonGia,Anh,ChatLieu) values(N'SP13',N'Áo phông',N'Size S',N'Yellow',N'ML01',30,180000,N'anh13.jpg',N'Cotton');
insert into SanPham(MaSP,TenSP,KichCo,MauSac,MaLoai,SoLuongTon,DonGia,Anh,ChatLieu) values(N'SP14',N'Áo phông',N'Size S',N'Yellow',N'ML01',30,180000,N'anh14.jpg',N'Cotton');
insert into SanPham(MaSP,TenSP,KichCo,MauSac,MaLoai,SoLuongTon,DonGia,Anh,ChatLieu) values(N'SP15',N'Áo phông',N'Size S',N'Yellow',N'ML01',30,180000,N'anh15.jpg',N'Cotton');
insert into SanPham(MaSP,TenSP,KichCo,MauSac,MaLoai,SoLuongTon,DonGia,Anh,ChatLieu) values(N'SP16',N'Áo phông',N'Size S',N'Yellow',N'ML01',30,180000,N'anh16.jpg',N'Cotton');
--
select * from SanPham
----

insert into SanPhamMoi(MaSPM,TenSPM,KichCo,MauSac,MaLoai,SoLuongTon,DonGia,Anh,ChatLieu) values(N'SPM01',N'T-Shirt Play Game',N'Size M',N'Blue',N'ML01',30,180000,N'new1.jpg',N'Cotton');
insert into SanPhamMoi(MaSPM,TenSPM,KichCo,MauSac,MaLoai,SoLuongTon,DonGia,Anh,ChatLieu) values(N'SPM02',N'Áo phông My Cult',N'Size M',N'Blue',N'ML01',30,180000,N'new2.jpg',N'Cotton');
insert into SanPhamMoi(MaSPM,TenSPM,KichCo,MauSac,MaLoai,SoLuongTon,DonGia,Anh,ChatLieu) values(N'SPM03',N'Áo phông White Cat',N'Size M',N'Blue',N'ML01',30,180000,N'new3.jpg',N'Cotton');
insert into SanPhamMoi(MaSPM,TenSPM,KichCo,MauSac,MaLoai,SoLuongTon,DonGia,Anh,ChatLieu) values(N'SPM04',N'Áo phông Stupid Cat',N'Size M',N'Blue',N'ML01',30,180000,N'new4.jpg',N'Cotton');
insert into SanPhamMoi(MaSPM,TenSPM,KichCo,MauSac,MaLoai,SoLuongTon,DonGia,Anh,ChatLieu) values(N'SPM05',N'Áo phông Meow Ngu',N'Size M',N'Blue',N'ML01',30,180000,N'new5.jpg',N'Cotton');
insert into SanPhamMoi(MaSPM,TenSPM,KichCo,MauSac,MaLoai,SoLuongTon,DonGia,Anh,ChatLieu) values(N'SPM06',N'Áo phông Cameow',N'Size M',N'Blue',N'ML01',30,180000,N'new6.jpg',N'Cotton');
insert into SanPhamMoi(MaSPM,TenSPM,KichCo,MauSac,MaLoai,SoLuongTon,DonGia,Anh,ChatLieu) values(N'SPM07',N'Áo phông Trash',N'Size M',N'Blue',N'ML01',30,180000,N'new7.jpg',N'Cotton');
insert into SanPhamMoi(MaSPM,TenSPM,KichCo,MauSac,MaLoai,SoLuongTon,DonGia,Anh,ChatLieu) values(N'SPM08',N'Áo phông Ninja Cat',N'Size M',N'Blue',N'ML01',30,180000,N'new8.jpg',N'Cotton');

select * from SanPhamMoi

---

insert into QLLogo(MaLogo,Anh,Gia,KieuIn,GiaLogo) values(N'LG1',N'logo1.jpg',N'30000',N'In dạ quang',N'20000');
insert into QLLogo(MaLogo,Anh,Gia,KieuIn,GiaLogo) values(N'LG2',N'logo2.jpg',N'30000',N'In dạ quang',N'20000');
insert into QLLogo(MaLogo,Anh,Gia,KieuIn,GiaLogo) values(N'LG3',N'logo3.jpg',N'30000',N'In dạ quang',N'20000');
insert into QLLogo(MaLogo,Anh,Gia,KieuIn,GiaLogo) values(N'LG4',N'logo4.jpg',N'30000',N'In dạ quang',N'20000');
insert into QLLogo(MaLogo,Anh,Gia,KieuIn,GiaLogo) values(N'LG5',N'logo5.jpg',N'30000',N'In dạ quang',N'20000');
insert into QLLogo(MaLogo,Anh,Gia,KieuIn,GiaLogo) values(N'LG6',N'logo6.jpg',N'30000',N'In dạ quang',N'20000');
insert into QLLogo(MaLogo,Anh,Gia,KieuIn,GiaLogo) values(N'LG7',N'logo7.jpg',N'30000',N'In dạ quang',N'20000');
insert into QLLogo(MaLogo,Anh,Gia,KieuIn,GiaLogo) values(N'LG8',N'logo8.jpg',N'30000',N'In dạ quang',N'20000');
--
select * from QLLogo
----

insert into KhachHang(TenDNKH,TenKH,Sdt,DiaChi,MatKhau,Email) values(N'hoanganh',N'Nguyễn Hoang Anh',0999999999,N'Nam Định',N'1',N'anh@gmail.com');
---
select * from KhachHang