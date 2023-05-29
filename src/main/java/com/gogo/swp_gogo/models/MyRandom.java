package com.gogo.swp_gogo.models;

import java.util.Random;

public class MyRandom {
    public static String generateRandomString(int numberOfCharacters) {
        Random r = new Random();
        StringBuilder res = new StringBuilder();
        for (int i=0; i<numberOfCharacters; i++) {
            char a = (char) (r.nextInt(26) + 'a');
            res.append(a);
        }
        return res.toString();
    }

    public static String generateRandomId(int charactersNumber, String fixedFirstCharacters) {
        int fixedCharsNum = fixedFirstCharacters.length();
        return fixedFirstCharacters+generateRandomString(charactersNumber-fixedCharsNum);
    }
}
