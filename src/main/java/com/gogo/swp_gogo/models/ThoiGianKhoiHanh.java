package com.gogo.swp_gogo.models;

public class ThoiGianKhoiHanh {
    private String idThoiGian;
    private String gioKhoiHanh;
    private String ngayKhoiHanh;

    public ThoiGianKhoiHanh(){}

    public ThoiGianKhoiHanh(String idThoiGian, String gioKhoiHanh, String ngayKhoiHanh) {
        this.idThoiGian = idThoiGian;
        this.gioKhoiHanh = gioKhoiHanh;
        this.ngayKhoiHanh = ngayKhoiHanh;
    }

    public String getIdThoiGian() {
        return idThoiGian;
    }

    public void setIdThoiGian(String idThoiGian) {
        this.idThoiGian = idThoiGian;
    }

    public String getGioKhoiHanh() {
        return gioKhoiHanh;
    }

    public void setGioKhoiHanh(String gioKhoiHanh) {
        this.gioKhoiHanh = gioKhoiHanh;
    }

    public String getNgayKhoiHanh() {
        return ngayKhoiHanh;
    }

    public void setNgayKhoiHanh(String ngayKhoiHanh) {
        this.ngayKhoiHanh = ngayKhoiHanh;
    }
}
