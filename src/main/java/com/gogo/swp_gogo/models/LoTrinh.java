package com.gogo.swp_gogo.models;

import java.time.Duration;
import java.time.LocalDate;
import java.time.LocalTime;

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
