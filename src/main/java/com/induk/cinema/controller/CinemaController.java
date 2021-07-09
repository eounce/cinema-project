package com.induk.cinema.controller;

import com.induk.cinema.service.CinemaService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/csmovie/cinema")
@RequiredArgsConstructor
public class CinemaController {


    private final CinemaService cinemaService;

    @GetMapping
    public String home(Model model) {
        model.addAttribute("cinemas", cinemaService.cinemaList());
        return "cinema/cinema/listForm";
    }


}
