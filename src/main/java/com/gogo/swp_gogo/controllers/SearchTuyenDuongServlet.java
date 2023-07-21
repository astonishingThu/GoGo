package com.gogo.swp_gogo.controllers;

import com.gogo.swp_gogo.models.*;
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
        KhachHang khachHang = MyQueries.getKhachHangByCol("idKhachHang",req.getParameter("idKhachHang"));
        req.setAttribute("khachHang",khachHang);
        List<LoTrinh> loTrinhList= MyQueries.searchLoTrinh(req.getParameter("noiBatDau"),req.getParameter("dichDen"), LocalDate.parse(req.getParameter("ngayKhoiHanh")));
        for (LoTrinh loTrinh:loTrinhList) {
            loTrinh.setGheConTrongList(MyQueries.getGheConTrongOfXe(loTrinh.getIdLoTrinh()));
            List<RatingInfo> ratingList = MyQueries.getRatingOfNhaXe(loTrinh.getNhaXe().getIdNhaXe());
            loTrinh.getNhaXe().setRatingList(ratingList);
            loTrinh.getNhaXe().setStar(ratingList);
        }
        LoTrinh loTrinhInput = new LoTrinh();
        loTrinhInput.setTuyenDuong(new TuyenDuong(req.getParameter("noiBatDau"),req.getParameter("dichDen")));
        loTrinhInput.setThoiGianKhoiHanh(new ThoiGianKhoiHanh(LocalDate.parse(req.getParameter("ngayKhoiHanh"))));
        req.setAttribute("loTrinhInput",loTrinhInput);
        req.setAttribute("loTrinhList",loTrinhList);
        requestDispatcher.forward(req,resp);
    }
}
