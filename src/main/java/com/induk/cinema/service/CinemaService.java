package com.induk.cinema.service;

import com.induk.cinema.domain.Cinema;
import com.induk.cinema.domain.City;
import com.induk.cinema.dto.CinemaCity;
import com.induk.cinema.repository.CinemaRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class CinemaService {

    private final CinemaRepository cinemaRepository;

    public List<Cinema> cinemaList() {
        return cinemaRepository.findAll();
    }

    public Cinema findCinema(Long id) {
        return cinemaRepository.findById(id);
    }

    public Long saveCinema(Cinema cinema) {
        cinemaRepository.save(cinema);
        return cinema.getId();
    }

    public void updateCinema(Cinema cinema) {
        cinemaRepository.update(cinema);
    }

    public void deleteCinema(Long id) {
        cinemaRepository.delete(id);
    }

    public String findByCityId(Long id) {
        return cinemaRepository.findByCityId(id);
    }

    public List<City> findCity() {
        return cinemaRepository.findCity();
    }

}