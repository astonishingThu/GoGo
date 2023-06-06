package com.gogo.swp_gogo.models;

import jakarta.servlet.http.HttpServletRequest;

public class NhaXe implements Account {
    private String idNhaXe;
    private String tenNhaXe;
    private String username;
    private String password;

    public NhaXe(){}

    public NhaXe(String idNhaXe, String tenNhaXe, String username, String password) {
        this.idNhaXe = idNhaXe;
        this.tenNhaXe = tenNhaXe;
        this.username = username;
        this.password = password;
    }

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
        NhaXeLogin nhaXeLogin = new NhaXeLogin(request);
        if (nhaXeLogin.run()) {
            setFullInfo(MyQueries.getNhaXeByCol("username",request.getParameter("username")));
            return true;
        }
        return false;
    }

    public void setFullInfo(NhaXe nhaXe) {
        setIdNhaXe(nhaXe.getIdNhaXe());
        setPassword(nhaXe.getPassword());
        setUsername(nhaXe.getUsername());
        setTenNhaXe(nhaXe.getTenNhaXe());
    }

    @Override
    public boolean signup(HttpServletRequest request) {
        return false;
    }

    @Override
    public String toString() {
        return "NhaXe{" +
                "idNhaXe='" + idNhaXe + '\'' +
                ", tenNhaXe='" + tenNhaXe + '\'' +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                '}';
    }
}
