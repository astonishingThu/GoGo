package com.gogo.swp_gogo.models;

import jakarta.servlet.http.HttpServletRequest;

import java.time.LocalDate;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeParseException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

public class NhaXe implements Account {
    private String idNhaXe;
    private String tenNhaXe;
    private String username;
    private String password;
    private Xe xe;
    private List<Xe> xeList;
    private List<LoTrinh> tempLoTrinhList = new ArrayList<>();
    private List<LoTrinh> loTrinhList = new ArrayList<>();

    public NhaXe(){}

    public NhaXe(String idNhaXe, String tenNhaXe, String username, String password) {
        this.idNhaXe = idNhaXe;
        this.tenNhaXe = tenNhaXe;
        this.username = username;
        this.password = password;
    }

    public boolean addXe(HttpServletRequest request) {
        // get data from request
        String idNhaXe = request.getParameter("idNhaXe");
        byte soLuongGhe = Byte.parseByte(request.getParameter("soLuongGhe"));
        String loaiXe = request.getParameter("loaiXe");
        String idXe = request.getParameter("bienSoXe");
        String moTaXe = request.getParameter("moTa");
        int giaGheVip = Integer.parseInt(request.getParameter("giaGhe"));
        List<String> vipList = Arrays.asList(request.getParameter("vipList").split(","));
        // process data, add xe, add gheXe to database
        xe = new Xe(idXe,moTaXe,soLuongGhe,loaiXe,idNhaXe);
        MyQueries.addXe(xe);
        System.out.println("Xe là"+xe);
        List<GheXe> gheXeList = new ArrayList<>();

        for (int i=1; i<=soLuongGhe; i++) {
            GheXe gheXe = new GheXe(String.valueOf(i), 0, idXe);
            if (vipList.contains(String.valueOf(i))) {
                gheXe.setGiaGhe(giaGheVip);
            }
            gheXeList.add(gheXe);
            MyQueries.addGheXe(gheXe);
        }
//        for (String idGhe : vipList) {
//            GheXe gheXe = new GheXe(idGhe, giaGheVip, idXe);
//            System.out.println(idGhe);
//            gheXeList.add(gheXe);
//            MyQueries.addGheXe(gheXe);
//        }
        xe.setGheXeList(gheXeList);
        return true;
    }

    public List<Xe> getAvailableXe(HttpServletRequest request) {
        return MyQueries.getAvailableXeOfNhaXe(request.getParameter("idNhaXe"),getThoiGianKhoiHanhList(request));
    }

    public void setTempLoTrinhList(HttpServletRequest request){
        List<LocalDate> ngayChayList = getThoiGianKhoiHanhList(request);
        NhaXe nhaXe = MyQueries.getNhaXeByCol("idNhaXe",request.getParameter("idNhaXe"));
        TuyenDuong tuyenDuong = addTuyenDuong(request);
        int giaLoTrinh = Integer.parseInt(request.getParameter("giaLoTrinh"));
        int khoangThoiGianDiChuyen = Integer.parseInt(request.getParameter("khoangThoiGianDiChuyen"));

        for (LocalDate date:ngayChayList) {
            LoTrinh tempLoTrinh = new LoTrinh();
            String idLoTrinh = MyRandom.generateRandomId(5,"LT");
            tempLoTrinh.setIdLoTrinh(idLoTrinh);
            tempLoTrinh.setNhaXe(nhaXe);
            tempLoTrinh.setTuyenDuong(tuyenDuong);
            tempLoTrinh.setGiaLoTrinh(giaLoTrinh);
            tempLoTrinh.setKhoangThoiGianDiChuyen(khoangThoiGianDiChuyen);
            tempLoTrinh.setDonKhach(setDonKhach(request,idLoTrinh));
            tempLoTrinh.setTraKhach(setTraKhach(request,idLoTrinh));
            String idThoiGian = MyRandom.generateRandomId(5,"TG");
            ThoiGianKhoiHanh thoiGianKhoiHanh = new ThoiGianKhoiHanh();
            thoiGianKhoiHanh.setIdThoiGian(idThoiGian);
            thoiGianKhoiHanh.setNgayKhoiHanh(date);
            tempLoTrinh.setThoiGianKhoiHanh(thoiGianKhoiHanh);
            thoiGianKhoiHanh.setGioKhoiHanh(LocalTime.parse(request.getParameter("gioKhoiHanh")));
            tempLoTrinhList.add(tempLoTrinh);
        }
        for (LoTrinh lt:tempLoTrinhList) {
            System.out.println("Id lo trinh: "+lt.getThoiGianKhoiHanh().getIdThoiGian());
        }
    }

    public void addLoTrinh(HttpServletRequest request) {
        for (LoTrinh loTrinh:tempLoTrinhList) {
            MyQueries.addThoiGianKhoiHanh(loTrinh.getThoiGianKhoiHanh());
            loTrinh.setXe(MyQueries.getXeByCol("idXe",request.getParameter("idXe")));
            MyQueries.addLoTrinh(loTrinh);
            MyQueries.addNoiDonKhach(loTrinh.getDonKhach());
            MyQueries.addNoiTraKhach(loTrinh.getTraKhach());
        }
    }

    private TuyenDuong addTuyenDuong(HttpServletRequest request) {
        TuyenDuong tuyenDuong;
        String noiBatDau = request.getParameter("noiBatDau");
        String dichDen = request.getParameter("dichDen");
        if (!DataValidator.isTuyenDuongExist(noiBatDau,dichDen)) {
            String idTuyenDuong = MyRandom.generateRandomId(5,"TD");
            tuyenDuong = new TuyenDuong(idTuyenDuong,noiBatDau,dichDen);
            MyQueries.addTuyenDuong(tuyenDuong);
            return tuyenDuong;
        }
        return MyQueries.getTuyenDuongExist(noiBatDau,dichDen);
    }

    private DonKhach setDonKhach(HttpServletRequest request, String idLoTrinh) {
        String idDonKhach = MyRandom.generateRandomId(5,"DK");
        String noiDonKhach = request.getParameter("noiDonKhach");
        return new DonKhach(idDonKhach,idLoTrinh,noiDonKhach);
    }

    private TraKhach setTraKhach(HttpServletRequest request, String idLoTrinh) {
        String idTraKhach = MyRandom.generateRandomId(5,"TK");
        String noiTraKhach = request.getParameter("noiTraKhach");
        return new TraKhach(idTraKhach,idLoTrinh,noiTraKhach);
    }

    private List<LocalDate> getThoiGianKhoiHanhList(HttpServletRequest request) {
        List<LocalDate> res = new ArrayList<>();
        String[] lapLaiList =  request.getParameter("ngayList").split(",");
        System.out.println(lapLaiList);
        try {
            DateTimeFormatter dateTimeFormatter = DateTimeFormatter.ofPattern("M/d/yyyy");
            for (String s : lapLaiList) {
                res.add(LocalDate.parse(s,dateTimeFormatter));

            }
        } catch (DateTimeParseException ex) {
            DateTimeFormatter dateTimeFormatter = DateTimeFormatter.ofPattern("d/M/yyyy");
            for (String s : lapLaiList) {
                res.add(LocalDate.parse(s,dateTimeFormatter));
            }
        }
        return res;
    }

    private static List<LocalDate> getDatesBetweenUsingJava9(
            LocalDate startDate, LocalDate endDate) {

        return startDate.datesUntil(endDate)
                .collect(Collectors.toList());
    }


    public String getIdNhaXe() {
        return idNhaXe;
    }

    public void setIdNhaXe(String idNhaXe) {
        this.idNhaXe = idNhaXe;
    }

    public String getTenNhaXe() {
        return tenNhaXe;
    }

    public void setTenNhaXe(String tenNhaXe) {
        this.tenNhaXe = tenNhaXe;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public List<Xe> getXeList() {
        return xeList;
    }

    public void setXeList(List<Xe> xeList) {
        this.xeList = xeList;
    }

    @Override
    public boolean login(HttpServletRequest request) {
        NhaXeLogin nhaXeLogin = new NhaXeLogin(request);
        if (nhaXeLogin.run()) {
            setFullInfo(MyQueries.getNhaXeByCol("username",request.getParameter("username")));
            return true;
        }
        return false;
    }

    public void setFullInfo(NhaXe nhaXe) {
        setIdNhaXe(nhaXe.getIdNhaXe());
        setPassword(nhaXe.getPassword());
        setUsername(nhaXe.getUsername());
        setTenNhaXe(nhaXe.getTenNhaXe());
    }

    @Override
    public boolean signup(HttpServletRequest request) {
        return false;
    }

    @Override
    public String toString() {
        return "NhaXe{" +
                "idNhaXe='" + idNhaXe + '\'' +
                ", tenNhaXe='" + tenNhaXe + '\'' +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                '}';
    }

    public Xe getXe() {
        return xe;
    }

    public void setXe(Xe xe) {
        this.xe = xe;
    }

    public List<LoTrinh> getTempLoTrinhList() {
        return tempLoTrinhList;
    }

    public List<LoTrinh> getLoTrinhList() {
        return loTrinhList;
    }

    public void setLoTrinhList(HttpServletRequest request) {
        loTrinhList = MyQueries.getCurrentLoTrinhOfNhaXe(request.getParameter("idNhaXe"));
    }

}
