package com.gogo.swp_gogo.models;

import jakarta.servlet.http.HttpServletRequest;

public class KhachHangLogin extends KhachHang {
    private final HttpServletRequest req;

    public boolean run() {
        setEmail(req.getParameter("email"));
        setPassword(req.getParameter("password"));
        if (DataValidator.isTableInfoExist("email",getEmail(),"KhachHang") && DataValidator.isAccountValid("email",getEmail(),getPassword(),"KhachHang")) {
            return true;
        }
        setEmail(null);
        setPassword(null);
        return false;
    }

    public KhachHangLogin(HttpServletRequest req) {
        this.req = req;
    }
}
