package ourgram.ccl.ccl_web;

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
            model.addAttribute("username", Data.getName(seed));
        }
        return "page/index/index";
    } 

    @GetMapping("/account")
    public String account(Model model, @SessionAttribute(name="seed", required=true) String seed) {
        model.addAttribute("username", Data.getName(seed));
        return "page/account";
    }
}