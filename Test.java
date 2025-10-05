public class Test {
    public static void main(String[] args) {
        // Dùng constructor có tham số
        Sach s1 = new Sach("S001", "Toi thay hoa vang tren co xanh", "Nguyen Nhat Anh", 2010, 5);

        // Dùng constructor mặc định + setter
        Sach s2 = new Sach();
        s2.setMaSach("S002");
        s2.setTieuDe("Dac nhan tam");
        s2.setTacGia("Dale Carnegie");
        s2.setNamXuatBan(1936);
        s2.setSoLuong(10);

        // Dùng constructor sao chép
        Sach s3 = new Sach(s1);

        // Hiển thị thông tin
        s1.hienThiThongTin();
        s2.hienThiThongTin();
        s3.hienThiThongTin();
    }
}
