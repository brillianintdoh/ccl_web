package ourgram.ccl.ccl_web.page;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import ourgram.ccl.ccl_web.data.Data;

@Controller
public class Main {
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
            model.addAttribute("username", Data.nameGet(seed));
        }
        return "page/learning/index";
    }
}