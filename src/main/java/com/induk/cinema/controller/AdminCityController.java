package com.induk.cinema.controller;

import com.induk.cinema.domain.Actor;
import com.induk.cinema.service.CityService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/citys")
@RequiredArgsConstructor
public class AdminCityController {

    private final CityService cityService;

    @GetMapping
    public String citys(Model model) {
        model.addAttribute("citys", cityService.cityList());
        return "admin/city/listForm";
    }
}
