package com.induk.cinema.repository;

import com.induk.cinema.domain.Movie;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface MovieRepository {

    List<Movie> findAll();
    Movie findById(Long id);
    void save(Movie movie);
    void update(Movie movie);
    void delete(Long id);
}
