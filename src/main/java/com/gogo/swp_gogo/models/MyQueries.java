package com.gogo.swp_gogo.models;

import java.sql.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class MyQueries {

    private static Connection getConnection() {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String connectionUrl = "jdbc:sqlserver://localhost:1433;database=GoGo;encrypt=false;trustServerCertificate=true";
            Connection connection = DriverManager.getConnection(connectionUrl,"sa","140801");
            return connection;
        } catch (ClassNotFoundException | SQLException ex) {
            System.out.println("Cannot connect to the database");
            ex.printStackTrace();
        }
        return null;
    }

    public static void addKhachHang(KhachHang khachHang) {
        Connection connection = getConnection();
        try {
            PreparedStatement statement = connection.prepareStatement("Insert Into GoGo.dbo.KhachHang(idKhachHang,email,password,hoTenLot,ten,phoneNumber) Values(?,?,?,?,?,?)");
            statement.setString(1,khachHang.getIdKhachHang());
            statement.setString(2,khachHang.getEmail());
            statement.setString(3,khachHang.getPassword());
            statement.setString(4,khachHang.getHoTenLot());
            statement.setString(5,khachHang.getTen());
            statement.setString(6,khachHang.getPhoneNumber());
            statement.executeUpdate();
            connection.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public static void addXe(Xe xe) {
        Connection connection = getConnection();
        try {
            PreparedStatement statement = connection.prepareStatement("Insert Into GoGo.dbo.Xe(idXe,moTa,soLuongghe,loaiXe,idNhaXe) Values(?,?,?,?,?)");
            statement.setString(1,xe.getIdXe());
            statement.setString(2,xe.getMoTa());
            statement.setString(3, String.valueOf(xe.getSoLuongGhe()));
            statement.setString(4,xe.getLoaiXe());
            statement.setString(5,xe.getIdNhaXe());
            statement.executeUpdate();
            connection.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public static void addGheXe(GheXe gheXe) {
        Connection connection = getConnection();
        try {
            PreparedStatement statement = connection.prepareStatement("Insert Into GoGo.dbo.GheXe(idGhe,giaGhe,idXe) Values(?,?,?)");
            statement.setString(1,gheXe.getIdGhe());
            statement.setString(2, String.valueOf(gheXe.getGiaGhe()));
            statement.setString(3,gheXe.getIdXe());
            statement.executeUpdate();
            connection.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }


    public static List<String> getAllTableInfo(String col, String table) {
        Connection connection = getConnection();
        List<String> res = new ArrayList<>();
        try {
            String q = "Select "+col+" from GoGo.dbo."+table;
            PreparedStatement statement = connection.prepareStatement(q);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                res.add(resultSet.getString(1));
            }
            connection.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return res;
    }

//    public static String getKhachHangInfoByBase(String base, String col, String data) {
//        Connection connection = getConnection();
//        try {
//            String q = "Select "+col+" from GoGo.dbo.KhachHang where "+base+" = ?";
//            PreparedStatement statement = connection.prepareStatement(q);
//            statement.setString(1,data);
//            ResultSet resultSet = statement.executeQuery();
//            while (resultSet.next()) {
//                return resultSet.getString("1");
//            }
//            connection.close();
//        } catch (SQLException e) {
//            throw new RuntimeException(e);
//        }
//        return null;
//    }

    public static String getTableInfoByBase(String base, String col, String data, String table) {
        Connection connection = getConnection();
        try {
            String q = "Select "+col+" from GoGo.dbo."+table+" where "+base+" = ?";
            PreparedStatement statement = connection.prepareStatement(q);
            statement.setString(1,data);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                return resultSet.getString(col);
            }
            connection.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return null;
    }

    public static KhachHang getKhachHangByCol(String col, String data) {
        Connection connection = getConnection();
        try {
            String q = "Select * from GoGo.dbo.KhachHang where "+col+" = ?";
            PreparedStatement statement = connection.prepareStatement(q);
            statement.setString(1,data);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                return new KhachHang(resultSet.getString("idKhachHang"),resultSet.getString("email"),resultSet.getString("phoneNumber"),resultSet.getString("password"),resultSet.getString("hoTenLot"),resultSet.getString("ten"));
            }
            connection.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return null;
    }

    public static NhaXe getNhaXeByCol(String col, String data) {
        Connection connection = getConnection();
        try {
            String q = "Select * from GoGo.dbo.NhaXe where "+col+" = ?";
            System.out.println(q);
            PreparedStatement statement = connection.prepareStatement(q);
            statement.setString(1,data);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                return new NhaXe(resultSet.getString("idNhaxe"),resultSet.getString("tenNhaXe"),resultSet.getString("username"),resultSet.getString("password"));
            }
            connection.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return null;
    }

    public static List<Xe> getAllXeOfOneNhaXeByCol(String col, String data) {
        Connection connection = getConnection();
        try {
            String q = "Select * from GoGo.dbo.Xe where "+col+" = ?";
            System.out.println(q);
            PreparedStatement statement = connection.prepareStatement(q);
            statement.setString(1,data);
            ResultSet resultSet = statement.executeQuery();
            List<Xe> res = new ArrayList<>();
            while (resultSet.next()) {
                res.add(new Xe(resultSet.getString("idXe"),resultSet.getString("moTa"),Byte.parseByte(resultSet.getString("soLuongGhe")),resultSet.getString("loaiXe"),resultSet.getString("idNhaXe")));
            }
            connection.close();
            return res;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

}
