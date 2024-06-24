package ourgram.ccl.ccl_web.data;

import java.util.HashMap;
import java.util.Map;

public class Data {
    private static Map<String, String> username_DB = new HashMap<>();
    
    public static void userPush(String seed, String username) {
        username_DB.put(seed, username);
    }

    public static String getName(String seed) {
        return username_DB.get(seed);
    }

    public static void userRemove(String seed) {
        username_DB.remove(seed);
    }
}