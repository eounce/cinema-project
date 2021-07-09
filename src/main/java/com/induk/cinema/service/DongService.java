package com.induk.cinema.service;

import com.induk.cinema.domain.City;
import com.induk.cinema.domain.Dong;
import com.induk.cinema.repository.CityRepository;
import com.induk.cinema.repository.DongRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class DongService {

    private final DongRepository dongRepository;

    public List<Dong> dongList() {
        return dongRepository.findAll();
    }

    public Dong findDong(Long id) {
        return dongRepository.findById(id);
    }

    public Long saveDong(Dong dong) {
        dongRepository.save(dong);
        return dong.getId();
    }

    public void updateDong(Dong dong) {
        dongRepository.update(dong);
    }

    public void deleteDong(Long id) {
        dongRepository.delete(id);
    }


}
