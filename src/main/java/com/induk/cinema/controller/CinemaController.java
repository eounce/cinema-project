package com.induk.cinema.controller;

import com.induk.cinema.domain.City;
import com.induk.cinema.service.CinemaService;
import com.induk.cinema.service.CityService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/csmovie/cinema")
@RequiredArgsConstructor
public class CinemaController {

    private final CityService cityService;
    private final CinemaService cinemaService;

    @GetMapping
    public String home(Model model) {
        model.addAttribute("cinemas", cinemaService.cinemaList());
        model.addAttribute("citys", cityService.cityList());

        return "cinema/cinema/listForm";
    }


}
