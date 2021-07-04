package com.induk.cinema.controller;

import com.induk.cinema.dto.MovieForm;
import com.induk.cinema.service.MovieService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/csmovie/admin/movies")
@RequiredArgsConstructor
public class AdminMovieController {

    private final MovieService movieService;

    @GetMapping
    public String movieList(Model model) {
        model.addAttribute("movies", movieService.movieList());
        return "admin/movie/listForm";
    }

    @GetMapping("/{id}")
    public String detailForm(Model model) {
        return "";
    }

    @GetMapping("/add")
    public String addForm(Model model) {
        model.addAttribute("movieForm", new MovieForm());
        return "admin/movie/addForm";
    }
}
