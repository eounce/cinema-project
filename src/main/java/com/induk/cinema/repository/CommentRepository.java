package com.induk.cinema.repository;

import com.induk.cinema.domain.Comment;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface CommentRepository {

    List<Comment> findAll();
    List<Comment> findByReviewId(Long id);
    Comment findById(Long id);
    Long save(Comment comment);
    void update(Comment comment);
    void delete(Long id);
}
