package ourgram.ccl.ccl_web;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import ourgram.ccl.ccl_web.data.DBData;
import ourgram.ccl.ccl_web.data.Data;

@Controller
public class Main {
    private DBData db;

    @Autowired
    public Main(DBData db) {
        this.db = db;
    }


    @GetMapping("/")
    public String main(Model model, @SessionAttribute(name="seed", required=false) String seed) {
        if(seed != null) {
            model.addAttribute("username", Data.nameGet(seed));
        }
        return "page/index/index";
    } 

    @GetMapping("/learning")
    public String learning(Model model, @SessionAttribute(name="seed", required=false) String seed) {
        if(seed != null) {
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
            String username = Data.nameGet(seed);
            String points = "null";
            String score = "null";
            String question = "null";
            try {
                Connection conn = DriverManager.getConnection(db.getDBurl(), db.getDBuser(), db.getDBpass());
                String query = "SELECT * FROM user WHERE username=?";

                PreparedStatement sql = conn.prepareStatement(query);
                sql.setString(1, username);
                ResultSet rs = sql.executeQuery();
                if(rs.next()) {
                    points = rs.getString("points");
                    score = rs.getString("score");
                    question = rs.getString("question");
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }

            model.addAttribute("username", username);
            model.addAttribute("points", points);
            model.addAttribute("score", score);
            model.addAttribute("question", question);
        }
        return "page/learning/index";
    }
}