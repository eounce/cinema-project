package com.induk.cinema.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

    @RequestMapping("/csmovie")
    public String home() {
        return "cinema/main/index";
    }

}
