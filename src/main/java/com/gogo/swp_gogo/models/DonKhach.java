package com.gogo.swp_gogo.models;

public class DonKhach {
    private String idLoTrinh;
    private String noiDonKhach;

    public DonKhach(){}
    public DonKhach(String idLoTrinh, String noiDonKhach) {
        this.idLoTrinh = idLoTrinh;
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
}
