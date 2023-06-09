package com.gogo.swp_gogo.models;

import java.util.List;

public class Xe {
    private String idXe;
    private String moTa;
    private byte soLuongGhe;
    private String loaiXe;
    private String idNhaXe;
    private List<GheXe> gheXeList;

    public Xe(String idXe, String moTa, byte soLuongGhe, String loaiXe, String idNhaXe) {
        this.idXe = idXe;
        this.moTa = moTa;
        this.soLuongGhe = soLuongGhe;
        this.loaiXe = loaiXe;
        this.idNhaXe = idNhaXe;
    }

    public Xe(){}

    public List<GheXe> getGheXeList() {
        return gheXeList;
    }

    public void setGheXeList(List<GheXe> gheXeList) {
        this.gheXeList = gheXeList;
    }

    public String getIdXe() {
        return idXe;
    }

    public void setIdXe(String idXe) {
        this.idXe = idXe;
    }

    public String getMoTa() {
        return moTa;
    }

    public void setMoTa(String moTa) {
        this.moTa = moTa;
    }

    public byte getSoLuongGhe() {
        return soLuongGhe;
    }

    public void setSoLuongGhe(byte soLuongGhe) {
        this.soLuongGhe = soLuongGhe;
    }

    public String getLoaiXe() {
        return loaiXe;
    }

    public void setLoaiXe(String loaiXe) {
        this.loaiXe = loaiXe;
    }

    public String getIdNhaXe() {
        return idNhaXe;
    }

    public void setIdNhaXe(String idNhaXe) {
        this.idNhaXe = idNhaXe;
    }

    @Override
    public String toString() {
        return "Xe{" +
                "idXe='" + idXe + '\'' +
                ", moTa='" + moTa + '\'' +
                ", soLuongGhe=" + soLuongGhe +
                ", loaiXe='" + loaiXe + '\'' +
                ", idNhaXe='" + idNhaXe + '\'' +
                ", gheXeList=" + gheXeList +
                '}';
    }
}
