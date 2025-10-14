create database Baitaptuan5Nguyen;
go
use Baitaptuan5Nguyen;
go

create table KHACHHANG
(
    MAKHACHHANG char(10) not null primary key,
    TENCONGTY nvarchar(100) null,
    TENGIAODICH nvarchar(100) null,
    DIACHI nvarchar(200) not null,
    EMAIL varchar(100) null unique check (EMAIL like '%@%'),
    DIENTHOAI varchar(15) not null unique check (DIENTHOAI like '%[0-9]%'),
    FAX varchar(15) null
);
create table NHANVIEN
(
    MANHANVIEN char(10) not null primary key,
    HO nvarchar(50) not null,
    TEN nvarchar(50) not null,
    NGAYSINH date not null,
    NGAYLAMVIEC date not null,
    DIACHI nvarchar(200) not null,
    DIENTHOAI varchar(15) not null unique check (DIENTHOAI like '%[0-9]%'),
    LUONGCOBAN money not null,
    PHUCAP money not null default 0 check(PHUCAP >= 0)
);
create table DONDADAT
(
    SOHOADON char(10) not null primary key,
    MAKHACHHANG char(10) not null,
    MANHANVIEN char(10) not null,
    NGAYDATHANG date null,
    NGAYGIAOHANG date null,
    NGAYCHUYENHANG date null,
    NOIGIAOHANG nvarchar(200) null,
    foreign key (MAKHACHHANG) references KHACHHANG(MAKHACHHANG),
    foreign key (MANHANVIEN) references NHANVIEN(MANHANVIEN)
);
create table NHACUNGCAP
(
    MACONGTY char(10) not null primary key,
    TENCONGTY nvarchar(100) not null,
    TENGIAODICH nvarchar(100) not null,
    DIACHI nvarchar(200) not null,
    DIENTHOAI varchar(15) not null unique check (DIENTHOAI like '%[0-9]%'),
    FAX varchar(15) null,
    EMAIL varchar(100) null unique check (EMAIL like '%@%')
);
create table LOAIHANG
(
    MALOAIHANG char(10) not null primary key,
    TENLOAIHANG nvarchar(100) not null
);
create table MATHANG
(
    MAHANG char(10) not null primary key,
    TENHANG nvarchar(100) not null,
    MACONGTY char(10) not null,
    MALOAIHANG char(10) not null,
    SOLUONG int not null check (SOLUONG >= 0),
    DONVITINH nvarchar(20) null,
    GIAHANG decimal(18,2) not null check (GIAHANG >= 0),
    foreign key (MACONGTY) references NHACUNGCAP(MACONGTY),
    foreign key (MALOAIHANG) references LOAIHANG(MALOAIHANG)
);
create table CHITIETDATHANG
(
    SOHOADON char(10) not null,
    MAHANG char(10) not null,
    GIABAN decimal(18,2) not null check (GIABAN >= 0),
    SOLUONG int not null check (SOLUONG > 0),
    MUCGIAMGIA decimal(5,2) check (MUCGIAMGIA between 0 and 100),
    primary key (SOHOADON, MAHANG),
    foreign key (SOHOADON) references DONDADAT(SOHOADON),
    foreign key (MAHANG) references MATHANG(MAHANG)
);
--bổ sung bài tập tuần 6
--=====================--
-- thiet lap gia tri mac dinh cau 1

alter table CHITIETDATHANG
    ADD CONSTRAINT DF_CHITIETDATHANG_SOLUONG DEFAULT 1 FOR SOLUONG;
alter table CHITIETDATHANG
    ADD CONSTRAINT DF_CHITIETDATHANG_MUCGIAMGIA DEFAULT 0 FOR MUCGIAMGIA;
-- bo sung cau 2
ALTER TABLE DONDADAT
ADD CONSTRAINT CK_NGAY_HOP_LE CHECK ( NGAYGIAOHANG >= NGAYDATHANG AND NGAYCHUYENHANG >= NGAYDATHANG);
-- BO SUNG CAU 3
ALTER TABLE NHANVIEN
ADD CONSTRAINT CK_TUOI_NHANVIEN CHECK(DATEDIFF(YEAR,NGAYSINH,GETDATE()) BETWEEN 18 AND 60 );
-- bài 4

-- Xóa ràng buộc cũ (nếu chưa đặt tên, SQL Server sẽ tự đặt tên ngẫu nhiên)
ALTER TABLE DONDADAT DROP CONSTRAINT FK_DONDADAT_KHACHHANG;
ALTER TABLE DONDADAT DROP CONSTRAINT FK_DONDADAT_NHANVIEN;

-- Tạo lại với CASCADE
ALTER TABLE DONDADAT
ADD CONSTRAINT FK_DONDADAT_KHACHHANG FOREIGN KEY (MAKHACHHANG)
REFERENCES KHACHHANG(MAKHACHHANG)
ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE DONDADAT
ADD CONSTRAINT FK_DONDADAT_NHANVIEN FOREIGN KEY (MANHANVIEN)
REFERENCES NHANVIEN(MANHANVIEN)
ON DELETE CASCADE ON UPDATE CASCADE;
--Xóa ràng buộc cũ (nếu chưa đặt tên, SQL Server sẽ tự đặt tên ngẫu nhiên)

ALTER TABLE MATHANG DROP CONSTRAINT FK_MATHANG_MACONGTY;
ALTER TABLE MATHANG DROP CONSTRAINT FK_MATHANG_MALOAIHANG;

ALTER TABLE MATHANG
ADD CONSTRAINT FK_MATHANG_MACONGTY FOREIGN KEY (MACONGTY)
REFERENCES NHACUNGCAP(MACONGTY)
ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE MATHANG
ADD CONSTRAINT FK_MATHANG_MALOAIHANG FOREIGN KEY (MALOAIHANG)
REFERENCES LOAIHANG(MALOAIHANG)
ON DELETE CASCADE ON UPDATE CASCADE;






