package com.induk.cinema.repository;

import com.induk.cinema.domain.City;
import com.induk.cinema.domain.Reservation;
import com.induk.cinema.dto.MoviesSale;
import com.induk.cinema.dto.Sales;
import org.apache.ibatis.annotations.Mapper;

import java.util.HashMap;
import java.util.List;

@Mapper
public interface ReservationRepository {

    int countAll();
    List<Sales> findBySales(HashMap<String, Object> map);
    List<MoviesSale> findByMoviesSale(HashMap<String, String> map);
    List<Reservation> findAll();
    Reservation findById(Long id);
    Long save(Reservation reservation);
    void update(Reservation reservation);
    void delete(Long id);

}
