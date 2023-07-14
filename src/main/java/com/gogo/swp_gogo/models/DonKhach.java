package com.gogo.swp_gogo.models;

public class DonKhach {
    private String idLoTrinh;
    private String noiDonKhach;
    private String idDonKhach;

    public DonKhach(){}
    public DonKhach(String idDonKhach, String idLoTrinh, String noiDonKhach) {
        this.idDonKhach = idDonKhach;
        this.idLoTrinh = idLoTrinh;
        this.noiDonKhach = noiDonKhach;
    }

    public DonKhach(String noiDonKhach) {
        this.noiDonKhach = noiDonKhach;
    }

    public String getIdLoTrinh() {
        return idLoTrinh;
    }

    public void setIdLoTrinh(String idLoTrinh) {
        this.idLoTrinh = idLoTrinh;
    }

    public String getNoiDonKhach() {
        return noiDonKhach;
    }

    public void setNoiDonKhach(String noiDonKhach) {
        this.noiDonKhach = noiDonKhach;
    }

    public String getIdDonKhach() {
        return idDonKhach;
    }

    public void setIdDonKhach(String idDonKhach) {
        this.idDonKhach = idDonKhach;
    }

    @Override
    public String toString() {
        return noiDonKhach;
    }
}
