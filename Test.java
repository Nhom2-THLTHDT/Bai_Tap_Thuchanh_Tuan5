public class Test {
    public static void main(String[] args) {
        QuanLySach ql = new QuanLySach();

        Sach sach1 = new Sach("S001", "C++ Cơ bản", "Trần Văn D", 2020, 20);
        Sach sach2 = new SachGiaoTrinh("GT001", "Giáo trình Mạng máy tính", "Ngô Thị H", 2021, 12, "Mạng máy tính", "Đại học");
        Sach sach3 = new SachTieuThuyet("TT001", "Chiến binh cầu vồng", "Andrea Hirata", 2005, 25, "Tâm lý xã hội", false);

        ql.themSach(sach1);
        ql.themSach(sach2);
        ql.themSach(sach3);

        System.out.println("\n=== DANH SÁCH SÁCH ===");
        ql.hienThiTatCa();

        System.out.println("\n=== TÌM KIẾM SÁCH THEO MÃ 'TT001' ===");
        Sach timThay = ql.timKiemTheoMa("TT001");
        System.out.println(timThay != null ? "Tìm thấy:\n" + timThay : "Không tìm thấy sách!");

        System.out.println("\n=== CẬP NHẬT SÁCH 'S001' ===");
        Sach sachMoi = new Sach("S001", "C++ Nâng cao", "Trần Văn D", 2022, 15);
        ql.capNhatSach("S001", sachMoi);

        System.out.println("\n=== XÓA SÁCH 'GT001' ===");
        ql.xoaSachTheoMa("GT001");

        System.out.println("\n=== DANH SÁCH SAU KHI CẬP NHẬT / XÓA ===");
        ql.hienThiTatCa();

        System.out.println("\n=== DEMO KẾ THỪA & ĐA HÌNH ===");
        Sach demo1 = new SachGiaoTrinh("GT002", "Phân tích thiết kế hệ thống", "Lê Minh T", 2022, 10, "PTTKHT", "Cao đẳng");
        Sach demo2 = new SachTieuThuyet("TT002", "Dế Mèn Phiêu Lưu Ký", "Tô Hoài", 1941, 18, "Thiếu nhi", false);
        System.out.println(demo1);
        System.out.println("----------------------");
        System.out.println(demo2);
    }
}