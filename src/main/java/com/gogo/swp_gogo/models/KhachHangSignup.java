package com.gogo.swp_gogo.models;

import jakarta.servlet.http.HttpServletRequest;

public class KhachHangSignup extends KhachHang {
    private HttpServletRequest req;

    public KhachHangSignup(HttpServletRequest req) {
        this.req = req;
    }

    public KhachHang returnValidKhachHang() {
        String fullName = req.getParameter("fullName");
        String ten = fullName.substring(fullName.lastIndexOf(" ")+1);
        String hoTenLot = fullName.substring(0,fullName.length()-ten.length()-1);
        return new KhachHang(getIdKhachHang(),getEmail(),getPhoneNumber(),getPassword(),hoTenLot,ten);
    }

    public void setKhachHangId() {
        do {
            setIdKhachHang(MyRandom.generateRandomId(8,"KH"));
        } while (DataValidator.isTableInfoExist("idKhachHang",getIdKhachHang(),"KhachHang"));
    }

    private void setEmail() {
        setEmail(req.getParameter("email"));
        if (DataValidator.isTableInfoExist("email",getEmail(),"KhachHang")) {
            setEmail(null);
        }
    }

    public boolean run() {
        setKhachHangId();
        setEmail();
        setPhoneNumber();
        if (getEmail()!=null && getPhoneNumber()!=null) {
            setPassword();
            System.out.println("email is not null");
            return true;
        }
        System.out.println("Email is null");
        return false;
    }

    public void setPhoneNumber() {
        setPhoneNumber(req.getParameter("phoneNumber"));
        if (DataValidator.isTableInfoExist("phoneNumber",getPhoneNumber(),"KhachHang")) {
            setPhoneNumber(null);
        }
    }

    private void setPassword() {
        setPassword(req.getParameter("password"));
    }


}
