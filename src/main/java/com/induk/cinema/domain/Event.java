package com.induk.cinema.domain;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Event {

    private Long id;
    @NotBlank(message = "제목을 입력해주세요")
    private String title;
    private String storeFilename;
    private String uploadFilename;
    private String path;
    @Size(max = 1024, message = "극장 소개는 최대 1024자입니다.")
    private String content;
    private String start_date;
    private String end_date;
    private String reporting_date;
}
