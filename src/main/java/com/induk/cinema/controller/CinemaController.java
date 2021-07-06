package com.induk.cinema.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/csmovie/cinema")
@RequiredArgsConstructor
public class CinemaController {
    @GetMapping
    public String home() {
        return "cinema/cinema/listForm";
    }
}
