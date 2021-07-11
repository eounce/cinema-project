package com.induk.cinema.controller;

import com.induk.cinema.domain.Movie;
import com.induk.cinema.domain.MovieAd;
import com.induk.cinema.dto.Format;
import com.induk.cinema.dto.MoviePage;
import com.induk.cinema.service.GenreService;
import com.induk.cinema.service.MovieAdService;
import com.induk.cinema.service.MovieService;
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
import java.util.List;

@Slf4j
@Controller
@RequestMapping("/csmovie/movies")
@RequiredArgsConstructor
public class MovieController {

    private final GenreService genreService;
    private final MovieService movieService;
    private final MovieAdService movieAdService;
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
    public MoviePage movie_list(@RequestParam(value = "genreChBox[]", required = false) List<String> genreChBox,
                                  @RequestParam(value = "formatChBox[]", required = false) List<String> formatChBox,
                                  @RequestParam(value = "sort") int sort,
                                  @RequestParam(value = "page") int page) {
        // 페이지 처리
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

    @ResponseBody
    @GetMapping("/images/{filename}")
    public Resource downloadImage(@PathVariable String filename) throws MalformedURLException {
        return new UrlResource("file:" + fileStore.getFullPath("movie", filename));
    }
}
