package com.gogo.swp_gogo.controllers;

import com.gogo.swp_gogo.models.KhachHang;
import com.gogo.swp_gogo.models.MyQueries;
import com.gogo.swp_gogo.models.NhaXe;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
@WebServlet(name="cancelVeServlet", value = "/CancelVe")
public class CancelVe extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        KhachHang khachHang = MyQueries.getKhachHangByCol("idKhachHang",req.getParameter("idKH"));
        MyQueries.cancelVe(req.getParameter("idVe"));
        khachHang.setVeXeList(MyQueries.getAllVeXeOfOnePasById(khachHang.getIdKhachHang()));
        req.setAttribute("khachHang",khachHang);
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("view/VeCuaToi.jsp");
        requestDispatcher.forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
