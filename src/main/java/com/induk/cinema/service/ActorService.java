package com.induk.cinema.service;

import com.induk.cinema.domain.Actor;
import com.induk.cinema.repository.ActorRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ActorService {

    private final ActorRepository actorRepository;

    public List<Actor> actorList() {
        return actorRepository.findAll();
    }

    public Actor findActor(Long id) {
        return actorRepository.findById(id);
    }

    public Long saveActor(Actor actor) {
        actorRepository.save(actor);
        return actor.getId();
    }

    public void updateActor(Actor actor) {
        actorRepository.update(actor);
    }

    public void deleteActor(Long id) {
        actorRepository.delete(id);
    }
}
