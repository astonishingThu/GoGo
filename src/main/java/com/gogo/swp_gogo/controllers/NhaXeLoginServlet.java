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

        if (nhaXe.login(req)) {
//            RequestDispatcher requestDispatcher = req.getRequestDispatcher("NhaXeMainPage");
//            req.setAttribute("connection",true);
//            req.setAttribute("nhaXe",nhaXe);
            System.out.println("Succeeded");
            System.out.println(nhaXe);
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("NhaXeMainPage");
            requestDispatcher.forward(req,resp);
//            requestDispatcher.forward(req,resp);
        } else {
            System.out.println("helooooooooo");
//            requestDispatcher = req.getRequestDispatcher("/NhaXeGoGoLogin");
//            req.setAttribute("connection",false);
//            System.out.println("Fail");
        }
    }
}
