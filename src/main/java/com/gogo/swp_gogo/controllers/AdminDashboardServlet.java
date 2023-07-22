package com.gogo.swp_gogo.controllers;

import com.gogo.swp_gogo.models.MyQueries;
import com.gogo.swp_gogo.models.NhaXe;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name="adminDashboardServlet", value = "/adminDashboard")
public class AdminDashboardServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("in get admin dashboard");
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/view/adminDashboard.jsp");
        requestDispatcher.forward(req,resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("in post admin dashboard");
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/view/adminDashboard.jsp");
        req.setAttribute("existUsernames", MyQueries.getAllTableInfo("username", "NhaXe"));
        requestDispatcher.forward(req,resp);
    }
}