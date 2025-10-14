package QLSach;
import java.util.Scanner;
public class Textbook extends Sach {
    private String monhoc;
    private String capDo
}
public Textbook() {
    super();
    monhoc = "";
    capDo = "";
}
public Textbook(String maSach, String tieuDe, String tacGia, int namXuatBan, int soLuong, String monhoc, String capDo){
    this.monhoc = monhoc;
    this.capDo = capDo;
}
public String getMonhoc(){
    return monhoc;
}  
public void setMonhoc(String monhoc){
    this.monhoc = monhoc;
}
public String getCapDo(){
    return capDo;
}
public void setCapDo(String capDo){
    this.capDo = capDo;
}@Override
public String toString(){
    return super.toString() + ", Mon hoc: " + monhoc + ", Cap do: " + capDo;
}
public void inputInfo(){
    super.inputInfo();
    Scanner sc = new Scanner(System.in);
    System.out.print("Nhap mon hoc: ");
    monhoc = sc.nextLine();
    System.out.print("Nhap cap do: ");
    capDo = sc.nextLine();
}

