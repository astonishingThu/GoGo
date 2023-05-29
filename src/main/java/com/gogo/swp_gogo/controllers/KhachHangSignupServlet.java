package com.gogo.swp_gogo.controllers;

import com.gogo.swp_gogo.models.KhachHang;
import com.gogo.swp_gogo.models.MyQueries;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
@WebServlet(name="signupServlet", value = "/GoGoSignup")
public class KhachHangSignupServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        KhachHang khachHang = new KhachHang();
//        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/frontEnd/SignUp__Khach.jsp");
        khachHang.signup(req);
        MyQueries.addKhachHang(khachHang);
//        if (!khachHang.signup(req)) {
//            req.setAttribute("status","fail");
////            requestDispatcher.include(req,resp);
//        }
////        req.setAttribute("status","succeed");
            resp.sendRedirect("Login_Khach.html");
    }
}
