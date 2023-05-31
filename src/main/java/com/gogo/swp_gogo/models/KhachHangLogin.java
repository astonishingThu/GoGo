package com.gogo.swp_gogo.models;

import jakarta.servlet.http.HttpServletRequest;

public class KhachHangLogin {
    private String email;
    private String password;
    private HttpServletRequest req;



    public boolean run() {
        setEmail(req.getParameter("email"));
        setPassword(req.getParameter("password"));
        if (DataValidator.isTableInfoExist("email",email,"KhachHang") && DataValidator.isAccountValid("email",email,password,"KhachHang")) {
            return true;
        }
        email = null;
        password = null;
        return false;
    }

    public KhachHangLogin(HttpServletRequest req) {
        this.req = req;
    }
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
