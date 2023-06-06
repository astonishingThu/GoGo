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
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("SignUp_Khach.jsp");
        if (khachHang.signup(req)) {
            req.setAttribute("connection",true);
            System.out.println("Succeeded");
            System.out.println(khachHang);
        } else {
            req.setAttribute("connection",false);
            System.out.println("Fail");
        }
        requestDispatcher.forward(req,resp);
    }
}
