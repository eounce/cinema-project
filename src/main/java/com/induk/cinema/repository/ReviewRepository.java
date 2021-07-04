package com.induk.cinema.repository;

import com.induk.cinema.domain.Review;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ReviewRepository {

    List<Review> findAll();
    Review findById(Long id);
    Long save(Review review);
    void update(Review review);
    void delete(Long id);
}
