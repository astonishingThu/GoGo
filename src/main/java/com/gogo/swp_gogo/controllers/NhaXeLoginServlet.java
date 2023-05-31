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
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        NhaXe nhaXe = new NhaXe();
//        RequestDispatcher requestDispatcher = req.getRequestDispatcher("");
//        if (!nhaXe.login(req)) {
//            req.setAttribute("status","fail");
//        }
//        req.setAttribute("status","succeed");
//        requestDispatcher.forward(req,resp);
        if (nhaXe.login(req)) {
            System.out.println("Succeeded");
            resp.sendRedirect("HomePage.html");
        }
    }
}
