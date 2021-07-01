package com.induk.cinema.domain;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.validation.constraints.NotBlank;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class City {

    private Long id;

    @NotBlank(message = "도시명은 필수 입력입니다.")
    private String name;

}
