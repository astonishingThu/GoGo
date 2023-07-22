package com.gogo.swp_gogo.controllers;

import com.gogo.swp_gogo.models.MyQueries;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name="updateTuyenXeServlet", value = "/updateTuyenXe")
public class UpdateTuyenXeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/view/updateTuyenXe.jsp");
        req.setAttribute("loTrinh", MyQueries.getLoTrinhByCol("idLoTrinh",req.getParameter("idLoTrinh")));
        requestDispatcher.forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
