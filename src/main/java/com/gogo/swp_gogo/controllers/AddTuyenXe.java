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

@WebServlet(name="addTuyenXeServlet", value = "/AddTuyenXe")
public class AddTuyenXe extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/view/TuyenDuong_NhaXe.jsp");
        req.setAttribute("nhaXe",MyQueries.getNhaXeByCol("idNhaXe",req.getParameter("idNhaXe")));
        requestDispatcher.forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println(req.getParameter("idNhaXe")==null);
        System.out.println("Inside post"+req.getParameter("idNhaXe"));
        NhaXe nhaXe = MyQueries.getNhaXeByCol("idNhaXe",req.getParameter("idNhaXe"));
        nhaXe.addTuyenXe(req);
    }
}
