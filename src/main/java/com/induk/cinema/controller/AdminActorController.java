package com.induk.cinema.controller;

import com.induk.cinema.dto.ActorForm;
import com.induk.cinema.service.ActorService;
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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;
import java.io.IOException;
import java.net.MalformedURLException;

@Slf4j
@Controller
@RequestMapping("/admin/actors")
@RequiredArgsConstructor
public class AdminActorController {

    private final ActorService actorService;
    private final FileStore fileStore;

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
        model.addAttribute("actorForm", new ActorForm());
        return "admin/actor/addForm";
    }

    @PostMapping("/add")
    public String addActor(@Valid ActorForm actorForm,
                           BindingResult bindingResult,
                           RedirectAttributes redirectAttributes) throws IOException {
        if(actorForm.getImageFile().isEmpty()) {
            bindingResult.addError(new FieldError("actorForm", "imageFile", "사진을 등록해주세요."));
            return "admin/actor/addForm";
        }

        if(bindingResult.hasErrors()) {
            return "admin/actor/addForm";
        }

        Long id = actorService.saveActor(actorForm);

        redirectAttributes.addAttribute("id", id);
        return "redirect:/admin/actors/{id}";
    }

    @GetMapping("/{id}/edit")
    public String updateForm(@PathVariable Long id, Model model) {
        model.addAttribute("actor", actorService.findActor(id));
        return "admin/actor/updateForm";
    }

    @PostMapping("/{id}/edit")
    public String updateActor(@PathVariable Long id,
                              @Valid ActorForm actorForm,
                              BindingResult bindingResult) {

        return "redirect:/admin/actors/{id}";
    }

    @GetMapping("/{id}/delete")
    public String deleteActor(@PathVariable Long id) {
        actorService.deleteActor(id);
        return "redirect:/admin/actors";
    }

    @ResponseBody
    @GetMapping("/images/{filename}")
    public Resource downloadImage(@PathVariable String filename) throws MalformedURLException {
        return new UrlResource("file:" + fileStore.getFullPath("actor", filename));
    }
}
