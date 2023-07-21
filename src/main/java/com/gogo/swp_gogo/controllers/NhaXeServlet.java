package com.gogo.swp_gogo.controllers;

import com.gogo.swp_gogo.models.NhaXe;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name="nhaXeServlet", value = "/NhaXeMainPage")
public class NhaXeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("Inside get nha xe main page");
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/view/Xe_NhaXe.jsp");
        req.setAttribute("nhaXe",req.getAttribute("nhaxe"));
        requestDispatcher.forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("Inside post nha xe main page");
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/view/Xe_NhaXe.jsp");
        req.setAttribute("nhaXe",req.getAttribute("nhaxe"));
        requestDispatcher.forward(req,resp);
    }
}
