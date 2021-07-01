package com.induk.cinema.domain;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.validation.constraints.NotNull;

@Getter @Setter
@AllArgsConstructor
@NoArgsConstructor
public class Actor {

    private Long id;

    @NotNull(message = "이름은 필수 입력입니다.")
    private String name;
    private String image;
}
