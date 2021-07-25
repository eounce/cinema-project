package com.induk.cinema.controller;

import com.induk.cinema.domain.Schedule;
import com.induk.cinema.service.ReservationService;
import com.induk.cinema.service.ScheduleService;
import com.induk.cinema.service.SeatService;
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

    private final ReservationService reservationService;
    private final ScheduleService scheduleService;
    private final SeatService seatService;

    @GetMapping
    public String home(@RequestParam(required=false) Long scheduleId, Model model) {
        model.addAttribute("scheduleId", scheduleId);

        Schedule schedule = scheduleService.findSchedule(scheduleId);
        model.addAttribute("schedule", schedule);

        model.addAttribute("seats", seatService.findBySchedule(scheduleId));

        return "cinema/reservation/movie-seat";
    }
}
