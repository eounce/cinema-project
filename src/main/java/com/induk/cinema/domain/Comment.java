package com.induk.cinema.domain;


import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.validator.constraints.Length;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.sql.Timestamp;
import java.time.LocalDateTime;

@Getter @Setter
@NoArgsConstructor
@AllArgsConstructor
public class Comment {
    private Long id;

    @NotNull(message = "게시글은 필수 선택입니다.")
    private Long reviewId;
    private Review review;

    @NotNull(message = "작성자는 필수 선택입니다.")
    private Long memberId;
    private Member member;

    @NotBlank(message = "내용은 필수 입력입니다.")
    @Length(max=1024)
    private String content;

    private Timestamp reportingDate;


}
