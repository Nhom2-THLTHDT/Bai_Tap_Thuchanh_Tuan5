import java.util.ArrayList;

public class QuanLySach {
    private ArrayList<Sach> danhSach;

    public QuanLySach() {
        danhSach = new ArrayList<>();
    }

    // Thêm sách
    public void themSach(Sach s) {
        danhSach.add(s);
    }

    // Xóa sách theo mã
    public boolean xoaSach(String maSach) {
        return danhSach.removeIf(s -> s.getMaSach().equalsIgnoreCase(maSach));
    }

    // Cập nhật thông tin (ví dụ: cập nhật số lượng)
    public boolean capNhatSoLuong(String maSach, int soLuongMoi) {
        for (Sach s : danhSach) {
            if (s.getMaSach().equalsIgnoreCase(maSach)) {
                s.setSoLuong(soLuongMoi);
                return true;
            }
        }
        return false;
    }

    // Tìm kiếm sách theo mã
    public Sach timKiemTheoMa(String maSach) {
        for (Sach s : danhSach) {
            if (s.getMaSach().equalsIgnoreCase(maSach)) {
                return s;
            }
        }
        return null;
    }

    // Hiển thị danh sách sách
    public void hienThiDanhSach() {
        if (danhSach.isEmpty()) {
            System.out.println("Danh sach rong.");
        } else {
            for (Sach s : danhSach) {
                System.out.println(s.toString());
            }
        }
    }
}
