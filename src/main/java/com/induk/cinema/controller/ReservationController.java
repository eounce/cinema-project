package com.induk.cinema.controller;

import com.induk.cinema.domain.Comment;
import com.induk.cinema.domain.Member;
import com.induk.cinema.domain.Schedule;
import com.induk.cinema.dto.CheckoutData;
import com.induk.cinema.service.ReservationService;
import com.induk.cinema.service.ScheduleService;
import com.induk.cinema.service.SeatService;
import com.sun.tools.javac.comp.Check;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

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

    @GetMapping("/checkout")
    public String checkout(@RequestParam(required=false) String price, @RequestParam(required=false) String seat,
                           @RequestParam(required=false) Long scheduleId, @RequestParam(required=false) String adult,
                           @RequestParam(required=false) String youth, Model model, HttpServletRequest request) throws Exception {

        model.addAttribute("schedule", scheduleService.findSchedule(scheduleId));

        HttpSession session = request.getSession();
        Member member = (Member)session.getAttribute("member");

        model.addAttribute("member", member);
        model.addAttribute("seat", seat);
        model.addAttribute("price", price);
        model.addAttribute("adult", adult);
        model.addAttribute("youth", youth);

        return "cinema/reservation/movie-checkout";
    }

    @PostMapping("/eventCodeAjax")
    @ResponseBody
    public List<Schedule> scheduleAjax(@RequestParam(value = "code") String code,
                                       @RequestParam(value = "member_id") Long member_id){





        return schedules;
    }

    @PostMapping("/checkout")
    public String checkout(@ModelAttribute("checkoutData") CheckoutData checkoutData, Model model) {

        System.out.println(checkoutData.getMember_id());

        return null;
    }


}
