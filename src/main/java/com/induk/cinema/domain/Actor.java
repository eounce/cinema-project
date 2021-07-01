package com.induk.cinema.domain;

import lombok.*;


@Getter @Setter
@Builder
public class Actor {

    private Long id;
    private String name;
    private String storeFilename;
    private String uploadFilename;
    private String path;
}
