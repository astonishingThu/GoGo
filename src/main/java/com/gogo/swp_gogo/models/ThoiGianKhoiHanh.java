package com.gogo.swp_gogo.models;

import java.time.LocalDate;
import java.time.LocalTime;

public class ThoiGianKhoiHanh {
    private String idThoiGian;
    private LocalTime gioKhoiHanh;
    private LocalDate ngayKhoiHanh;

    public ThoiGianKhoiHanh(){}

    public ThoiGianKhoiHanh(String idThoiGian, LocalTime gioKhoiHanh, LocalDate ngayKhoiHanh) {
        this.idThoiGian = idThoiGian;
        this.gioKhoiHanh = gioKhoiHanh;
        this.ngayKhoiHanh = ngayKhoiHanh;
    }

    public ThoiGianKhoiHanh(LocalDate ngayKhoiHanh) {
        this.ngayKhoiHanh = ngayKhoiHanh;
    }

    public String getIdThoiGian() {
        return idThoiGian;
    }

    public void setIdThoiGian(String idThoiGian) {
        this.idThoiGian = idThoiGian;
    }

    public LocalTime getGioKhoiHanh() {
        return gioKhoiHanh;
    }

    public void setGioKhoiHanh(LocalTime gioKhoiHanh) {
        this.gioKhoiHanh = gioKhoiHanh;
    }

    public LocalDate getNgayKhoiHanh() {
        return ngayKhoiHanh;
    }

    public void setNgayKhoiHanh(LocalDate ngayKhoiHanh) {
        this.ngayKhoiHanh = ngayKhoiHanh;
    }
}
