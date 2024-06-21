package ourgram.ccl.ccl_web.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.SessionAttribute;
import ourgram.ccl.ccl_web.data.DBData;
import ourgram.ccl.ccl_web.data.Data;

@Controller
public class Learning { 
    private DBData db;

    @Autowired
    public Learning(DBData db) {
        this.db = db;
    }

    @GetMapping("/learning")
    public String learning(Model model, @SessionAttribute(name="seed", required=false) String seed) {
        if(seed != null) {
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
            String time_at = "[";
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
                rs.close();
                sql.close();

                query = "SELECT * FROM time_question WHERE username=?";
                sql = conn.prepareStatement(query);
                sql.setString(1, username);
                rs = sql.executeQuery();
                while(rs.next()) {
                    String created_at = rs.getString("created_at");
                    time_at += "'"+ created_at + "', ";
                }
                time_at += "]";
                rs.close();
                sql.close();
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        
            model.addAttribute("time_at", time_at);
            model.addAttribute("username", username);
            model.addAttribute("points", points);
            model.addAttribute("score", score);
            model.addAttribute("question", question);
        }
        return "page/learning/index";
    }

    @GetMapping("/learning/menu")
    public String game(Model model, @SessionAttribute(name="seed", required=false) String seed) {
        if(seed == null) {
            return "error";
        }
        String username = Data.nameGet(seed);
        ArrayList<ArrayList<String>> question = new ArrayList<>();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        try {
            Connection conn = DriverManager.getConnection(db.getDBurl(), db.getDBuser(), db.getDBpass());
            String query = "SELECT * FROM question";
            PreparedStatement sql = conn.prepareStatement(query);
            ResultSet rs = sql.executeQuery();
            while(rs.next()) {
                String success = rs.getString("success");
                String title = rs.getString("title");
                String succ_user = "풀지 않음";
                String id = rs.getString("id");
                query = "SELECT * FROM user_question WHERE question_id=?";
                PreparedStatement sql2 = conn.prepareStatement(query);
                sql2.setString(1, id);
                ResultSet rs2 = sql2.executeQuery();
                if(rs2.next()) {
                    if(rs2.getString("user_id").equals(username)) {
                        if(rs2.getString("success").equals("1")) {
                            succ_user = "성공";
                        }
                    }
                }
                sql2.close();
                question.add(new ArrayList<String>(Arrays.asList(title, success, succ_user, id)));
            }
            rs.close();
            sql.close();
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        model.addAttribute("question", question);
        model.addAttribute("username", username);
        return "page/learning/menu/index";
    }

    @GetMapping("/learning/menu/question/{id}")
    public String question(Model model, @PathVariable String id ,@SessionAttribute(name="seed", required=false) String seed) {
        if(seed == null) {
            return "error";
        }
        String username = Data.nameGet(seed);
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        model.addAttribute("id", id);
        model.addAttribute("username", username);
        return "page/learning/menu/question/index";
    }
}