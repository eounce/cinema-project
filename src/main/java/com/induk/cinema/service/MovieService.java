package com.induk.cinema.service;

import com.induk.cinema.domain.Movie;
import com.induk.cinema.repository.MovieRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;

@Slf4j
@Service
@RequiredArgsConstructor
public class MovieService {

    private final MovieRepository movieRepository;

    public List<Movie> movieList() {
        return movieRepository.findAll();
    }
}
