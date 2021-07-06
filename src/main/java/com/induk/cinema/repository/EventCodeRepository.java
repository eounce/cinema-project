package com.induk.cinema.repository;

import com.induk.cinema.domain.EventCode;
import org.apache.ibatis.annotations.Mapper;
import java.util.List;

@Mapper
public interface EventCodeRepository {

    List<EventCode> findAll();
    EventCode findById(Long id);
    Long save(EventCode eventCode);
    void update(EventCode eventCode);
    void delete(Long id);
}
