package com.gogo.swp_gogo.controllers;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;


@WebServlet(name="khachHangServlet", value = "/KhachHangMainPage")
public class KhachHangServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("Inside get khach hang main page");
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/view/MainPage_KhachHang.jsp");
        requestDispatcher.forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("Inside post khach hang main page");
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/view/MainPage_KhachHang.jsp");
        requestDispatcher.forward(req,resp);
    }
}

