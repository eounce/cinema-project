package com.induk.cinema.service;

import com.induk.cinema.domain.Review;
import com.induk.cinema.repository.ReviewRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ReviewService {

    private final ReviewRepository reviewRepository;

    public List<Review> reviewList() {
        return reviewRepository.findAll();
    }

    public Review findReview(Long id) {
        return reviewRepository.findById(id);
    }

    public Long saveReview(Review review) {
        reviewRepository.save(review);
        return review.getId();
    }

    public void updateReview(Review review) {
        reviewRepository.update(review);
    }

    public void deleteReview(Long id) {
        reviewRepository.delete(id);
    }

}
