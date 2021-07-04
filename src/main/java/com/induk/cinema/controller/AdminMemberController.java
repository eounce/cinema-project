package com.induk.cinema.controller;

import com.induk.cinema.domain.Member;
import com.induk.cinema.service.MemberService;
import com.induk.cinema.util.FileStore;
import lombok.RequiredArgsConstructor;
import org.springframework.core.io.Resource;
import org.springframework.core.io.UrlResource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;
import java.io.File;
import java.io.IOException;
import java.net.MalformedURLException;

@Controller
@RequiredArgsConstructor
@RequestMapping("/admin/members")
public class AdminMemberController{

    private final MemberService memberService;
    private final FileStore fileStore;

    @GetMapping
    public String members(Model model) {
        model.addAttribute("members", memberService.memberList());
        return "admin/member/listForm";
    }

    @GetMapping("/{id}")
    public String DetailForm(@PathVariable Long id, Model model) {
        Member member = memberService.findMember(id);

        model.addAttribute("member", member);
        return "admin/member/detailForm";
    }

    @GetMapping("/add")
    public String addForm(Model model) {
        model.addAttribute("member", new Member());
        return "admin/member/addForm";
    }

    @PostMapping("/add")
    public String addMember(@Valid Member member,
                           BindingResult bindingResult,
                           RedirectAttributes redirectAttributes,
                            @RequestParam("files") MultipartFile file) throws IOException {
        //형식 검사
        if(bindingResult.hasErrors()) {
            return "admin/member/addForm";
        }
        Long id = memberService.saveMember(member);
        //redirectAttributes.addAttribute("id", id);


        //파일 업로드
        if(!file.getOriginalFilename().isEmpty()) {
            String rootPath = System.getProperty("user.dir");
            String basePath = rootPath + "/src/main/webapp/WEB-INF/views/image/member";        //파일 저장소
            String fileName = id.toString() + "_" + file.getOriginalFilename();  //파일이름
            String filePath = basePath + "/" + fileName;
            File dest = new File(filePath);
            file.transferTo(dest); // 파일 업로드 작업 수행

            member.setId(id);
            member.setImage(fileName);
            memberService.updateMember(member);
        }
        return "redirect:/admin/members/";
    }
    @DeleteMapping("/{id}/del")
    public String delMember(@PathVariable Long id){
        memberService.deleteMember(id);
        return "redirect:/admin/members/";
    }
    @GetMapping("/{id}/edit")
    public String updateForm(@PathVariable Long id, Model model){
        model.addAttribute("member", memberService.findMember(id));
        return "/admin/member/updateForm";
    }
    @PostMapping("/{id}/edit")
    public String updateForm(@Valid Member member,  BindingResult bindingResult,
                             @PathVariable Long id,
                             @RequestParam(value = "imageDel", required = false) String imageDel,
                             @RequestParam("files") MultipartFile file) throws IOException {

        //형식 검사
        if(bindingResult.hasErrors()) {
            Member beforMember = memberService.findMember(id);
            member.setImage(beforMember.getImage());
            return "admin/member/updateForm";
        }
        Member beforMember = memberService.findMember(id);
        member.setSubscription_date(beforMember.getSubscription_date());
        if(imageDel == null) member.setImage(beforMember.getImage());

        //파일 업로드
        if(!file.getOriginalFilename().isEmpty() && imageDel == null) {
            String rootPath = System.getProperty("user.dir");
            String basePath = rootPath + "/src/main/webapp/WEB-INF/views/image/member";        //파일 저장소
            String fileName = id.toString() + "_" + file.getOriginalFilename();  //파일이름
            String filePath = basePath + "/" + fileName;
            File dest = new File(filePath);
            file.transferTo(dest); // 파일 업로드 작업 수행

            member.setId(id);
            member.setImage(fileName);
        }

        memberService.updateMember(member);
        return "redirect:/admin/members/" + id;
    }

    @ResponseBody
    @GetMapping("/images/{filename}")
    public Resource downloadImage(@PathVariable String filename) throws MalformedURLException {
        return new UrlResource("file:" + fileStore.getFullPath("member", filename));
    }
}