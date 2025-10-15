import java.util.ArrayList;
import java.util.Scanner;

public class QuanLySach {
    private ArrayList<Sach> danhSach;
    private Scanner sc = new Scanner(System.in);

    public QuanLySach() {
        danhSach = new ArrayList<>();
    }

    // Them sach vao danh sach
    public void themSach(Sach s) {
        danhSach.add(s);
        System.out.println("Da them sach thanh cong!");
    }

    // Xoa sach theo ma
    public boolean xoaSachTheoMa(String maSach) {
        for (Sach s : danhSach) {
            if (s.getMaSach().equalsIgnoreCase(maSach)) {
                danhSach.remove(s);
                System.out.println("Da xoa sach co ma: " + maSach);
                return true;
            }
        }
        System.out.println("Khong tim thay sach co ma: " + maSach);
        return false;
    }

    // Cap nhat thong tin sach
    public boolean capNhatSach(String maSach) {
        for (Sach s : danhSach) {
            if (s.getMaSach().equalsIgnoreCase(maSach)) {
                System.out.println("Nhap thong tin moi cho sach:");
                System.out.print("Tieu de: ");
                s.setTieuDe(sc.nextLine());
                System.out.print("Tac gia: ");
                s.setTacGia(sc.nextLine());
                System.out.print("Nam xuat ban: ");
                s.setNamXuatBan(Integer.parseInt(sc.nextLine()));
                System.out.print("So luong: ");
                s.setSoLuong(Integer.parseInt(sc.nextLine()));
                System.out.println("Cap nhat thanh cong!");
                return true;
            }
        }
        System.out.println("Khong tim thay sach co ma: " + maSach);
        return false;
    }

    // Tim sach theo ma
    public Sach timKiemTheoMa(String maSach) {
        for (Sach s : danhSach) {
            if (s.getMaSach().equalsIgnoreCase(maSach)) {
                return s;
            }
        }
        return null;
    }

    // Hien thi tat ca sach
    public void hienThiTatCa() {
        if (danhSach.isEmpty()) {
            System.out.println("Danh sach sach trong!");
        } else {
            System.out.println("=== DANH SACH TAT CA CAC SACH ===");
            for (Sach s : danhSach) {
                System.out.println("----------------------------");
                System.out.println(s.toString());
            }
        }
    }
}
