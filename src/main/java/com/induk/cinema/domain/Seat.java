package com.induk.cinema.domain;

import com.induk.cinema.dto.SeatTheater;
import com.induk.cinema.dto.TheaterCinema;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Seat {

    private Long id;

    @NotNull(message = "상영관은 필수 입력입니다.")
    private Long theater_id;

    @NotBlank(message = "좌석번호는 필수 입력입니다.")
    private String number;

    @NotBlank(message = "좌석 상태는 0, 1만 입력가능합니다.")
    @Pattern(regexp = "^[0-1]$", message = "좌석 상태는 0, 1만 입력가능합니다.")
    private String status;

    private SeatTheater seatTheater;

}
