package com.gogo.swp_gogo.models;

import java.time.Duration;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.List;

public class LoTrinh {
    private DonKhach donKhach;
    private TraKhach traKhach;
    private String idLoTrinh;
    private int giaLoTrinh;
    private int khoangThoiGianDiChuyen;

    private Xe xe;
    private ThoiGianKhoiHanh thoiGianKhoiHanh;
    private TuyenDuong tuyenDuong;
    private NhaXe nhaXe;
    private LocalTime thoiGianKetThuc;
    private List<GheXe> gheConTrongList;

    private String gheConTrongListStr;

    public String getGheConTrongListStr() {
        return gheConTrongListStr;
    }

    public void setGheConTrongListStr(List<GheXe> gheConTrongList) {
        System.out.println(gheConTrongList);
        String val = "";
        for (GheXe gheXe: gheConTrongList){
            val = val.concat("," + gheXe.getIdGhe() + ":" + gheXe.getGiaGhe());
        }
        if (val.length() > 2){
            this.gheConTrongListStr = val.substring(1);
        }
    }

    public String getIdLoTrinh() {
        return idLoTrinh;
    }

    public void setIdLoTrinh(String idLoTrinh) {
        this.idLoTrinh = idLoTrinh;
    }

    public int getGiaLoTrinh() {
        return giaLoTrinh;
    }

    public void setGiaLoTrinh(int giaLoTrinh) {
        this.giaLoTrinh = giaLoTrinh;
    }

    public int getKhoangThoiGianDiChuyen() {
        return khoangThoiGianDiChuyen;
    }

    public void setKhoangThoiGianDiChuyen(int khoangThoiGianDiChuyen) {
        this.khoangThoiGianDiChuyen = khoangThoiGianDiChuyen;
    }

    public Xe getXe() {
        return xe;
    }

    public void setXe(Xe xe) {
        this.xe = xe;
    }

    public ThoiGianKhoiHanh getThoiGianKhoiHanh() {
        return thoiGianKhoiHanh;
    }

    public void setThoiGianKhoiHanh(ThoiGianKhoiHanh thoiGianKhoiHanh) {
        this.thoiGianKhoiHanh = thoiGianKhoiHanh;
    }

    public TuyenDuong getTuyenDuong() {
        return tuyenDuong;
    }

    public void setTuyenDuong(TuyenDuong tuyenDuong) {
        this.tuyenDuong = tuyenDuong;
    }

    public NhaXe getNhaXe() {
        return nhaXe;
    }

    public void setNhaXe(NhaXe nhaXe) {
        this.nhaXe = nhaXe;
    }

    public DonKhach getDonKhach() {
        return donKhach;
    }

    public void setDonKhach(DonKhach donKhach) {
        this.donKhach = donKhach;
    }

    public TraKhach getTraKhach() {
        return traKhach;
    }

    public void setTraKhach(TraKhach traKhach) {
        this.traKhach = traKhach;
    }

    public LocalTime getThoiGianKetThuc() {
        return thoiGianKetThuc;
    }

    public void setThoiGianKetThuc() {
        this.thoiGianKetThuc = thoiGianKhoiHanh.getGioKhoiHanh().plus(Duration.ofMinutes(khoangThoiGianDiChuyen));
    }

    public List<GheXe> getgheConTrongList() {
        return gheConTrongList;
    }

    public void setGheConTrongList(List<GheXe> gheConTrongList) {
        this.gheConTrongList = gheConTrongList;
        setGheConTrongListStr(gheConTrongList);
    }

//    public String reFormatGheTrongList(List<GheXe> gheConTrongList){
//        String val = "";
//        for (GheXe gheXe: gheConTrongList){
//            val = val.concat("{"+gheXe.getIdGhe() + ":" + gheXe.getGiaGhe() +"}");
//        }
//        return val;
//    }
    @Override
    public String toString() {
        return "LoTrinh{" +
                "donKhach=" + donKhach +
                ", traKhach=" + traKhach +
                ", idLoTrinh='" + idLoTrinh + '\'' +
                ", giaLoTrinh=" + giaLoTrinh +
                ", khoangThoiGianDiChuyen=" + khoangThoiGianDiChuyen +
                ", xe=" + xe +
                ", thoiGianKhoiHanh=" + thoiGianKhoiHanh +
                ", tuyenDuong=" + tuyenDuong +
                ", nhaXe=" + nhaXe +
                '}';
    }
}
