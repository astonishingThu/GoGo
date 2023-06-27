package com.gogo.swp_gogo.controllers;

import com.gogo.swp_gogo.models.LoTrinh;
import com.gogo.swp_gogo.models.MyQueries;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.time.LocalDate;
import java.util.List;

@WebServlet(name="searchTuyenDuongServlet", value = "/SearchTuyenDuong")
public class SearchTuyenDuongServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("view/searchTuyenDuong.jsp");
        List<LoTrinh> loTrinhList = MyQueries.searchLoTrinh(req.getParameter("noiBatDau"),req.getParameter("dichDen"), LocalDate.parse(req.getParameter("ngayKhoiHanh")));
        req.setAttribute("loTrinhList",loTrinhList);
        requestDispatcher.forward(req,resp);
    }
}
