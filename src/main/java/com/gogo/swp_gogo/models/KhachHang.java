package com.gogo.swp_gogo.models;

import jakarta.servlet.http.HttpServletRequest;

public class KhachHang implements Account {
    private String idKhachHang;
    private String email;
    private String phoneNumber;
    private String password;
    private String hoTenLot;
    private String ten;

    public KhachHang(){}

    public KhachHang(String idKhachHang, String email, String phoneNumber, String password, String hoTenLot, String ten) {
        this.idKhachHang = idKhachHang;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.password = password;
        this.hoTenLot = hoTenLot;
        this.ten = ten;
    }

    @Override
    public boolean signup(HttpServletRequest request) {
        KhachHangSignup khachHangSignup = new KhachHangSignup(request);
        if (khachHangSignup.run()) {
            String fullName = request.getParameter("fullName");
            String ten = fullName.substring(fullName.lastIndexOf(" ")+1);
            String hoTenLot = fullName.substring(0,fullName.length()-ten.length());
            setTen(ten);
            setHoTenLot(hoTenLot);
            setPhoneNumber(khachHangSignup.getPhoneNumber());
            setEmail(khachHangSignup.getEmail());
            setIdKhachHang(khachHangSignup.getKhachHangId());
            setPassword(khachHangSignup.getPassword());
            return true;
        } else return false;
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
