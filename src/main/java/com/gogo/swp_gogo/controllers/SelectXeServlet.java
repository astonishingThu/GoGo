package com.gogo.swp_gogo.controllers;

import com.gogo.swp_gogo.models.NhaXe;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet(name="selectXeServlet", value = "/SelectXe")
public class SelectXeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(false);
        NhaXe nhaXe = (NhaXe) session.getAttribute("nhaXe");
        System.out.println("Id nha xe: "+nhaXe.getIdNhaXe());
        nhaXe.addLoTrinh(req);
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/view/TuyenDuong_NhaXe.jsp");
        nhaXe.setLoTrinhList(req);
        req.setAttribute("nhaXe",nhaXe);
        requestDispatcher.forward(req,resp);
    }
}
