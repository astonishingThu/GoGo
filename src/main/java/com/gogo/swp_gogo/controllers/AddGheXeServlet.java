package com.gogo.swp_gogo.controllers;

import com.gogo.swp_gogo.models.MyQueries;
import com.gogo.swp_gogo.models.NhaXe;
import com.gogo.swp_gogo.models.Xe;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name="addGheXeServlet", value = "/AddGheXe")

public class AddGheXeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        NhaXe nhaXe = MyQueries.getNhaXeByCol("idNhaXe",req.getParameter("idNhaXe"));
        nhaXe.addXe(req);
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("NhaXeMainPage");
        nhaXe.setXeList(MyQueries.getAllXeOfOneNhaXeByCol("idNhaXe",nhaXe.getIdNhaXe()));
        req.setAttribute("nhaXe",nhaXe);
        requestDispatcher.forward(req,resp);
        for (Xe xe: nhaXe.getXeList()) {
            System.out.println(xe);
        }
    }
}
