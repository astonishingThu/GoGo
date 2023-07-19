package com.gogo.swp_gogo.models;

import java.time.LocalDate;
import java.util.Date;

public class VeXe
{
    private String gioKhoiHanh;
    private String ngayKhoiHanh;
    private String diemDi;
    private String diemDen;
    private String tenNhaXe;

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

    public String getDiemDi() {
        return diemDi;
    }

    public void setDiemDi(String diemDi) {
        this.diemDi = diemDi;
    }

    public String getDiemDen() {
        return diemDen;
    }

    public void setDiemDen(String diemDen) {
        this.diemDen = diemDen;
    }

    public String getTenNhaXe() {
        return tenNhaXe;
    }

    public void setTenNhaXe(String tenNhaXe) {
        this.tenNhaXe = tenNhaXe;
    }

    private String idVeXe;
    private int rating;
    private String comment;
    private LocalDate ngayDatVe;
    private String idGhe;
    private String idLoTrinh;
    private String idKhachHang;
    private String idMaGiamGia;

    public VeXe(String idVeXe, int rating, String comment, LocalDate ngayDatVe, String idGhe, String idLoTrinh, String idKhachHang, String idMaGiamGia) {
        this.idVeXe = idVeXe;
        this.rating = rating;
        this.comment = comment;
        this.ngayDatVe = ngayDatVe;
        this.idGhe = idGhe;
        this.idLoTrinh = idLoTrinh;
        this.idKhachHang = idKhachHang;
        this.idMaGiamGia = idMaGiamGia;
    }

    public String getIdVeXe() {
        return idVeXe;
    }

    public void setIdVeXe(String idVeXe) {
        this.idVeXe = idVeXe;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public LocalDate getNgayDatVe() {
        return ngayDatVe;
    }

    public void setNgayDatVe(LocalDate ngayDatVe) {
        this.ngayDatVe = ngayDatVe;
    }

    public String getIdGhe() {
        return idGhe;
    }

    public void setIdGhe(String idGhe) {
        this.idGhe = idGhe;
    }

    public String getIdLoTrinh() {
        return idLoTrinh;
    }

    public void setIdLoTrinh(String idLoTrinh) {
        this.idLoTrinh = idLoTrinh;
    }

    public String getIdKhachHang() {
        return idKhachHang;
    }

    public void setIdKhachHang(String idKhachHang) {
        this.idKhachHang = idKhachHang;
    }

    public String getIdMaGiamGia() {
        return idMaGiamGia;
    }

    public void setIdMaGiamGia(String idMaGiamGia) {
        this.idMaGiamGia = idMaGiamGia;
    }

    @Override
    public String toString() {
        return "VeXe{" +
                "idVeXe='" + idVeXe + '\'' +
                ", rating=" + rating +
                ", comment='" + comment + '\'' +
                ", ngayDatVe=" + ngayDatVe +
                ", idGhe='" + idGhe + '\'' +
                ", idLoTrinh='" + idLoTrinh + '\'' +
                ", idKhachHang='" + idKhachHang + '\'' +
                ", idMaGiamGia='" + idMaGiamGia + '\'' +
                '}';
    }
}
