package com.induk.cinema.controller;

import com.induk.cinema.domain.Movie;
import com.induk.cinema.dto.Format;
import com.induk.cinema.service.GenreService;
import com.induk.cinema.service.MovieService;
import com.induk.cinema.util.FileStore;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.core.io.Resource;
import org.springframework.core.io.UrlResource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.net.MalformedURLException;
import java.util.List;

@Slf4j
@Controller
@RequestMapping("/csmovie/movies")
@RequiredArgsConstructor
public class MovieController {

    private final GenreService genreService;
    private final MovieService movieService;
    private final FileStore fileStore;


    @GetMapping
    public String movie_grid(Model model) {
        model.addAttribute("movies", movieService.movieList());
        model.addAttribute("genres", genreService.genreList());
        model.addAttribute("formats", Format.values());
        return "cinema/movie/movieList";
    }

    @ResponseBody
    @PostMapping("/list")
    public List<Movie> movie_list(@RequestParam(value = "genreChBox[]", required = false) List<String> genreChBox,
                                  @RequestParam(value = "formatChBox[]", required = false) List<String> formatChBox,
                                  @RequestParam(value = "sort") int sort) {

        log.info("genre : {}", genreChBox);
        log.info("format : {}", formatChBox);
        log.info("sort : {}", sort);
        return movieService.movieListOpt(genreChBox, formatChBox, sort);
    }

    @ResponseBody
    @GetMapping("/images/{filename}")
    public Resource downloadImage(@PathVariable String filename) throws MalformedURLException {
        return new UrlResource("file:" + fileStore.getFullPath("movie", filename));
    }
}
