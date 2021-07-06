package com.induk.cinema.repository;

import com.induk.cinema.domain.Movie;
import com.induk.cinema.dto.MovieForm;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface MovieRepository {

    List<Movie> findAll();
    Movie findById(Long id);
    void save(MovieForm movieForm);
    void update(MovieForm movieForm);
    void delete(Long id);
}
