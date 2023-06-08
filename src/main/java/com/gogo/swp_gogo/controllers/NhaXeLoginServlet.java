package com.gogo.swp_gogo.controllers;

import com.gogo.swp_gogo.models.NhaXe;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name="nhaXeLoginServlet", value = "/NhaXeGoGoLogin")
public class NhaXeLoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/view/Login_NhaXe.jsp");
        requestDispatcher.forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        NhaXe nhaXe = new NhaXe();
        RequestDispatcher requestDispatcher;
        if (nhaXe.login(req)) {
            System.out.println("Succeeded");
            System.out.println(nhaXe);
            requestDispatcher = req.getRequestDispatcher("NhaXeMainPage");
        } else {
            requestDispatcher = req.getRequestDispatcher("/view/Login_NhaXe.jsp");
            req.setAttribute("connection",false);
            System.out.println("Fail");
        }
        requestDispatcher.forward(req,resp);
    }
}
