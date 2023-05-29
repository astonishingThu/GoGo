package com.gogo.swp_gogo.models;

import jakarta.servlet.http.HttpServletRequest;

public interface Account {

    boolean login(HttpServletRequest request);
    boolean signup(HttpServletRequest request);

}
