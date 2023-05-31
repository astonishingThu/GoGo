package com.gogo.swp_gogo.models;

import jakarta.servlet.http.HttpServletRequest;

public class NhaXe implements Account {
    private String idNhaXe;
    private String tenNhaXe;
    private String username;
    private String password;

    public String getIdNhaXe() {
        return idNhaXe;
    }

    public void setIdNhaXe(String idNhaXe) {
        this.idNhaXe = idNhaXe;
    }

    public String getTenNhaXe() {
        return tenNhaXe;
    }

    public void setTenNhaXe(String tenNhaXe) {
        this.tenNhaXe = tenNhaXe;
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

    @Override
    public boolean login(HttpServletRequest request) {

        return new NhaXeLogin(request).run();
    }

    @Override
    public boolean signup(HttpServletRequest request) {
        return false;
    }
}
