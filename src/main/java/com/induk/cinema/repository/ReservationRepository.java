package com.induk.cinema.repository;

import com.induk.cinema.domain.City;
import com.induk.cinema.domain.EventCode;
import com.induk.cinema.domain.Reservation;
import com.induk.cinema.dto.CinemasSale;
import com.induk.cinema.dto.MoviesSale;
import com.induk.cinema.dto.ReservationListForm;
import com.induk.cinema.dto.Sales;
import org.apache.ibatis.annotations.Mapper;

import java.util.HashMap;
import java.util.List;

@Mapper
public interface ReservationRepository {

    int countAll();
    List<Sales> findBySales(HashMap<String, Object> map);
    List<MoviesSale> findByMoviesSale(HashMap<String, String> map);
    List<Sales> findByCSales(HashMap<String, Object> map);
    List<CinemasSale> findByCinemaSale(HashMap<String, String> map);
    List<Reservation> findAll();
    List<ReservationListForm> findReservationByStatus(HashMap<String, Object> map);
    Integer findReservationByStatusCount(HashMap<String, Object> map);
    int cancelReservation(Long id);
    Reservation findById(Long id);
    Long save(Reservation reservation);
    void update(Reservation reservation);
    void delete(Long id);

    EventCode findByCodeForEventCode(String code, Long member_id);

}
