package com.induk.cinema.domain;

import com.induk.cinema.dto.DongCity;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Dong {

    private Long id;

    @NotBlank(message = "구/지점명은 필수 입력입니다.")
    private String name;

    @NotNull(message = "시/도명은 필수 입력입니다.")
    private Long city_id;

    private DongCity dongCity;
}
