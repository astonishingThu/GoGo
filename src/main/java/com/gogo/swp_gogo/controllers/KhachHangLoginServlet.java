package com.gogo.swp_gogo.controllers;

import com.gogo.swp_gogo.models.KhachHang;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name="loginServlet", value = "/GoGoLogin")
public class KhachHangLoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        KhachHang khachHang = new KhachHang();
        RequestDispatcher requestDispatcher;
        if (khachHang.login(req)) {
            requestDispatcher = req.getRequestDispatcher("");
            req.setAttribute("connection",true);
            System.out.println("Succeeded");
            System.out.println(khachHang);
        } else {
            requestDispatcher = req.getRequestDispatcher("Login_Khach.jsp");
            req.setAttribute("connection",false);
            System.out.println("Fail");
        }
        requestDispatcher.forward(req,resp);
    }
}
