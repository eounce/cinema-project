package com.induk.cinema.dto;

import com.induk.cinema.domain.Member;
import com.induk.cinema.domain.Payment;
import com.induk.cinema.domain.Schedule;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class ReservationListForm {
    private Long id;
    private Long member_id;
    private Long schedule_id;
    private Long payment_id;
    private Long adult;
    private Long youth;
    private String date;
    private String status;
    private Member member;
    private Schedule schedule;
    private Payment payment;
}
