public class Test {
    public static void main(String[] args) {
        QuanLySach qlSach = new QuanLySach();
        Sach sgk = new SachGiaoTrinh(
            "GT001",
            "Giáo trình OOP",
            "Nguyễn Văn B",
            2022,
            15,
            "Lập trình hướng đối tượng",
            "Đại học"
        );
        Sach stt = new SachTieuThuyet(
            "TT001",
            "Harry Potter",
            "J.K. Rowling",
            2001,
            50,
            "Fantasy",
            true
        );
        Sach s = new Sach(
            "S001",
            "Java Cơ bản",
            "Nguyễn Văn A",
            2023,
            10
        );
        qlSach.themSach(s);
        qlSach.themSach(sgk);
        qlSach.themSach(stt);
        System.out.println("\n=== DANH SÁCH TẤT CẢ CÁC SÁCH ===");
        qlSach.hienThiTatCa();
        System.out.println("\n=== TÌM KIẾM SÁCH THEO MÃ 'TT001' ===");
        Sach timThay = qlSach.timKiemTheoMa("TT001");
        if (timThay != null) {
            System.out.println("Đã tìm thấy:\n" + timThay);
        } else {
            System.out.println("Không tìm thấy sách!");
        }
        System.out.println("\n=== CẬP NHẬT SÁCH 'S001' ===");
        qlSach.capNhatSach("S001");
        System.out.println("\n=== XÓA SÁCH 'GT001' ===");
        qlSach.xoaSachTheoMa("GT001");
        System.out.println("\n=== DANH SÁCH SAU KHI CẬP NHẬT / XÓA ===");
        qlSach.hienThiTatCa();
        System.out.println("\n=== DEMO KẾ THỪA & ĐA HÌNH ===");
        Sach sach1 = new SachGiaoTrinh("GT002", "Cấu trúc dữ liệu", "Lê Văn C", 2021, 12, "Cấu trúc dữ liệu", "Cao đẳng");
        Sach sach2 = new SachTieuThuyet("TT002", "Sherlock Holmes", "Arthur Conan Doyle", 1892, 8, "Trinh thám", false);
        System.out.println(sach1.toString());
        System.out.println("----------------------");
        System.out.println(sach2.toString());
    }
}
