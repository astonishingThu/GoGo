package com.gogo.swp_gogo.models;

import jakarta.servlet.http.HttpServletRequest;

import java.util.List;

public class Admin {
    private String username;
    private String password;
    private List<NhaXe> nhaXeList;

    public Admin() {}

    public Admin(String username, String password) {
        this.username = username;
        this.password = password;
    }

    public boolean login(String username, String password) {
        if (DataValidator.isTableInfoExist("username",username,"Admin") && DataValidator.isAccountValid("username",username,password,"Admin")) {
           setUsername(username);
           setPassword(password);
            return true;
        }
        return false;
    }

    public void addNhaXe(HttpServletRequest request) {
        String idNhaXe = MyRandom.generateRandomId(5,"NX");
        String tenNhaXe = request.getParameter("tenNhaXe");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String adminUsername = request.getParameter("adminUsername");
        NhaXe nhaXe = new NhaXe(idNhaXe,tenNhaXe,username,password,adminUsername);
        MyQueries.addNhaXe(nhaXe);
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

    public List<NhaXe> getNhaXeList() {
        return nhaXeList;
    }

    public void setNhaXeList(List<NhaXe> nhaXeList) {
        this.nhaXeList = nhaXeList;
    }
}
