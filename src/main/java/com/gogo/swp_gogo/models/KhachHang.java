package com.gogo.swp_gogo.models;

import jakarta.servlet.http.HttpServletRequest;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.List;

public class KhachHang implements Account {
    private String idKhachHang;
    private String email;
    private String phoneNumber;
    private String password;
    private String hoTenLot;
    private String ten;

    private List<VeXe> veXeList;
    public KhachHang(){}

    public KhachHang(String idKhachHang, String email, String phoneNumber, String password, String hoTenLot, String ten) {
        this.idKhachHang = idKhachHang;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.password = password;
        this.hoTenLot = hoTenLot;
        this.ten = ten;
    }

    public void addVeXe(HttpServletRequest request){
        System.out.println("vao ham add ve");
        List<String> listVe = List.of(request.getAttribute("listVe").toString().split(","));
        LocalDate ngayDatVe = LocalDate.now();
//        System.out.println("ngay dat ve .now truoc khi parse" + ngayDatVe.toString());
        String idLoTrinh = request.getParameter("idLoTrinh");
        String idKhachHang = request.getParameter("idKhachHang");
        for (int i = 0; i < listVe.size(); i++){
            String idVeXe = MyRandom.generateRandomId(5,"VE");
            String idGhe = listVe.get(i);
            VeXe veXe = new VeXe(idVeXe, 0, null, ngayDatVe, idGhe, idLoTrinh, idKhachHang, null);
            MyQueries.addVeXe(veXe);
        }
    }

    @Override
    public boolean signup(HttpServletRequest request) {
        KhachHangSignup khachHangSignup = new KhachHangSignup(request);
        if (khachHangSignup.run()) {
            setFullInfo(khachHangSignup.returnValidKhachHang());
            MyQueries.addKhachHang(this);
            return true;
        } else return false;
    }

    public List<VeXe> getVeXeList() {
        return veXeList;
    }

    public void setVeXeList(List<VeXe> veXeList) {
        this.veXeList = veXeList;
    }

    @Override
    public boolean login(HttpServletRequest request) {
        KhachHangLogin khachHangLogin = new KhachHangLogin(request);
        if (khachHangLogin.run()) {
            setFullInfo(MyQueries.getKhachHangByCol("email",request.getParameter("email")));
            return true;
        }
        return false;
    }

    public void setFullInfo(KhachHang khachHang) {
        setIdKhachHang(khachHang.getIdKhachHang());
        setEmail(khachHang.getEmail());
        setPassword(khachHang.getPassword());
        setHoTenLot(khachHang.getHoTenLot());
        setTen(khachHang.getTen());
        setPhoneNumber(khachHang.getPhoneNumber());
    }

    public String getIdKhachHang() {
        return idKhachHang;
    }

    public void setIdKhachHang(String idKhachHang) {
        this.idKhachHang = idKhachHang;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getHoTenLot() {
        return hoTenLot;
    }

    public void setHoTenLot(String hoTenLot) {
        this.hoTenLot = hoTenLot;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    @Override
    public String toString() {
        return "KhachHang{" +
                "idKhachHang='" + idKhachHang + '\'' +
                ", email='" + email + '\'' +
                ", phoneNumber='" + phoneNumber + '\'' +
                ", password='" + password + '\'' +
                ", hoTenLot='" + hoTenLot + '\'' +
                ", ten='" + ten + '\'' +
                '}';
    }
}
