package com.gogo.swp_gogo.controllers;

import com.gogo.swp_gogo.models.NhaXe;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name="addGheXeServlet", value = "/AddGheXe")

public class AddGheXeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        String[] vipList = req.getRequ("vipList");
        String[] vipList = new String[]{req.getParameter("vipList")};
        String idNhaXe = req.getParameter("idNhaXe");
        for(int i =0 ; i<vipList.length; i++){
            System.out.println(vipList[i]);
        }
        System.out.println(idNhaXe);
    }
}
