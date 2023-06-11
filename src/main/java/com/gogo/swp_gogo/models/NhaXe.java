package com.gogo.swp_gogo.models;

import jakarta.servlet.http.HttpServletRequest;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class NhaXe implements Account {
    private String idNhaXe;
    private String tenNhaXe;
    private String username;
    private String password;
    private Xe xe;
    private List<Xe> xeList;

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
        String[] vipList = request.getParameter("vipList").split(",");
        // process data, add xe, add gheXe to database
        xe = new Xe(idXe,moTaXe,soLuongGhe,loaiXe,idNhaXe);
        MyQueries.addXe(xe);
        List<GheXe> gheXeList = new ArrayList<>();
        int i=0;
        for (String idGhe : vipList) {
            GheXe gheXe = new GheXe(idGhe, giaGheVip, idXe);
            System.out.println(idGhe);
            gheXeList.add(gheXe);
            MyQueries.addGheXe(gheXe);
            i++;
        }
        System.out.println("Length: "+vipList.length);
        System.out.println("count = "+i);
        xe.setGheXeList(gheXeList);
        return true;
    }

    public void addLoTrinh(HttpServletRequest request) {
        String idLoTrinh = MyRandom.generateRandomId(5,"LT");
        String idTuyenDuong = addTuyenDuong(request);
        addNoiDonKhach(request,idLoTrinh);
        addNoiTraKhach(request,idLoTrinh);
        addThoiGianKhoiHanh(request);

        int khoangThoiGianDiChuyen = Integer.parseInt(request.getParameter("khoangThoiGianDiChuyen"));
        int giaLoTrinh = Integer.parseInt(request.getParameter("giaLoTrinh"));
//        List<String> xeChayList = List.of(request.getParameterValues("xeChayList"));
        String ngayKhoiHanh = request.getParameter("ngayKhoiHanh");
        String ngayKetThuc = request.getParameter("ngayKetThuc");
        System.out.println(request.getParameter("gioKhoiHanh"));
        System.out.println(ngayKhoiHanh);
        System.out.println(ngayKetThuc);
    }

    private String addTuyenDuong(HttpServletRequest request) {
        TuyenDuong tuyenDuong;
        String noiBatDau = request.getParameter("noiBatDau");
        String dichDen = request.getParameter("dichDen");
        if (!DataValidator.isTuyenDuongExist(noiBatDau,dichDen)) {
            String idTuyenDuong = MyRandom.generateRandomId(5,"TD");
            tuyenDuong = new TuyenDuong(idTuyenDuong,noiBatDau,dichDen);
            MyQueries.addTuyenDuong(tuyenDuong);
            return idTuyenDuong;
        }
        return MyQueries.getIdTuyenDuongExist(noiBatDau,dichDen);
    }

    private void addNoiDonKhach(HttpServletRequest request, String idLoTrinh) {
        String noiDonKhach = request.getParameter("noiDonKhach");
        MyQueries.addNoiDonKhach(new DonKhach(idLoTrinh,noiDonKhach));
    }

    private void addNoiTraKhach(HttpServletRequest request, String idLoTrinh) {
        String noiTraKhach = request.getParameter("noiTraKhach");
        MyQueries.addNoiTraKhach(new TraKhach(idLoTrinh,noiTraKhach));
    }

    private String addThoiGianKhoiHanh(HttpServletRequest request) {
        String gioKhoiHanh = request.getParameter("gioKhoiHanh");
        String ngayKhoiHanh = request.getParameter("ngayKhoiHanh");
        String ngayKetThuc = request.getParameter("ngayKetThuc");
        List<String> lapLaiList = List.of(request.getParameterValues("lapLaiList"));



        String idThoiGian = MyRandom.generateRandomId(5,"TG");
        MyQueries.addThoiGianKhoiHanh(new ThoiGianKhoiHanh(idThoiGian,gioKhoiHanh,ngayKhoiHanh));
        return idThoiGian;
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
}
