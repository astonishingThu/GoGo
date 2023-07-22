package com.gogo.swp_gogo.controllers;

import com.gogo.swp_gogo.models.LoTrinh;
import com.gogo.swp_gogo.models.MyQueries;
import com.gogo.swp_gogo.models.NhaXe;
import com.gogo.swp_gogo.models.Xe;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.text.ParseException;
import java.util.List;

@WebServlet(name="addTuyenXeServlet", value = "/AddTuyenXe")
public class AddTuyenXe extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/view/TuyenDuong_NhaXe.jsp");
        NhaXe nhaXe = MyQueries.getNhaXeByCol("idNhaXe",req.getParameter("idNhaXe"));
        nhaXe.setLoTrinhList(req);
        req.setAttribute("nhaXe",nhaXe);
        requestDispatcher.forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        NhaXe nhaXe = MyQueries.getNhaXeByCol("idNhaXe",req.getParameter("idNhaXe"));
        nhaXe.setTempLoTrinhList(req);
        HttpSession session = req.getSession();
        session.setAttribute("nhaXe",nhaXe);
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/view/PickXe.jsp");
        req.setAttribute("xeList",nhaXe.getAvailableXe(req));
        requestDispatcher.forward(req,resp);
    }
}
