package com.induk.cinema.controller;

import com.induk.cinema.domain.Movie;
import com.induk.cinema.service.MovieService;
import com.induk.cinema.service.ReviewService;
import com.induk.cinema.util.FileStore;
import lombok.RequiredArgsConstructor;
import org.springframework.core.io.Resource;
import org.springframework.core.io.UrlResource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.net.MalformedURLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Controller
@RequestMapping("/csmovie")
@RequiredArgsConstructor
public class MainController {

    private final MovieService movieService;
    private final FileStore fileStore;
    private final ReviewService reviewService;

    @RequestMapping
    public String home(Model model) {
        // movie List
        List<Movie> movies = movieService.movieList();
        List<List<String>> formats = new ArrayList<>();
        for (Movie movie : movies) {
            formats.add(Arrays.asList(movie.getScreeningFormat().split(",")));
        }

        // movie top4
        List<Movie> top4 = movieService.movieListHighRank();
        List<List<String>> top4Formats = new ArrayList<>();
        for (Movie movie : top4) {
            top4Formats.add(Arrays.asList(movie.getScreeningFormat().split(",")));
        }

        model.addAttribute("movies", movies);
        model.addAttribute("formats", formats);

        model.addAttribute("top4", top4);
        model.addAttribute("top4Formats", top4Formats);
        model.addAttribute("popularReviews", reviewService.reviewBySortType(SortType.Popularity));
        model.addAttribute("recentReviews", reviewService.reviewBySortType(SortType.Recent));
        return "cinema/main/index";
    }

    @ResponseBody
    @GetMapping("/images/{filename}")
    public Resource downloadImage(@PathVariable String filename) throws MalformedURLException {
        return new UrlResource("file:" + fileStore.getFullPath("movie", filename));
    }
}
