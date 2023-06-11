package com.gogo.swp_gogo.models;

public class TuyenDuong {
    private String idTuyenDuong;
    private String noiBatDau;
    private String dichDen;

    public TuyenDuong() {
    }

    public TuyenDuong(String idTuyenDuong, String noiBatDau, String dichDen) {
        this.idTuyenDuong = idTuyenDuong;
        this.noiBatDau = noiBatDau;
        this.dichDen = dichDen;
    }

    public String getIdTuyenDuong() {
        return idTuyenDuong;
    }

    public void setIdTuyenDuong(String idTuyenDuong) {
        this.idTuyenDuong = idTuyenDuong;
    }

    public String getNoiBatDau() {
        return noiBatDau;
    }

    public void setNoiBatDau(String noiBatDau) {
        this.noiBatDau = noiBatDau;
    }

    public String getDichDen() {
        return dichDen;
    }

    public void setDichDen(String dichDen) {
        this.dichDen = dichDen;
    }
}
