public class Test {
    public static void main(String[] args) {
        Sach sach1 = new Sach("B001", "Tài Xỉu: Hiểu nhanh – Chơi gọn", "Hà Cảnh Minh Hoàng", 2021, 5);

        Sach sach2 = new Sach();
        sach2.setMaSach("B002");
        sach2.setTieuDe("Mẹo hay Tài Xỉu ai cũng cần biết");
        sach2.setTacGia("Đặng Thái Nguyên");
        sach2.setNamXuatBan(2019);
        sach2.setSoLuong(3);
        sach1.hienThiThongTin();
        sach2.hienThiThongTin();
    }
}