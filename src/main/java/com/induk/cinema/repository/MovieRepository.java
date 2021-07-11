package com.induk.cinema.repository;

import com.induk.cinema.domain.Movie;
import com.induk.cinema.dto.MovieForm;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface MovieRepository {

    List<Movie> findAll();
    List<Movie> findByOption(Map<String, Object> map);
    int countAll(Map<String, Object> map);
    Movie findById(Long id);
    void save(MovieForm movieForm);
    void update(MovieForm movieForm);
    void delete(Long id);
}
