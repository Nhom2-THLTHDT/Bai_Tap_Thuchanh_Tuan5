public class test {
    public static void main(String[] args) {
        // Tao doi tuong bang constructor co tham so
        Sach sach1 = new Sach("S001", "Lap trinh Java", "Nguyen Van A", 2023, 10);
        Sach sach2 = new Sach("S002", "Cau truc du lieu va giai thuat", "Tran Thi B", 2022, 5);

        // Tao doi tuong bang constructor mac dinh + setter
        Sach sach3 = new Sach();
        sach3.setMaSach("S003");
        sach3.setTieuDe("Hoc may co ban");
        sach3.setTacGia("Le Van C");
        sach3.setNamXuatBan(2021);
        sach3.setSoLuong(7);

        // Hien thi thong tin sach
        System.out.println("===== DANH SACH SACH =====");
        sach1.hienThiThongTin();
        sach2.hienThiThongTin();
        sach3.hienThiThongTin();
    }
}
