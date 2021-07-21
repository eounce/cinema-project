package com.induk.cinema.controller;

import com.induk.cinema.domain.Event;
import com.induk.cinema.domain.Member;
import com.induk.cinema.domain.Review;
import com.induk.cinema.dto.EventForm;
import com.induk.cinema.service.EventService;
import com.induk.cinema.util.FileStore;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.core.io.Resource;
import org.springframework.core.io.UrlResource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;
import java.io.IOException;
import java.net.MalformedURLException;
import java.text.ParseException;
import java.util.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Slf4j
@Controller
@RequestMapping("/csmovie/events")
@RequiredArgsConstructor
public class EventController {

    private final EventService eventService;
    private final FileStore fileStore;

    @GetMapping
    public String event() {

        return "cinema/event/listForm";
    }

    @ResponseBody
    @PostMapping("/Ajax")
    public HashMap<String, Object> AjaxList(@RequestParam("searchWord") String searchWord,
                                @RequestParam("status") int status,
                                @RequestParam("sort") int sort,
                                @RequestParam("nowPage") int nowPage,
                                @RequestParam("nowBlock") int nowBlock) {

        List<Event> eventListBeforeSorting = eventService.searchEvent(searchWord, status, sort);
        List<Event> eventList = eventService.pagination(nowPage, eventListBeforeSorting);

        HashMap<String, Object> map = new HashMap<>(); // key, value
        map.put("eventList", eventList);
        map.put("nowPage", nowPage);
        map.put("nowBlock", nowBlock);
        map.put("eventListBeforeSorting", eventListBeforeSorting);

        return map;
    }

    @GetMapping("/{id}")
    public String DetailForm(@PathVariable Long id, Model model) {
        model.addAttribute("event", eventService.findEvent(id));
        eventService.plusViewCount(id);

        return "cinema/event/detailForm";
    }

    @ResponseBody
    @GetMapping("/images/{filename}")
    public Resource downloadImage(@PathVariable String filename) throws MalformedURLException {
        return new UrlResource("file:" + fileStore.getFullPath("event", filename));
    }
}
