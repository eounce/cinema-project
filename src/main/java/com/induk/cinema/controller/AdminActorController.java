package com.induk.cinema.controller;

import com.induk.cinema.domain.Actor;
import com.induk.cinema.service.ActorService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;

@Controller
@RequestMapping("/admin/actors")
@RequiredArgsConstructor
public class AdminActorController {

    private final ActorService actorService;

    @GetMapping
    public String actors(Model model) {
        model.addAttribute("actors", actorService.actorList());
        return "admin/actor/listForm";
    }

    @GetMapping("/{id}")
    public String DetailForm(@PathVariable Long id, Model model) {
        model.addAttribute("actor", actorService.findActor(id));
        return "admin/actor/detailForm";
    }

    @GetMapping("/add")
    public String addForm(Model model) {
        model.addAttribute("actor", new Actor());
        return "admin/actor/addForm";
    }

    @PostMapping("/add")
    public String addActor(@Valid Actor actor,
                           BindingResult bindingResult,
                           RedirectAttributes redirectAttributes) {
        if(bindingResult.hasErrors()) {
            return "admin/actor/addForm";
        }

        Long id = actorService.saveActor(actor);

        redirectAttributes.addAttribute("id", id);
        return "redirect:/admin/actors/{id}";
    }
}
