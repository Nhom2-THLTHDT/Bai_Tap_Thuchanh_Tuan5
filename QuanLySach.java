import java.util.ArrayList;
import java.util.Scanner;
public class QuanLySach {
    private ArrayList<Sach> danhSach;
    private Scanner sc = new Scanner(System.in);

    public QuanLySach() {
        danhSach = new ArrayList<>();
    }

    public void themSach(Sach s) {
        danhSach.add(s);
        System.out.println("Đã thêm sách thành công!");
    }

    public boolean xoaSachTheoMa(String maSach) {
        for (Sach s : danhSach) {
            if (s.getMaSach().equalsIgnoreCase(maSach)) {
                danhSach.remove(s);
                System.out.println("Đã xóa sách có mã: " + maSach);
                return true;
            }
        }
        System.out.println("Không tìm thấy sách có mã: " + maSach);
        return false;
    }

    public boolean capNhatSach(String maSach) {
        for (Sach s : danhSach) {
            if (s.getMaSach().equalsIgnoreCase(maSach)) {
                System.out.println("Nhập thông tin mới cho sách:");
                System.out.print("Tiêu đề: ");
                s.setTieuDe(sc.nextLine());
                System.out.print("Tác giả: ");
                s.setTacGia(sc.nextLine());
                System.out.print("Năm xuất bản: ");
                s.setNamXuatBan(Integer.parseInt(sc.nextLine()));
                System.out.print("Số lượng: ");
                s.setSoLuong(Integer.parseInt(sc.nextLine()));
                System.out.println("Cập nhật thành công!");
                return true;
            }
        }
        System.out.println("Không tìm thấy sách có mã: " + maSach);
        return false;
    }

    public Sach timKiemTheoMa(String maSach) {
        for (Sach s : danhSach) {
            if (s.getMaSach().equalsIgnoreCase(maSach)) {
                return s;
            }
        }
        return null;
    }

    public void hienThiTatCa() {
        if (danhSach.isEmpty()) {
            System.out.println("Danh sách sách trống!");
        } else {
            System.out.println("DANH SÁCH TẤT CẢ CÁC SÁCH:");
            for (Sach s : danhSach) {
                System.out.println("----------------------------");
                System.out.println(s.toString());
            }
        }
    }
}
