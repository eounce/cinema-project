package com.induk.cinema.service;

import com.induk.cinema.domain.Event;
import com.induk.cinema.dto.EventForm;
import com.induk.cinema.dto.UploadFile;
import com.induk.cinema.repository.EventRepository;
import com.induk.cinema.util.FileStore;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

@Slf4j
@Service
@RequiredArgsConstructor
public class EventService {

    private final EventRepository eventRepository;
    private final FileStore fileStore;

    public List<Event> eventList() {
        return eventRepository.findAll();
    }

    public Event findEvent(Long id) {
        return eventRepository.findById(id);
    }

    public Long saveEvent(EventForm eventForm) throws IOException {

        UploadFile uploadFile = fileStore.storeFile(eventForm.getImageFile(), "event");

        Event event = new Event();
        event.setTitle(eventForm.getTitle());
        event.setUploadFilename(uploadFile.getUploadFilename());
        event.setStoreFilename(uploadFile.getStoreFilename());
        event.setPath(uploadFile.getPath());
        event.setContent(eventForm.getContent());
        event.setStart_date(eventForm.getStart_date());
        event.setEnd_date(eventForm.getEnd_date());
        event.setReporting_date(eventForm.getReporting_date());

        eventRepository.save(event);

        return event.getId();
    }

    public void updateEvent(Event event, MultipartFile file) throws IOException  {

        if(!file.isEmpty()) {
            UploadFile uploadFile = fileStore.storeFile(file, "event");

            event.setStoreFilename(uploadFile.getStoreFilename());
            event.setUploadFilename(uploadFile.getUploadFilename());
            event.setPath(uploadFile.getPath());
        }

        eventRepository.update(event);
    }

    public void deleteEvent(Long id) {
        eventRepository.delete(id);
    }
}
