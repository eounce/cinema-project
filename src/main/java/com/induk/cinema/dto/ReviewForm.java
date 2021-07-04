package com.induk.cinema.dto;

import lombok.Data;
import org.hibernate.validator.constraints.Length;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.sql.Timestamp;

@Data
public class ReviewForm {
    private Long id;
    @NotNull(message = "작성자는 필수 선택입니다.")
    private Long member_id;

    @NotBlank(message = "제목은 필수 입력입니다.")
    @Length(max=30)
    private String title;

    @NotBlank(message = "내용은 필수 입력입니다.")
    @Length(max=1024)
    private String content;

    private MultipartFile image;

    private String imageName;
    private int view;
}
