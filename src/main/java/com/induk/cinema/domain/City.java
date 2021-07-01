package com.induk.cinema.domain;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.validation.constraints.NotNull;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class City {

    private Long id;

    @NotNull(message = "도시명은 필수 입력입니다.")
    private String name;

}
