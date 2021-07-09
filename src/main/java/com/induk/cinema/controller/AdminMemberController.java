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

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.MalformedURLException;
import java.text.SimpleDateFormat;

@Controller
@RequiredArgsConstructor
@RequestMapping("/csmovie/admin/members")
public class AdminMemberController {
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
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String subscriptionDate = df.format(member.getSubscriptionDate());

        model.addAttribute("member", member);
        model.addAttribute("subscription_date", subscriptionDate);
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
        return "redirect:/csmovie/admin/members/";
    }
    @DeleteMapping("/{id}/del")
    public String delMember(@PathVariable Long id){
        memberService.deleteMember(id);
        return "redirect:/csmovie/admin/members/";
    }
    @GetMapping("/{id}/edit")
    public String updateForm(@PathVariable Long id, Model model){
        Member member = memberService.findMember(id);
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String subscriptionDate = df.format(member.getSubscriptionDate());

        model.addAttribute("member", member);
        model.addAttribute("subscription_date", subscriptionDate);
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
        member.setSubscriptionDate(beforMember.getSubscriptionDate());
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
        return "redirect:/csmovie/admin/members/" + id;
    }

    @GetMapping("/logout")
    public String logout(HttpSession session){
        session.invalidate();
        return "redirect:/csmovie/admin/members/login";
    }

    @GetMapping("/login")
    public String loginForm(Model model){
        model.addAttribute("member", new Member());
        return "/admin/member/login";
    }

    @PostMapping("/login")
    public String login(@Valid Member member, BindingResult bindingResult,
                        @RequestParam(value = "remember", required = false)String remember,
                        HttpSession session,
                        HttpServletResponse response) throws IOException {
        Member m = memberService.login(member);

        Cookie cookie = new Cookie("email", member.getEmail());
        if(remember == null) cookie.setMaxAge(0);
        response.addCookie(cookie);


        if(m == null){
            PrintWriter writer;
            writer = response.getWriter();
            writer.print("<script>");
            writer.print("alert('confirm email and password');");
            writer.print("location.href='/csmovie/admin/members/login';");
            writer.print("</script>");
            writer.close();
        }
        session.setAttribute("member", m);

        return "redirect:/csmovie/admin";
    }

    @ResponseBody
    @GetMapping("/images/{filename}")
    public Resource downloadImage(@PathVariable String filename) throws MalformedURLException {
        return new UrlResource("file:" + fileStore.getFullPath("member", filename));
    }
}