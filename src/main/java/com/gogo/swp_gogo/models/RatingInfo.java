package com.gogo.swp_gogo.models;

import java.time.LocalDate;

public class RatingInfo {
    LocalDate ngayDatVe;
    String tenKhachHang;
    int rating;
    String comment;

    public RatingInfo(String tenKhachHang, int rating, String comment, LocalDate ngayDatVe) {
        this.tenKhachHang = tenKhachHang;
        this.rating = rating;
        this.comment = comment;
        this.ngayDatVe = ngayDatVe;
    }

    public LocalDate getNgayDatVe() {
        return ngayDatVe;
    }

    public void setNgayDatVe(LocalDate ngayDatVe) {
        this.ngayDatVe = ngayDatVe;
    }

    public String getTenKhachHang() {
        return tenKhachHang;
    }

    public void setTenKhachHang(String tenKhachHang) {
        this.tenKhachHang = tenKhachHang;
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
}
