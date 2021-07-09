package com.induk.cinema.repository;

import com.induk.cinema.domain.City;
import com.induk.cinema.domain.Dong;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
@Mapper
public interface DongRepository {

    List<Dong> findAll();
    Dong findById(Long id);
    Long save(Dong dong);
    void update(Dong dong);
    void delete(Long id);
}
