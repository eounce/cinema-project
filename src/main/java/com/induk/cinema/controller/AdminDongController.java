package com.induk.cinema.controller;

import com.induk.cinema.domain.City;
import com.induk.cinema.domain.Dong;
import com.induk.cinema.service.CityService;
import com.induk.cinema.service.DongService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;

@Controller
@RequestMapping("/csmovie/admin/dongs")
@RequiredArgsConstructor
public class AdminDongController {

    private final DongService dongService;
    private final CityService cityService;

    @GetMapping
    public String dongs(Model model) {
        model.addAttribute("dongs", dongService.dongList());
        return "admin/dong/listForm";
    }

    @GetMapping("/add")
    public String addForm(Model model) {
        //비어있는 객체를 넘겨야 오류가 발생하지 않음
        model.addAttribute("citys", cityService.cityList());
        model.addAttribute("dong", new Dong());
        return "admin/dong/addForm";
    }

    @PostMapping("/add")
    public String addCity(@Valid Dong dong,
                          BindingResult bindingResult,
                          RedirectAttributes redirectAttributes,
                          Model model) {

        if(bindingResult.hasErrors()) {
            model.addAttribute("citys", cityService.cityList());
            return "admin/dong/addForm";
        }

        Long id = dongService.saveDong(dong);

        redirectAttributes.addAttribute("id", id);
        return "redirect:/csmovie/admin/dongs/{id}";
    }

    @GetMapping("/{id}")
    public String DetailForm(@PathVariable Long id, Model model) {
        model.addAttribute("dong", dongService.findDong(id));
        return "admin/dong/detailForm";
    }

    @DeleteMapping("/del/{id}")
    public String deleteDong(@PathVariable Long id) {
        dongService.deleteDong(id);
        return "redirect:/csmovie/admin/dongs";
    }

    @GetMapping("/update/{id}")
    public String updateForm(@PathVariable Long id, Model model) {
        model.addAttribute("citys", cityService.cityList());
        model.addAttribute("dong", dongService.findDong(id));
        return "admin/dong/updateForm";
    }

    @PostMapping("/update/{id}")
    public String updateDong(@Valid Dong dong,
                             BindingResult bindingResult,
                             RedirectAttributes redirectAttributes,
                             @PathVariable("id") Long id,
                             Model model) {

        if(bindingResult.hasErrors()) {
            model.addAttribute("citys", cityService.cityList());
            return "admin/dong/updateForm";
        }

        dongService.updateDong(dong);

        return "redirect:/csmovie/admin/dongs/{id}";
    }

}
