package com.gogo.swp_gogo.models;

import java.util.ArrayList;
import java.util.List;

public class LoTrinhList extends ArrayList<LoTrinh> {
    private List<LoTrinh> loTrinhList = new ArrayList<>();

    public List<LoTrinh> getLoTrinhList() {
        return loTrinhList;
    }

    public void setLoTrinhList(List<LoTrinh> loTrinhList) {
        this.loTrinhList = loTrinhList;
    }
}
