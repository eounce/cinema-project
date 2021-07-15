package com.induk.cinema.domain;

import com.induk.cinema.dto.CinemaCity;
import com.induk.cinema.dto.ScheduleForm;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Schedule {

    private Long id;
    private Long movie_id;
    private Long theather_id;
    private String start_time;
    private String end_time;
    private String screening_data;
    private String screening_format;
    private String price;

    private ScheduleForm scheduleForm;

}
