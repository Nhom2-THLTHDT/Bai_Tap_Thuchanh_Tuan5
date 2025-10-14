CREATE DATABASE DangThaiNguyen_224_QLBH;
GO
USE DangThaiNguyen_224_QLBH;
GO
-- Bảng KhachHang--
CREATE TABLE KhachHang (
    maKH CHAR(7) PRIMARY KEY,  -- mã khách hàng--
    tenKH NVARCHAR(50),        -- tên khách hàng--
    diaChiKH NVARCHAR(100),    -- địa chỉ--
    SDT CHAR(10),              -- số điện thoại--
    soTaiKhoan VARCHAR(20),    -- số tài khoản--
    tienNo MONEY               -- số tiền nợ--
);

-- Bảng NhanVien--
CREATE TABLE NhanVien (
    maNV CHAR(7) PRIMARY KEY,
    tenNV NVARCHAR(50),
    diaChiNV NVARCHAR(100),
    SDT CHAR(10),
    ngaySinh DATE,
    ngayVL DATE
);

-- Bảng NhaCungCap--
CREATE TABLE NhaCungCap (
    maNCC CHAR(7) PRIMARY KEY,
    tenNCC NVARCHAR(50),
    diaChiNCC NVARCHAR(100),
    SDT CHAR(10),
    nhanVienLienHe NVARCHAR(50)
);

-- Bảng SanPham--
CREATE TABLE SanPham (
    maSP CHAR(7) PRIMARY KEY,
    tenSP NVARCHAR(100),
    donGiaBan MONEY,
    soLuongHienCo INT,
    soLuongCanDat SMALLINT
);

-- Bảng DonDatHang_HoaDon--
CREATE TABLE DonDatHang_HoaDon (
    maHD CHAR(7) PRIMARY KEY,
    ngayTaoHD DATE,
    ngayGiaoHang DATE,
    soTGDoiTra INT,
    hinhThucThanhToan NVARCHAR(50),
    ngayThanhToan DATE,
    tongGiaTriHD MONEY
);

-- Bảng ChiTietDonHang--
CREATE TABLE ChiTietDonHang (
    maHD CHAR(7),   -- khóa ngoại tham chiếu DonDatHang_HoaDon (chưa tạo FK)--
    maSP CHAR(7),   -- khóa ngoại tham chiếu SanPham (chưa tạo FK)--
    soLuong INT,
    donGia MONEY,
    PRIMARY KEY (maHD, maSP)
);

-- Bảng PhieuNhap--
CREATE TABLE PhieuNhap (
    maPN CHAR(7) PRIMARY KEY,
    ngayNhapHang DATE
);

-- Bảng ChiTietPhieuNhap
CREATE TABLE ChiTietPhieuNhap (
    maPN CHAR(7),   -- khóa ngoại tham chiếu PhieuNhap (chưa tạo FK)--
    maSP CHAR(7),   -- khóa ngoại tham chiếu SanPham (chưa tạo FK)--
    soLuongNhap INT,
    giaNhap MONEY,
    PRIMARY KEY (maPN, maSP)
);
-- Thông báo kết quả--
PRINT N'===================================';
PRINT N'TẠO DATABASE THÀNH CÔNG!';
PRINT N'Database: DangThaiNguyen_224_QLBH';
PRINT N'Số bảng đã tạo: 8';
PRINT N'===================================';


-- Kiểm tra các bảng đã tạo--
SELECT TABLE_NAME AS [Tên Bảng]
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE'
ORDER BY TABLE_NAME;
-----------------------------------------------------------
--Bổ Sung các thuộc tính cho các bảng đã tạo ở tuần trước--
-----------------------------------------------------------
--Bảng Khách Hàng--

ALTER TABLE KhachHang ALTER COLUMN maKH CHAR(7) NOT NULL;
ALTER TABLE KhachHang ALTER COLUMN tenKH NVARCHAR(50) NOT NULL;
ALTER TABLE KhachHang ALTER COLUMN diaChiKH NVARCHAR(100) NOT NULL;
ALTER TABLE KhachHang ALTER COLUMN SDT CHAR(10) NOT NULL;
ALTER TABLE KhachHang ALTER COLUMN soTaiKhoan VARCHAR(20) NULL;
ALTER TABLE KhachHang ALTER COLUMN tienNo MONEY NOT NULL;
--Bảng Nhân Viên--

ALTER TABLE NhanVien ALTER COLUMN maNV CHAR(7) NOT NULL;
ALTER TABLE NhanVien ALTER COLUMN tenNV NVARCHAR(50) NOT NULL;
ALTER TABLE NhanVien ALTER COLUMN diaChiNV NVARCHAR(100) NOT NULL;
ALTER TABLE NhanVien ALTER COLUMN SDT CHAR(10) NOT NULL;
ALTER TABLE NhanVien ALTER COLUMN ngaySinh DATE NOT NULL;
--Bảng Nhà Cung Cấp--

ALTER TABLE NhaCungCap ALTER COLUMN maNCC CHAR(7) NOT NULL;
ALTER TABLE NhaCungCap ALTER COLUMN tenNCC NVARCHAR(50) NOT NULL;
ALTER TABLE NhaCungCap ALTER COLUMN diaChiNCC NVARCHAR(100) NOT NULL;
ALTER TABLE NhaCungCap ALTER COLUMN SDT CHAR(10) NOT NULL;
--Bảng Sản Phẩm--

ALTER TABLE SanPham ALTER COLUMN maSP CHAR(7) NOT NULL;
ALTER TABLE SanPham ALTER COLUMN tenSP NVARCHAR(100) NOT NULL;
ALTER TABLE SanPham ALTER COLUMN donGiaBan MONEY NOT NULL;
ALTER TABLE SanPham ALTER COLUMN soLuongHienCo INT NOT NULL;
--Bảng DonDatHang_HoaDon--

ALTER TABLE DonDatHang_HoaDon ALTER COLUMN maHD CHAR(7) NOT NULL;
ALTER TABLE DonDatHang_HoaDon ALTER COLUMN ngayTaoHD DATE NOT NULL;
ALTER TABLE DonDatHang_HoaDon ALTER COLUMN ngayGiaoHang DATE NULL;
ALTER TABLE DonDatHang_HoaDon ALTER COLUMN soTGDoiTra INT NULL;
ALTER TABLE DonDatHang_HoaDon ALTER COLUMN hinhThucThanhToan NVARCHAR(50) NOT NULL;
ALTER TABLE DonDatHang_HoaDon ALTER COLUMN ngayThanhToan DATE NULL;
ALTER TABLE DonDatHang_HoaDon ALTER COLUMN tongGiaTriHD MONEY NOT NULL;
--Bảng ChiTietDonHang--

ALTER TABLE ChiTietDonHang ALTER COLUMN maHD CHAR(7) NOT NULL;
ALTER TABLE ChiTietDonHang ALTER COLUMN maSP CHAR(7) NOT NULL;
ALTER TABLE ChiTietDonHang ALTER COLUMN soLuong INT NOT NULL;
ALTER TABLE ChiTietDonHang ALTER COLUMN donGia MONEY NOT NULL;
--Bảng PhieuNhap--

ALTER TABLE PhieuNhap ALTER COLUMN maPN CHAR(7) NOT NULL;
ALTER TABLE PhieuNhap ALTER COLUMN ngayNhapHang DATE NOT NULL;
--Bảng ChiTietPhieuNhap--

ALTER TABLE ChiTietPhieuNhap ALTER COLUMN maPN CHAR(7) NOT NULL;
ALTER TABLE ChiTietPhieuNhap ALTER COLUMN maSP CHAR(7) NOT NULL;
ALTER TABLE ChiTietPhieuNhap ALTER COLUMN soLuongNhap INT NOT NULL;


----------------------------------------------
--BỔ SUNG CÁC BẢNG LƯU THÔNG TIN KHUYẾN MÃI --  
----------------------------------------------
--câu 1 Bổ sung các table lưu giữ thông tin về khuyến mãi --
CREATE TABLE tblKhuyenMai (
    MaKM INT IDENTITY(1,1) PRIMARY KEY, -- Khóa chính, tự tăng, mã khuyến mãi duy nhất--
    TenKM NVARCHAR(100) NOT NULL,       -- Tên chương trình khuyến mãi--
    MoTa NVARCHAR(255),                 -- Mô tả chi tiết khuyến mãi--
    TiLeGiam DECIMAL(5,2) CHECK (TiLeGiam >= 0 AND TiLeGiam <= 100), -- Tỷ lệ giảm giá (0–100%)--
    NgayBD DATE NOT NULL,               -- Ngày bắt đầu áp dụng--
    NgayKT DATE NOT NULL,               -- Ngày kết thúc áp dụng--
    CONSTRAINT CK_Ngay_KM CHECK (NgayBD < NgayKT) -- Ngày bắt đầu phải nhỏ hơn ngày kết thúc--
);
--câu 2 Bổ sung các table lưu giữ thông tin về Position, một nhân viên có thể đảm nhiệm 2 position và mỗi position có thể có nhiều nhân viên đảm nhiệm 

-- Bảng chức vụ--
CREATE TABLE Position (
    maPosition CHAR(5) PRIMARY KEY, -- Mã chức vụ--
    tenPosition NVARCHAR(50) NOT NULL -- Tên chức vụ--
);

-- Bảng liên kết nhân viên và chức vụ--
CREATE TABLE NhanVien_Position (
    maNV CHAR(7), -- Mã nhân viên--
    maPosition CHAR(5), -- Mã chức vụ--
    PRIMARY KEY (maNV, maPosition),
    FOREIGN KEY (maNV) REFERENCES NhanVien(maNV),
    FOREIGN KEY (maPosition) REFERENCES Position(maPosition)
);
--câu 3 Tách cột CustAddress (thuộc tính phức hợp) dựa trên nội dung 2.1.4.2--

-- Xóa cột địa chỉ cũ--
ALTER TABLE KhachHang DROP COLUMN diaChiKH;

-- Thêm các cột địa chỉ mới--
ALTER TABLE KhachHang ADD soNha NVARCHAR(20) NOT NULL;
ALTER TABLE KhachHang ADD duong NVARCHAR(50) NOT NULL;
ALTER TABLE KhachHang ADD phuong NVARCHAR(50) NOT NULL;
ALTER TABLE KhachHang ADD quan NVARCHAR(50) NOT NULL;
ALTER TABLE KhachHang ADD thanhPho NVARCHAR(50) NOT NULL;
--câu 4 Bổ sung cột OrdInvStatus (Trạng thái đơn hàng), chỉ nhận một trong các giá trị sau: “Chờ duyệt”, “Đã duyệt – Đang đóng gói”, “Đang giao”, “Đã giao”--

ALTER TABLE DonDatHang_HoaDon ADD OrdInvStatus NVARCHAR(50) NOT NULL
    CHECK (OrdInvStatus IN (
        N'Chờ duyệt',
        N'Đã duyệt – Đang đóng gói',
        N'Đang giao',
        N'Đã giao'
    ));
--câu 5 Tạo Database cho bài toán Sale Management sau khi đã hoàn thành câu 1 và câu 2 (file *.sql) với đầy đủ các Constraint cần thiết (thêm dòng chú thích khi thiết lập từng constraint): --
--câu a--
-- Đảm bảo email duy nhất--
ALTER TABLE KHACHHANG
ADD CONSTRAINT UQ_KHACHHANG_EMAIL UNIQUE (EMAIL);

--Kiểm tra định dạng email hợp lệ--
ALTER TABLE KHACHHANG
ADD CONSTRAINT CK_KHACHHANG_EMAIL
CHECK (
    EMAIL LIKE '[A-Za-z]%@gmail.com' OR
    EMAIL LIKE '[A-Za-z]%@yahoo.com' OR
    EMAIL LIKE '[A-Za-z]%@ute.udn.vn');
--câu b--
-- Thêm ràng buộc duy nhất cho số điện thoại
ALTER TABLE tblCustomer
ADD CONSTRAINT UQ_tblCustomer_TelNo UNIQUE (TelNo);

-- Thêm ràng buộc kiểm tra định dạng số điện thoại: chỉ được phép là chuỗi số có 10 hoặc 11 chữ số
ALTER TABLE tblCustomer
ADD CONSTRAINT CK_tblCustomer_TelNo_Format CHECK (
    TelNo LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]' OR
    TelNo LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'
);
-- Thêm ràng buộc duy nhất cho số điện thoại
ALTER TABLE tblCustomer
ADD CONSTRAINT UQ_tblCustomer_TelNo UNIQUE (TelNo);

-- Thêm ràng buộc kiểm tra định dạng số điện thoại: chỉ được phép là chuỗi số có 10 hoặc 11 chữ số
ALTER TABLE tblCustomer
ADD CONSTRAINT CK_tblCustomer_TelNo_Format CHECK (
    TelNo LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]' OR
    TelNo LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'
);
--câu c--
-- tblCustomer: Ngày sinh đảm bảo đủ 18 tuổi
ALTER TABLE tblCustomer
ADD CONSTRAINT CK_tblCustomer_DoB
CHECK (DATEDIFF(YEAR, DoB, GETDATE()) >= 18);

-- tblEmployee: Ngày sinh đảm bảo đủ 18 tuổi
ALTER TABLE tblEmployee
ADD CONSTRAINT CK_tblEmployee_DoB
CHECK (DATEDIFF(YEAR, DoB, GETDATE()) >= 18);
--câu d--
-- tblCustomer: Giới tính chỉ có thể là 'F' hoặc 'M', mặc định 'F'
ALTER TABLE tblCustomer
ADD CONSTRAINT CK_tblCustomer_Gender CHECK (Gender IN ('F', 'M'));

ALTER TABLE tblCustomer
ADD CONSTRAINT DF_tblCustomer_Gender DEFAULT 'F' FOR Gender;

-- tblEmployee: Giới tính chỉ có thể là 'F' hoặc 'M', mặc định 'F'
ALTER TABLE tblEmployee
ADD CONSTRAINT CK_tblEmployee_Gender CHECK (Gender IN ('F', 'M'));

ALTER TABLE tblEmployee
ADD CONSTRAINT DF_tblEmployee_Gender DEFAULT 'F' FOR Gender;
--câu e--
ALTER TABLE tblEmployee
ADD CONSTRAINT CK_tblEmployee_Position
CHECK (Position IN (N'Nhân viên bán hàng', N'Nhân viên kho', N'Nhân viên giao hàng', N'Quản lý viên'));

ALTER TABLE tblEmployee
ADD CONSTRAINT DF_tblEmployee_Position DEFAULT N'Nhân viên bán hàng' FOR Position;
--câu f--

ALTER TABLE tblInvoice
ADD CONSTRAINT CK_tblInvoice_InvDate_OrderDate
CHECK (InvDate >= OrderDate);
--câu g--

ALTER TABLE tblInvoice
ADD CONSTRAINT CK_tblInvoice_DelDate_InvDate
CHECK (DelDate >= InvDate);
--câu h--
-- Thêm ràng buộc kiểm tra giá trị hợp lệ cho DelStatus
ALTER TABLE tblOrderInvoice
ADD CONSTRAINT CK_tblOrderInvoice_DelStatus CHECK (
    DelStatus IN ('BT', 'ER', 'LL')
);

-- Thiết lập giá trị mặc định là 'BT' (Bình thường)
ALTER TABLE tblOrderInvoice
ADD CONSTRAINT DF_tblOrderInvoice_DelStatus DEFAULT 'BT' FOR DelStatus;
--câu i--
-- Ràng buộc kiểm tra giá trị hợp lệ
ALTER TABLE tblSupplier
ADD CONSTRAINT CK_tblSupplier_Address CHECK (
    Address IN (N'Đà Nẵng', N'TP Hồ Chí Minh', N'Quảng Nam')
);

-- Thiết lập giá trị mặc định là 'Đà Nẵng'
ALTER TABLE tblSupplier
ADD CONSTRAINT DF_tblSupplier_Address DEFAULT N'Đà Nẵng' FOR Address;
-- Ràng buộc kiểm tra giá trị hợp lệ
ALTER TABLE tblCustomer
ADD CONSTRAINT CK_tblCustomer_Address CHECK (
    Address IN (N'Đà Nẵng', N'TP Hồ Chí Minh', N'Quảng Nam')
);

-- Thiết lập giá trị mặc định là 'Đà Nẵng'
ALTER TABLE tblCustomer
ADD CONSTRAINT DF_tblCustomer_Address DEFAULT N'Đà Nẵng' FOR Address;
--câu j--
-- tblCustomer: cột Balance
ALTER TABLE tblCustomer
ADD CONSTRAINT CK_tblCustomer_Balance CHECK (Balance >= 0);

-- tblEmployee: cột Salary
ALTER TABLE tblEmployee
ADD CONSTRAINT CK_tblEmployee_Salary CHECK (Salary >= 0);

-- tblOrderInvoice: cột OrderTotalMoney
ALTER TABLE tblOrderInvoice
ADD CONSTRAINT CK_tblOrderInvoice_OrderTotalMoney CHECK (OrderTotalMoney >= 0);

-- tblOrderInvoiceDetail: cột QtyOrdered, Amount
ALTER TABLE tblOrderInvoiceDetail
ADD CONSTRAINT CK_tblOrderInvoiceDetail_QtyOrdered CHECK (QtyOrdered >= 0);
ALTER TABLE tblOrderInvoiceDetail
ADD CONSTRAINT CK_tblOrderInvoiceDetail_Amount CHECK (Amount >= 0);

-- tblProduct: cột QtyOnHand, UnitPrice, RecorderLevel--
ALTER TABLE tblProduct
ADD CONSTRAINT CK_tblProduct_QtyOnHand CHECK (QtyOnHand >= 0);
ALTER TABLE tblProduct
ADD CONSTRAINT CK_tblProduct_UnitPrice CHECK (UnitPrice >= 0);
ALTER TABLE tblProduct
ADD CONSTRAINT CK_tblProduct_RecorderLevel CHECK (RecorderLevel >= 0);
--câu 6 Tất cả các khóa ngoại nên thiết lập ràng buộc phụ thuộc khi Xóa/Update --
-- Thiết lập khóa ngoại: ChiTietDonHang → DonDatHang_HoaDon--
ALTER TABLE ChiTietDonHang
ADD CONSTRAINT FK_ChiTietDonHang_DonDatHang
FOREIGN KEY (maHD) REFERENCES DonDatHang_HoaDon(maHD)
ON DELETE CASCADE ON UPDATE CASCADE;

-- Thiết lập khóa ngoại: ChiTietDonHang → SanPham--
ALTER TABLE ChiTietDonHang
ADD CONSTRAINT FK_ChiTietDonHang_SanPham
FOREIGN KEY (maSP) REFERENCES SanPham(maSP)
ON DELETE CASCADE ON UPDATE CASCADE;

-- Thiết lập khóa ngoại: ChiTietPhieuNhap → PhieuNhap--
ALTER TABLE ChiTietPhieuNhap
ADD CONSTRAINT FK_ChiTietPhieuNhap_PhieuNhap
FOREIGN KEY (maPN) REFERENCES PhieuNhap(maPN)
ON DELETE CASCADE ON UPDATE CASCADE;

-- Thiết lập khóa ngoại: ChiTietPhieuNhap → SanPham--
ALTER TABLE ChiTietPhieuNhap
ADD CONSTRAINT FK_ChiTietPhieuNhap_SanPham
FOREIGN KEY (maSP) REFERENCES SanPham(maSP)
ON DELETE CASCADE ON UPDATE CASCADE;
--câu 7: Riêng đối với thiết lập Identity, bắt buộc phải thiết lập trong lúc định nghĩa bảng (chưa cho phép thiết với câu lệnh Alter table sau khi bảng đã có) 
--Đã có sử dụng identity ở câu 2--
--nhiều với dài quá cô ơiii :((( --



