package com.gogo.swp_gogo.models;

public class GheXe {
    private String idGhe;
    private int giaGhe;
    private String idXe;

    public GheXe(String idGhe, int giaGhe, String idXe) {
        this.idGhe = idGhe;
        this.giaGhe = giaGhe;
        this.idXe = idXe;
    }

    public String getIdGhe() {
        return idGhe;
    }

    public void setIdGhe(String idGhe) {
        this.idGhe = idGhe;
    }

    public int getGiaGhe() {
        return giaGhe;
    }

    public void setGiaGhe(int giaGhe) {
        this.giaGhe = giaGhe;
    }

    public String getIdXe() {
        return idXe;
    }

    public void setIdXe(String idXe) {
        this.idXe = idXe;
    }

    @Override
    public String toString() {
        return "GheXe{" +
                "idGhe='" + idGhe + '\'' +
                ", giaGhe=" + giaGhe +
                ", idXe='" + idXe + '\'' +
                '}';
    }
}
