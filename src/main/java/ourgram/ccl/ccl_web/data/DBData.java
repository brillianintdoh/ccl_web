package ourgram.ccl.ccl_web.data;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component
public class DBData {
    @Value("${dburl}")
    private String DBurl;

    @Value("${dbuser}")
    private String DBuser;

    @Value("${dbpass}")
    private String DBpass;

    public String getDBurl() {
        return DBurl;
    }

    public String getDBuser() {
        return DBuser;
    }

    public String getDBpass() {
        return DBpass;
    }    
}
