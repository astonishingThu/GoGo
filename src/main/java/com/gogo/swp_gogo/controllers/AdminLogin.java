package com.gogo.swp_gogo.controllers;

import com.gogo.swp_gogo.models.Admin;
import com.gogo.swp_gogo.models.MyQueries;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name="AdminLoginServlet", value = "/adminLogin")
public class AdminLogin extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("view/adminLogin.jsp");
        requestDispatcher.forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Admin admin = new Admin();
        RequestDispatcher requestDispatcher;
        if (admin.login(req.getParameter("username"),req.getParameter("password"))) {
            requestDispatcher = req.getRequestDispatcher("adminDashboard");
            admin.setNhaXeList(MyQueries.getAllNhaXeBasedOn("adminUsername",req.getParameter("username")));
            req.setAttribute("admin",admin);
        } else {
            requestDispatcher = req.getRequestDispatcher("/view/adminLogin.jsp");
            req.setAttribute("connection",false);
        }
        requestDispatcher.forward(req,resp);
    }
}
