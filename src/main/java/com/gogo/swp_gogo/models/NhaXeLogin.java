package com.gogo.swp_gogo.models;

import jakarta.servlet.http.HttpServletRequest;

public class NhaXeLogin extends NhaXe{
    private HttpServletRequest req;

    public NhaXeLogin(HttpServletRequest req) {
        this.req = req;
    }
    public boolean run() {
        setUsername(req.getParameter("username"));
        setPassword(req.getParameter("password"));
        if (DataValidator.isTableInfoExist("username",getUsername(),"NhaXe") && DataValidator.isAccountValid("username",getUsername(),getPassword(),"NhaXe")) {
            return true;
        }
        setUsername(null);
        setPassword(null);
        return false;
    }

    public HttpServletRequest getReq() {
        return req;
    }

    public void setReq(HttpServletRequest req) {
        this.req = req;
    }
}
