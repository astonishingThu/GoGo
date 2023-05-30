package com.gogo.swp_gogo.models;

import jakarta.servlet.http.HttpServletRequest;

public class KhachHangSignup {
    private String email;
    private String password;
    private HttpServletRequest req;
    private String khachHangId;
    private String phoneNumber;

    public KhachHangSignup(HttpServletRequest req) {
        this.req = req;
    }

    public void setKhachHangId() {
        do {
            khachHangId = MyRandom.generateRandomId(8,"KH");
        } while (DataValidator.isTableInfoExist("idKhachHang",khachHangId,"KhachHang"));
    }

    private void setEmail() {
        email = req.getParameter("email");
        if (DataValidator.isTableInfoExist("email",email,"KhachHang")) {
            email = null;
        }
    }

    public boolean run() {
        setKhachHangId();
        setEmail();
        setPhoneNumber();
        if (email!=null && phoneNumber!=null) {
            setPassword();
            System.out.println("email is not null");
            return true;

        }
        System.out.println("Email is null");
        return false;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber() {
        phoneNumber = req.getParameter("phoneNumber");
        if (DataValidator.isTableInfoExist("phoneNumber",phoneNumber,"KhachHang")) {
            phoneNumber = null;
        }
    }

    private void setPassword() {
        password = req.getParameter("password");
    }

    public String getEmail() {
        return email;
    }

    public String getPassword() {
        return password;
    }

    public String getKhachHangId() {
        return khachHangId;
    }
}
