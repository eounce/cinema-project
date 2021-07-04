package com.induk.cinema.domain;


import lombok.*;
import org.hibernate.validator.constraints.Length;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.sql.Timestamp;

@Getter @Setter
@Builder
public class Review {
    private Long id;
    private Long memberId;
    private String title;
    private String content;
    private String image;
    private int view;
    private Timestamp reportingDate;

    //private String member_name;
    private Member member;
}
