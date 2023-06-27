package com.gogo.swp_gogo.models;

import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Random;
import java.util.Set;

public class MyRandom {
    public static String generateRandomString(int numberOfCharacters) {
        Random r = new Random();
        Set<Character> set = new HashSet<>();
        for (int i=0; i<numberOfCharacters; i++) {
            char a = (char) (r.nextInt(26) + 'a');
            set.add(a);
        }
        System.out.println("count");
        System.out.println(set.toString().replaceAll("\\,|\\[|\\]|\\s", ""));
        return set.toString().replaceAll("\\,|\\[|\\]|\\s", "");
    }

    public static String generateRandomId(int charactersNumber, String fixedFirstCharacters) {
        int fixedCharsNum = fixedFirstCharacters.length();
        return fixedFirstCharacters+generateRandomString(charactersNumber-fixedCharsNum);
    }
}
