package ourgram.ccl.ccl_web.service;

import java.io.UnsupportedEncodingException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import ourgram.ccl.ccl_web.data.DBData;
import ourgram.ccl.ccl_web.data.Data;
import ourgram.ccl.ccl_web.data.SeedCreate;

@RestController
public class Login {
    private DBData db;

    @Autowired
    public Login(DBData db) {
        this.db = db;
    }

    @PostMapping("/login")
    public ResponseEntity<String> login_post(HttpServletRequest req, @RequestParam(name="username", required=true) String username, @RequestParam(name="password", required=true) String password) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        HttpHeaders headers = new HttpHeaders();
        String result = "404";
        try (Connection conn = DriverManager.getConnection(db.getDBurl(), db.getDBuser(), db.getDBpass())) {
            req.setCharacterEncoding("UTF-8");
            headers.add("Content-Type", "text/html; charset=UTF-8");
            String query = "SELECT * FROM user WHERE username=? AND pass=?";
            PreparedStatement sql = conn.prepareStatement(query);
            sql.setString(1, username);
            sql.setString(2, password);

            ResultSet rs = sql.executeQuery();
            if(rs.next()) {
                HttpSession session = req.getSession();
                String seed = SeedCreate.get();
                session.setAttribute("seed", seed);
                Data.userPush(seed, username);
                result = "<button id='login_ok' class='w-100 mb-2 btn btn-lg rounded-3 btn-success'>로그인 성공</button>";
            }else {
                result = "<button class='w-100 mb-2 btn btn-lg rounded-3 btn-danger'>아이디 또는 비번이 잘못되었습니다</button>";
            }
        } catch (SQLException | UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return new ResponseEntity<>(result, headers, HttpStatus.OK);
    }

    @PostMapping("/sing_out")
    public ResponseEntity<String> sing_out(HttpServletRequest req, @RequestParam(name="username", required=true) String username) throws UnsupportedEncodingException {
        HttpHeaders headers = new HttpHeaders();
        req.setCharacterEncoding("UTF-8");
        headers.add("Content-Type", "text/html; charset=UTF-8");
        HttpSession sess = req.getSession();
        String seed = (String) sess.getAttribute("seed");
        String result = "<p id='sing_no'></p>";

        if(Data.nameGet(seed).equals(username.replace(",", ""))) {
            sess.invalidate();
            Data.userRemove(seed);
            result = "<p id='sing_ok'></p>";
        }
        
        return new ResponseEntity<>(result, headers, HttpStatus.OK);
    }
}