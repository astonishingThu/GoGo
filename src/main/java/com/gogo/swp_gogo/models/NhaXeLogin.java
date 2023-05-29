package com.gogo.swp_gogo.models;

import jakarta.servlet.http.HttpServletRequest;

public class NhaXeLogin {
    private String username;
    private String password;
    private HttpServletRequest req;

    public NhaXeLogin(HttpServletRequest req) {
        this.req = req;
    }
    public boolean run() {
        setUsername(req.getParameter("username"));
        setPassword(req.getParameter("password"));
        if (DataValidator.isTableInfoExist("username",username,"NhaXe") && DataValidator.isAccountValid("username",username,password,"NhaXe")) {
            return true;
        }
        username = null;
        password = null;
        return false;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public HttpServletRequest getReq() {
        return req;
    }

    public void setReq(HttpServletRequest req) {
        this.req = req;
    }
}
