package QLSach;
import java.until.Scanner
public class Novel extends Sach {
    private String theLoai;
    private Boolean lasachSeries;
}
public Novel(){
    super();
    theLoai = "";
    lasachSeries = false;
}
public Novel(String maSach, String tieuDe, String tacGia, int namXuatBan, int soLuong, String theLoai, Boolean lasachSeries){
    this.theLoai = theLoai;
    this.lasachSeries = lasachSeries;
}
public String getTheLoai(){
    return theLoai;
}
public void setTheLoai(String theLoai){
    this.theLoai = theLoai;
}
public Boolean getLasachSeries(){
    return lasachSeries;
}
public void setLasachSeries(Boolean lasachSeries){
    this.lasachSeries = lasachSeries;
}
@Override
public String toString(){
    return super.toString() + ", The loai: " + theLoai + ", La sach series: " + lasachSeries;
}
public void inputInfo(){
    super.inputInfo();
    Scanner sc = new Scanner(System.in);
    System.out.print("Nhap the loai: ");
    theLoai = sc.nextLine();
    System.out.print("Nhap la sach series (true/false): ");
    lasachSeries = sc.nextBoolean();
}
