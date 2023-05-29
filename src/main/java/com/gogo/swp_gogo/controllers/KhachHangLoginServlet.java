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
//        RequestDispatcher requestDispatcher = req.getRequestDispatcher("");
//        if (!khachHang.login(req)) {
//            req.setAttribute("status","fail");
//        }
//        req.setAttribute("status","succeed");
//        requestDispatcher.forward(req,resp);
        if (khachHang.login(req)) {
            System.out.println("Succeeded");
            resp.sendRedirect("HomePage.html");
        }
    }
}
