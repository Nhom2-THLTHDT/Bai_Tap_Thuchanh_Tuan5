public class TestTuan6 {
    public static void main(String[] args) {
        QuanLySach qlSach = new QuanLySach();

        Sach sgk = new SachGiaoTrinh(
            "GT101",
            "Giao trinh OOP",
            "Nguyen Van B",
            2022,
            15,
            "Lap trinh huong doi tuong",
            "Dai hoc"
        );

        Sach stt = new SachTieuThuyet(
            "TT101",
            "Mat troi nho len",
            "Pham Anh Thu",
            2019,
            35,
            "Tinh cam",
            true
        );

        Sach s = new Sach(
            "S101",
            "Java Co ban",
            "Nguyen Van A",
            2023,
            10
        );

        qlSach.themSach(s);
        qlSach.themSach(sgk);
        qlSach.themSach(stt);

        System.out.println("\n=== DANH SACH TAT CA CAC SACH ===");
        qlSach.hienThiTatCa();

        System.out.println("\n=== TIM KIEM SACH THEO MA 'TT101' ===");
        Sach timThay = qlSach.timKiemTheoMa("TT001");
        if (timThay != null) {
            System.out.println("Da tim thay:\n" + timThay);
        } else {
            System.out.println("Khong tim thay sach!");
        }

         System.out.println("\n=== CAP NHAT SACH 'S101' ===");
        qlSach.capNhatSach("S001");

        System.out.println("\n=== XOA SACH 'GT101' ===");
        qlSach.xoaSachTheoMa("GT101");

        System.out.println("\n=== DANH SACH SAU KHI CAP NHAT / XOA ===");
        qlSach.hienThiTatCa();

        System.out.println("\n=== DEMO KE THUA & DA HINH ===");
        Sach sach1 = new SachGiaoTrinh(
            "GT202",
            "Co so du lieu nang cao",
            "Nguyen Thi Hong",
            2020,
            10,
            "Co so du lieu",
            "Cao dang"
        );

        Sach sach2 = new SachTieuThuyet(
            "TT202",
            "Vuot qua song gio",
            "Doan Thanh Phong",
            2018,
            18,
            "Truyen cam hung",
            false
        );

        System.out.println(sach1.toString());
        System.out.println("----------------------");
        System.out.println(sach2.toString());
    }
}