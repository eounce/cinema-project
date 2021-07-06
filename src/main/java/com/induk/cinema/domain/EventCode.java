package com.induk.cinema.domain;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.validation.constraints.NotBlank;
import java.sql.Date;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class EventCode {

    private Long id;
    @NotBlank(message = "제목을 입력해주세요")
    private int eventId;
    private String code;
    private Date issueDate;
    private Date codeLimit;
    private int discountRate;

    private Event event;
}
