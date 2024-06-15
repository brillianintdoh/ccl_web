package ourgram.ccl.ccl_web.data;

import java.security.SecureRandom;

public class SeedCreate {
    private static final String VALUE = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
    private static final int length = 30;

    public static String get() {
        SecureRandom random = new SecureRandom();
        StringBuilder result = new StringBuilder(length);
        for(int i=0; i < length; i++) {
            int index = random.nextInt(VALUE.length());
            result.append(VALUE.charAt(index));
        }
        return result.toString();
    }
}