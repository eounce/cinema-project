package com.induk.cinema.domain;


import lombok.*;
import org.hibernate.validator.constraints.Length;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.sql.Timestamp;
import java.util.List;

@Getter @Setter
@NoArgsConstructor
@AllArgsConstructor
public class Review {
    private Long id;

    @NotNull(message = "작성자는 필수 선택입니다.")
    private Long memberId;

    @NotBlank(message = "제목은 필수 입력입니다.")
    @Length(max=30)
    private String title;

    @NotBlank(message = "내용은 필수 입력입니다.")
    @Length(max=1024)
    private String content;

    private MultipartFile imageForm;
    private String image;
    private Integer view;
    private Timestamp reportingDate;
    private Member member;
    private List<Comment> comments;
}
