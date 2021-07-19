package com.induk.cinema.controller;

import com.induk.cinema.domain.Cinema;
import com.induk.cinema.domain.City;
import com.induk.cinema.domain.Schedule;
import com.induk.cinema.service.CinemaService;
import com.induk.cinema.service.CityService;
import com.induk.cinema.service.GenreService;
import com.induk.cinema.service.ScheduleService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Controller
@RequestMapping("/csmovie/schedules")
@RequiredArgsConstructor
public class ScheduleController {

    private final CityService cityService;
    private final CinemaService cinemaService;
    private final ScheduleService scheduleService;

    @RequestMapping
    public String home(Model model) {

        List<City> citys = cityService.cityList();
        model.addAttribute("citys", citys);

        return "cinema/schedule/listForm";
    }

    @PostMapping("/cinemaAjax")
    @ResponseBody
    public List<Cinema> cinemaAjax(@RequestBody Long cityId){
        List<Cinema> cinemas =cinemaService.findCinemaListByCityId(cityId);

        return cinemas;
    }

    @PostMapping("/scheduleAjax")
    @ResponseBody
    public List<Schedule> scheduleAjax(@RequestParam(value = "movieTitle") String movieTitle,
                                       @RequestParam(value = "date") String date,
                                       @RequestParam(value = "cinemaId") Long cinemaId){

        List<Schedule> schedules = scheduleService.findScheduleForAjax(movieTitle, date, cinemaId);



        return schedules;
    }

}
