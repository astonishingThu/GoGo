package com.gogo.swp_gogo.models;
import java.util.List;

public class DataValidator {
    public static boolean isTableInfoExist(String col, String data, String table) {
        List<String> list = MyQueries.getAllTableInfo(col,table);
        for (String sample:list) {
            if (sample.equals(data)) return true;
        }
        return false;
    }
    public static boolean isAccountValid(String base, String data, String password,String table) {
        return MyQueries.getTableInfoByBase(base, "password",data,table).equals(password);
    }
}
