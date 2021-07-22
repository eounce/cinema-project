package com.induk.cinema.repository;

import com.induk.cinema.domain.City;
import com.induk.cinema.domain.Reservation;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ReservationRepository {

    List<Reservation> findAll();
    Reservation findById(Long id);
    Long save(Reservation reservation);
    void update(Reservation reservation);
    void delete(Long id);

}
