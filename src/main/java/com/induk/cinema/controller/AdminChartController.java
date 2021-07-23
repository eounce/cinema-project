package com.induk.cinema.controller;

import com.induk.cinema.domain.Movie;
import com.induk.cinema.dto.MoviesSale;
import com.induk.cinema.dto.Sales;
import com.induk.cinema.service.MovieService;
import com.induk.cinema.service.ReservationService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.*;
import java.util.stream.Collectors;

@Slf4j
@Controller
@RequestMapping("/csmovie/admin/chart")
@RequiredArgsConstructor
public class AdminChartController {

    private final ReservationService reservationService;
    private final MovieService movieService;

    @GetMapping("/movie")
    public String movie(Model model) {
        List<Movie> movies = movieService.movieList();
        model.addAttribute("movies", movies);
        return "admin/chart/movieChart";
    }

    @GetMapping("/movies")
    public String movies() {
        return "admin/chart/moviesChart";
    }

    @ResponseBody
    @PostMapping("/movie")
    public List<Integer> movieChart(@RequestParam(value = "movieId") Long movieId,
                           @RequestParam(value = "year") String year) {
        Map<String, Integer> map = new LinkedHashMap<>();
        for(int i = 1; i <= 12; i++) {
            String date;
            if (i < 10) date = year + "-0" + i;
            else date = year + "-" + i;
            map.put(date, 0);
        }

        List<Sales> sales = reservationService.movieSales(movieId, year);
        for (Sales sale : sales) {
            map.replace(sale.getDate(), sale.getPrice());
        }

        return map.values().stream().collect(Collectors.toList());
    }

    @ResponseBody
    @PostMapping("/movies")
    public HashMap<String, Object> moviesChart(@RequestParam(value = "date1") String date1,
                                               @RequestParam(value = "date2") String date2) {
        List<MoviesSale> moviesSales = reservationService.movieListSale(date1, date2);

        List<String> titles = new ArrayList<>();
        List<Integer> prices = new ArrayList<>();
        for (MoviesSale moviesSale : moviesSales) {
            titles.add(moviesSale.getTitle());
            prices.add(moviesSale.getPrice());
        }

        HashMap<String, Object> map = new HashMap<>();
        map.put("titles", titles);
        map.put("prices", prices);

        return map;
    }
}
