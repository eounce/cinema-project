package com.induk.cinema.service;

import com.induk.cinema.domain.Comment;
import com.induk.cinema.repository.CommentRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class CommentService {

    private final CommentRepository commentRepository;

    public List<Comment> commentList() {
        return commentRepository.findAll();
    }
    public List<Comment> findCommentByReviewId(Long id){
        return commentRepository.findByReviewId(id);
    }
    public Comment findComment(Long id) {
        return commentRepository.findById(id);
    }

    public Long saveComment(Comment comment) {
        commentRepository.save(comment);
        return comment.getId();
    }

    public void updateComment(Comment comment) {
        commentRepository.update(comment);
    }

    public void deleteComment(Long id) {
        commentRepository.delete(id);
    }

}
