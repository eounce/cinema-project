package com.induk.cinema.dto;

import lombok.Data;
import org.springframework.web.multipart.MultipartFile;

import java.time.LocalDateTime;
import java.time.LocalTime;

@Data
public class MovieForm {
    private MultipartFile poster;
    private String title;
    private String language;
    private LocalTime showTimes;
    private LocalDateTime releaseDate;
    private String rating;
    private String screeningFormat;
    private Integer directorId;
    private Integer genreId;
}
