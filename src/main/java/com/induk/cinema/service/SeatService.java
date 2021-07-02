package com.induk.cinema.service;

import com.induk.cinema.domain.Cinema;
import com.induk.cinema.domain.Seat;
import com.induk.cinema.domain.Theater;
import com.induk.cinema.repository.SeatRepository;
import com.induk.cinema.repository.TheaterRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class SeatService {

    private final SeatRepository seatRepository;

    public List<Seat> seatList() {
        return seatRepository.findAll();
    }

    public Seat findSeat(Long id) {
        return seatRepository.findById(id);
    }

    public Long saveSeat(Seat seat) {
        seatRepository.save(seat);
        return seat.getId();
    }

    public void updateSeat(Seat seat) {
        seatRepository.update(seat);
    }

    public void deleteSeat(Long id) {
        seatRepository.delete(id);
    }

    public String findByTheaterId(Long id) {
        return seatRepository.findByTheaterId(id);
    }

    public List<Theater> findTheater() {
        return seatRepository.findTheater();
    }

}
