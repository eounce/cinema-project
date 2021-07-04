package com.induk.cinema.dto;

import lombok.Data;
import org.springframework.web.multipart.MultipartFile;
import javax.validation.constraints.NotEmpty;

@Data
public class EventForm {

    @NotEmpty(message = "제목을 입력해주세요.")
    private String title;
    private MultipartFile imageFile;
    private String content;
    private String start_date;
    private String end_date;
    private String reporting_date;
}
