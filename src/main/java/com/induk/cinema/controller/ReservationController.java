package com.induk.cinema.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/csmovie/reservations")
@RequiredArgsConstructor
public class ReservationController {

    @GetMapping
    public String home(@RequestParam(required=false) Long scheduleId, Model model) {
        model.addAttribute("scheduleId", scheduleId);
        return "cinema/reservation/movie-seat";
    }
}
