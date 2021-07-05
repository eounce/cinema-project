package com.induk.cinema.controller;

import com.induk.cinema.util.FileStore;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Slf4j
@Controller
@RequestMapping("/csmovie/admin/movie_ad")
@RequiredArgsConstructor
public class AdminMovieAdController {

    private FileStore fileStore;

    @GetMapping
    public String movieAdList(@RequestParam Long movieId, Model model) {
        return "admin/movie_ad/listForm";
    }
}
