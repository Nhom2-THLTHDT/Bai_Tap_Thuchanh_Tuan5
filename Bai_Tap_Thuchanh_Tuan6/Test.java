public class Test {
    public static void main(String[] args) {
        QuanLySach ql = new QuanLySach();

        // Tạo đối tượng các loại sách
        SachGiaoTrinh sgk = new SachGiaoTrinh("GT001", "Lap trinh Java", "Tran Van A", 2021, 3, "Lap trinh", "Dai hoc");
        SachTieuThuyet stt = new SachTieuThuyet("TT001", "Doraemon", "Fujiko F. Fujio", 1995, 10, "Thieu nhi", true);
        SachTieuThuyet stt2 = new SachTieuThuyet("TT002", "Harry Potter", "J.K. Rowling", 1997, 7, "Phieu luu", true);

        // Thêm vào danh sách
        ql.themSach(sgk);
        ql.themSach(stt);
        ql.themSach(stt2);

        // Hiển thị toàn bộ sách
        System.out.println("=== Danh sach sach hien co ===");
        ql.hienThiDanhSach();

        // Cập nhật số lượng
        ql.capNhatSoLuong("TT002", 12);

        // Tìm kiếm sách
        System.out.println("\n=== Tim kiem sach ma TT002 ===");
        Sach kq = ql.timKiemTheoMa("TT002");
        if (kq != null)
            System.out.println(kq);
        else
            System.out.println("Khong tim thay!");

        // Xóa sách
        ql.xoaSach("TT001");

        // Hiển thị lại danh sách sau khi xóa
        System.out.println("\n=== Danh sach sau khi xoa ===");
        ql.hienThiDanhSach();
    }
}
