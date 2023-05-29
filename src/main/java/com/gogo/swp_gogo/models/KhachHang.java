package com.gogo.swp_gogo.models;

import jakarta.servlet.http.HttpServletRequest;

public class KhachHang implements Account {
    private String idKhachHang;
    private String email;
    private String phoneNumber;
    private String password;
    private String hoTenLot;
    private String ten;

    @Override
    public boolean signup(HttpServletRequest request) {
        KhachHangSignup khachHangSignup = new KhachHangSignup(request);
        if (khachHangSignup.run()) {
            String fullName = request.getParameter("fullName");
            String ten = fullName.substring(fullName.lastIndexOf(" ")+1);
            String hoTenLot = fullName.substring(0,fullName.length()-ten.length());
            setTen(ten);
            setHoTenLot(hoTenLot);
            setPhoneNumber(request.getParameter("phoneNumber"));
            setEmail(khachHangSignup.getEmail());
            setIdKhachHang(khachHangSignup.getKhachHangId());
            setPassword(khachHangSignup.getPassword());
            return true;
        } else return false;
    }

    @Override
    public boolean login(HttpServletRequest request) {

        KhachHangLogin khachHangLogin = new KhachHangLogin(request);
        return khachHangLogin.run();
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
}
