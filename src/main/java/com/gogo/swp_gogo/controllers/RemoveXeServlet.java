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

@WebServlet(name="removeXeServlet", value = "/RemoveXe")
public class RemoveXeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        MyQueries.removeXe(req.getParameter("idXe"));
        NhaXe nhaXe = MyQueries.getNhaXeByCol("idNhaXe",req.getParameter("idNhaXe"));
        nhaXe.setXeList(MyQueries.getAllXeOfOneNhaXeByCol("idNhaXe",nhaXe.getIdNhaXe()));
        req.setAttribute("nhaXe",nhaXe);
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("NhaXeMainPage");
        requestDispatcher.forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
