package com.gogo.swp_gogo.models;

public class TraKhach {
    private String idLoTrinh;
    private String noiTraKhach;
    private String idTraKhach;

    public TraKhach(){}
    public TraKhach(String idTraKhach,String idLoTrinh, String noiTraKhach) {
        this.idTraKhach = idTraKhach;
        this.idLoTrinh = idLoTrinh;
        this.noiTraKhach = noiTraKhach;
    }

    public TraKhach(String noiTraKhach) {
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

    public String getIdTraKhach() {
        return idTraKhach;
    }

    public void setIdTraKhach(String idTraKhach) {
        this.idTraKhach = idTraKhach;
    }

    @Override
    public String toString() {
        return noiTraKhach;
    }
}
