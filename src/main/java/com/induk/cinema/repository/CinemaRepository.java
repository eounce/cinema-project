package com.induk.cinema.repository;

import com.induk.cinema.domain.Cinema;
import com.induk.cinema.domain.City;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface CinemaRepository {
    List<Cinema> findAll();
    Cinema findById(Long id);
    Long save(Cinema cinema);
    void update(Cinema cinema);
    void delete(Long id);

    String findByCityId(Long id);
    List<City> findCity();
}
