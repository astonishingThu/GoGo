package com.gogo.swp_gogo.controllers;

import com.gogo.swp_gogo.models.MyQueries;
import com.gogo.swp_gogo.models.NhaXe;
import com.gogo.swp_gogo.models.VeXe;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "ratingVeServlet", value = "/RatingVe")
public class RatingVeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // @Ngoc Sửa đường dẫn về trang đánh giá tổng
        VeXe veXe = MyQueries.getVeXeByIdVe(req.getParameter("idVe"));
        veXe.setRating(Integer.parseInt(req.getParameter("ratingStar")));
        veXe.setComment(req.getParameter("ratingComment"));
        MyQueries.updateVeXe(veXe);
        req.setAttribute("veXe", veXe);
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("VeCuaToi?idKH=" + veXe.getIdKhachHang());
        requestDispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
