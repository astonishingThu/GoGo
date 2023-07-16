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

@WebServlet(name="thanhToanServlet", value = "/ThanhToan")
public class ThanhToanServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/view/ThanhToan.jsp");
        requestDispatcher.forward(req,resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        KhachHang khachHang = MyQueries.getKhachHangByCol("idKhachHang",req.getParameter("idKhachHang"));
        req.setAttribute("listVe", req.getParameter("listVe"));
        req.setAttribute("idLoTrinh", req.getParameter("idLoTrinh"));
        req.setAttribute("idKhachHang", req.getParameter("idKhachHang"));
        khachHang.addVeXe(req);
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("/view/ThanhToan.jsp");
            requestDispatcher.forward(req,resp);
//        try{
//        } catch (Exception e){
//            System.out.println("Vui long dang nhap de thanh toan");
//            RequestDispatcher requestDispatcher = req.getRequestDispatcher("/GoGoLogin");
//            requestDispatcher.forward(req,resp);
//        }

    }
}


