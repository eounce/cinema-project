package com.induk.cinema.service;

import com.induk.cinema.domain.City;
import com.induk.cinema.domain.Reservation;
import com.induk.cinema.dto.Sales;
import com.induk.cinema.repository.CityRepository;
import com.induk.cinema.repository.ReservationRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

@Service
@RequiredArgsConstructor
public class ReservationService {

    private final ReservationRepository reservationRepository;

    public int countAll() { return reservationRepository.countAll(); }

    public List<Sales> movieSales(Long movieId, String year) {
        HashMap<String, Object> map = new HashMap<String, Object>();
        map.put("movieId", movieId);
        map.put("year", year);

        return reservationRepository.findBySales(map);
    }

    public List<Reservation> reservationList() {
        return reservationRepository.findAll();
    }

    public Reservation findReservation(Long id) {
        return reservationRepository.findById(id);
    }

    public Long saveCity(Reservation reservation) {
        reservationRepository.save(reservation);
        return reservation.getId();
    }

    public void updateReservation(Reservation reservation) {
        reservationRepository.update(reservation);
    }

    public void deleteReservation(Long id) {
        reservationRepository.delete(id);
    }

}
