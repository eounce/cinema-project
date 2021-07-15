package com.induk.cinema.repository;

import com.induk.cinema.domain.Cinema;
import com.induk.cinema.domain.City;
import com.induk.cinema.domain.Movie;
import com.induk.cinema.domain.Schedule;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface CinemaRepository {
    List<Cinema> findAll();
    Cinema findById(Long id);
    List<Schedule> findMovie(Long id);
    List<Schedule> findSceduleByCinema(Long id);
    List<Cinema> findCinemaListByCityId(Long id);
    Long save(Cinema cinema);
    void update(Cinema cinema);
    void delete(Long id);

    String findByCityId(Long id);
    List<City> findCity();
}
