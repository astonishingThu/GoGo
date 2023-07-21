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

@WebServlet(name="addNhaXeServlet", value = "/addNhaXe")
public class AddNhaXeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Admin admin = MyQueries.getAdminBy("username",req.getParameter("adminUsername"));
        admin.addNhaXe(req);
        admin.setNhaXeList(MyQueries.getAllNhaXeBasedOn("adminUsername",req.getParameter("adminUsername")));
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("adminDashboard");
        req.setAttribute("admin",admin);
        requestDispatcher.forward(req,resp);
    }
}
