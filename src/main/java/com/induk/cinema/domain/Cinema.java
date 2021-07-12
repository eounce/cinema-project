package com.induk.cinema.domain;

import com.induk.cinema.dto.CinemaCity;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.validation.constraints.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Cinema {

    private Long id;

    @NotNull(message = "시/도명은 필수 입력입니다.")
    private Long city_id;

    @NotBlank(message = "극장명은 필수 입력입니다.")
    private String name;

    @Size(max = 64, message = "시설명은 최대 64자입니다.")
    private String subtitle;

    @Size(max = 64, message = "시설명은 최대 64자입니다.")
    @NotBlank(message = "시설명은 필수 입력입니다.(시설명 구분 = ,)")
    private String facility;

    @Size(max = 1024, message = "극장 소개는 최대 1024자입니다.")
    @NotBlank(message = "극장 소개는 필수 입력입니다.")
    private String introduction;

    @NotBlank(message = "주차안내는 필수 입력입니다.")
    private String parking;

    @NotBlank(message = "극장 주소는 필수 입력입니다.")
    private String address;

    @NotBlank(message = "구글맵 주소는 필수 입력입니다.")
    private String mapAddress;

    @NotBlank(message = "매출은 숫자만 입력가능합니다.")
    @Pattern(regexp = "^[0-9]*$", message = "매출은 숫자만 입력가능합니다.")
    private String sales;

    private CinemaCity cinemaCity;
}
