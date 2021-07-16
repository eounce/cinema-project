package com.induk.cinema.controller;

import com.induk.cinema.domain.*;
import com.induk.cinema.service.CinemaService;
import com.induk.cinema.service.CityService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Controller
@RequestMapping("/csmovie/cinemas")
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

    @GetMapping("/{searchText}")
    public String searchhome(@PathVariable String searchText, Model model) {


        List<Cinema> cinemas =cinemaService.findCinemaByText(searchText);
        model.addAttribute("cinemas", cinemas);
        model.addAttribute("citys", cityService.cityList());

        return "cinema/cinema/listForm";
    }

/*
    @PostMapping("/listAjax")
    @ResponseBody
    public List<Cinema> listFormAjax(@RequestBody String searchText){
        List<Cinema> cinemas =cinemaService.findCinemaByText(searchText);
        return cinemas;
    }
*/


    @GetMapping("/detail/{id}")
    public String DetailForm(@PathVariable Long id, Model model) {

        Cinema cinema = cinemaService.findCinema(id);
        model.addAttribute("cinema", cinema);

        List<String> list = Arrays.asList(cinema.getFacility().split(","));
        model.addAttribute("facilitys", list);

        List<Schedule> movies = cinemaService.findMovie(id);
        model.addAttribute("movies", movies);

        List<Schedule> schedules = cinemaService.findSceduleByCinema(id);
        model.addAttribute("schedules", schedules);

        List<Schedule> theaters = cinemaService.findByTheater(id);
        model.addAttribute("theaters", theaters);

        return "cinema/cinema/detailForm";
    }


}
