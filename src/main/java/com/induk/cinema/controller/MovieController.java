package com.induk.cinema.controller;

import com.induk.cinema.domain.Movie;
import com.induk.cinema.domain.MovieActor;
import com.induk.cinema.domain.MovieAd;
import com.induk.cinema.dto.Format;
import com.induk.cinema.dto.MoviePage;
import com.induk.cinema.service.*;
import com.induk.cinema.util.Criteria;
import com.induk.cinema.util.FileStore;
import com.induk.cinema.util.PageMaker;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.core.io.Resource;
import org.springframework.core.io.UrlResource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.net.MalformedURLException;
import java.util.Arrays;
import java.util.List;

@Slf4j
@Controller
@RequestMapping("/csmovie/movies")
@RequiredArgsConstructor
public class MovieController {

    private final GenreService genreService;
    private final MovieService movieService;
    private final MovieAdService movieAdService;
    private final MovieActorService movieActorService;
    private final FileStore fileStore;


    @GetMapping
    public String movie_grid(Model model) {
        model.addAttribute("genres", genreService.genreList());
        model.addAttribute("formats", Format.values());
        return "cinema/movie/movieList";
    }

    @ResponseBody
    @PostMapping("/list")
    public MoviePage movieList(@RequestParam(value = "genreChBox[]", required = false) List<String> genreChBox,
                                  @RequestParam(value = "formatChBox[]", required = false) List<String> formatChBox,
                                  @RequestParam(value = "sort") int sort,
                                  @RequestParam(value = "page") int page) {
        // 페이지 처리에 필요한 값 설정
        Criteria criteria = new Criteria();
        criteria.setPage(page);

        PageMaker pageMaker = new PageMaker();
        pageMaker.setCri(criteria);
        pageMaker.setTotalCount(movieService.movieCounts(genreChBox, formatChBox, sort));

        // 영화 트레일러 가져오기
        List<Movie> movies = movieService.movieListOpt(genreChBox, formatChBox, sort, criteria);
        for (Movie movie : movies) {
            MovieAd movieTrailer = movieAdService.findMovieTrailer(movie.getId());
            if(movieTrailer != null) {
                movie.setTrailer(movieTrailer.getStoreFilename());
            }
        }

        MoviePage moviePage = new MoviePage();
        moviePage.setMovieList(movies);
        moviePage.setPageMaker(pageMaker);

        return moviePage;
    }

    @GetMapping("/{id}")
    public String movieDetail(@PathVariable Long id, Model model) {
        Movie movie = movieService.findMovie(id);
        List<MovieAd> movieImage = movieAdService.findMovieImage(id);
        MovieAd movieAd = movieAdService.findMovieTrailer(id);
        List<MovieActor> movieActors = movieActorService.movieActorList(id);

        if(movieAd != null) { movie.setTrailer(movieAd.getStoreFilename()); }
        List<String> formats = Arrays.asList(movie.getScreeningFormat().split(","));

        model.addAttribute("movie", movie);
        model.addAttribute("images", movieImage);
        model.addAttribute("formats", formats);
        model.addAttribute("movieActors", movieActors);

        return "cinema/movie/movieDetail";
    }

    @ResponseBody
    @GetMapping("/images/{filename}")
    public Resource downloadImage(@PathVariable String filename) throws MalformedURLException {
        return new UrlResource("file:" + fileStore.getFullPath("movie", filename));
    }

    @ResponseBody
    @GetMapping("/images/{filename}/movieAd")
    public Resource movieImage(@PathVariable String filename) throws MalformedURLException {
        return new UrlResource("file:" + fileStore.getFullPath("movie_ad", filename));
    }

    @ResponseBody
    @GetMapping("/images/{filename}/director")
    public Resource movieDirector(@PathVariable String filename) throws MalformedURLException {
        return new UrlResource("file:" + fileStore.getFullPath("director", filename));
    }

    @ResponseBody
    @GetMapping("/images/{filename}/actor")
    public Resource movieActor(@PathVariable String filename) throws MalformedURLException {
        return new UrlResource("file:" + fileStore.getFullPath("actor", filename));
    }
}
