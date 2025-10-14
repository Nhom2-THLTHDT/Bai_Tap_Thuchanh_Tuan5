public class Test {
    public static void main(String[] args) {
        Sach sach1 = new Sach("B001", "Lập trình Java", "Nguyễn Văn A", 2021, 5);

        Sach sach2 = new Sach();
        sach2.setMaSach("B002");
        sach2.setTieuDe("Cấu trúc dữ liệu");
        sach2.setTacGia("Trần Thị B");
        sach2.setNamXuatBan(2019);
        sach2.setSoLuong(3);

        sach1.hienThiThongTin();
        sach2.hienThiThongTin();
    }
}
