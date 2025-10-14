public class Sach {
    private String maSach;
    private String tieuDe;
    private String tacGia;
    private int namXuatBan;
    private int soLuong;

    // Constructor mặc định
    public Sach() {}

    // Constructor có tham số
    public Sach(String maSach, String tieuDe, String tacGia, int namXuatBan, int soLuong) {
        this.maSach = maSach;
        this.tieuDe = tieuDe;
        this.tacGia = tacGia;
        this.namXuatBan = namXuatBan;
        this.soLuong = soLuong;
    }

    // Constructor sao chép
    public Sach(Sach other) {
        this.maSach = other.maSach;
        this.tieuDe = other.tieuDe;
        this.tacGia = other.tacGia;
        this.namXuatBan = other.namXuatBan;
        this.soLuong = other.soLuong;
    }

    // Getter & Setter
    public String getMaSach() { return maSach; }
    public void setMaSach(String maSach) { this.maSach = maSach; }

    public String getTieuDe() { return tieuDe; }
    public void setTieuDe(String tieuDe) { this.tieuDe = tieuDe; }

    public String getTacGia() { return tacGia; }
    public void setTacGia(String tacGia) { this.tacGia = tacGia; }

    public int getNamXuatBan() { return namXuatBan; }
    public void setNamXuatBan(int namXuatBan) { this.namXuatBan = namXuatBan; }

    public int getSoLuong() { return soLuong; }
    public void setSoLuong(int soLuong) { this.soLuong = soLuong; }

    // Hiển thị thông tin (cũ - vẫn giữ lại nếu muốn test trực tiếp)
    public void hienThiThongTin() {
        System.out.println(toString());
        System.out.println("---------------------------");
    }

    // toString() — phương thức chuẩn để các lớp con có thể dùng super.toString()
    @Override
    public String toString() {
        return "Ma sach: " + maSach + "\n"
             + "Tieu de: " + tieuDe + "\n"
             + "Tac gia: " + tacGia + "\n"
             + "Nam xuat ban: " + namXuatBan + "\n"
             + "So luong: " + soLuong;
    }
}
