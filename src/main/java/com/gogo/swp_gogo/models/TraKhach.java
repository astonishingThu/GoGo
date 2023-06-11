package com.gogo.swp_gogo.models;

public class TraKhach {
    private String idLoTrinh;
    private String noiTraKhach;


    public TraKhach(){}
    public TraKhach(String idLoTrinh, String noiTraKhach) {
        this.idLoTrinh = idLoTrinh;
        this.noiTraKhach = noiTraKhach;
    }

    public String getIdLoTrinh() {
        return idLoTrinh;
    }

    public void setIdLoTrinh(String idLoTrinh) {
        this.idLoTrinh = idLoTrinh;
    }

    public String getNoiTraKhach() {
        return noiTraKhach;
    }

    public void setNoiTraKhach(String noiTraKhach) {
        this.noiTraKhach = noiTraKhach;
    }
}
