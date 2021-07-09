package com.induk.cinema.controller;

import com.induk.cinema.domain.Member;
import com.induk.cinema.service.MemberService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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

@Controller
@RequiredArgsConstructor
@RequestMapping("/csmovie/members")
public class MemberController {
    private final MemberService memberService;
    @GetMapping("/login")
    public String loginForm(Model model){
        model.addAttribute("member", new Member());
        return "/cinema/member/sign-in";
    }
    @PostMapping("/login")
    public String login(@Valid Member member, BindingResult bindingResult,
                        @RequestParam(value = "remember", required = false)String remember,
                        HttpSession session, HttpServletRequest request,
                        HttpServletResponse response) throws IOException {
        Member m = memberService.login(member);

        Cookie cookie = new Cookie("email", member.getEmail());
        if(remember == null) cookie.setMaxAge(0);
        response.addCookie(cookie);


        if(bindingResult.hasFieldErrors("email")) {
            return "/cinema/member/sign-in";
        }

        if(m == null){
            request.setCharacterEncoding("UTF-8");
            response.setContentType("text/html; charset=UTF-8");
            PrintWriter writer;
            writer = response.getWriter();
            writer.print("<script language='JavaScript' charset='UTF-8'>");
            writer.print("alert('이메일과 비밀번호를 확인해주세요');");
            writer.print("location.href='/csmovie/members/login';");
            writer.print("</script>");
            writer.close();
        }
        session.setAttribute("member", m);

        return "redirect:/csmovie";
    }
    @GetMapping("/signup")
    public String signupForm(Model model){
        model.addAttribute("member", new Member());
        return "/cinema/member/sign-up";
    }

    @PostMapping("/signup")
    public String addMember(@Valid Member member,
                            BindingResult bindingResult,
                            @RequestParam("file") MultipartFile image) throws IOException {
        //형식
        if(bindingResult.hasErrors()) {
            return "/cinema/member/sign-up";
        }

        Long id = memberService.saveMember(member);

        //파일 업로드
        if(!image.getOriginalFilename().isEmpty()) {
            String rootPath = System.getProperty("user.dir");
            String basePath = rootPath + "/src/main/webapp/WEB-INF/views/image/member";        //파일 저장소
            String fileName = id.toString() + "_" + image.getOriginalFilename();  //파일이름
            String filePath = basePath + "/" + fileName;
            File dest = new File(filePath);
            image.transferTo(dest); // 파일 업로드 작업 수행

            member.setId(id);
            member.setImage(fileName);
            memberService.updateMember(member);
        }
        return "redirect:/csmovie/members/login";
    }
    @GetMapping("/logout")
    public String logout(HttpSession session){
        session.invalidate();
        return "redirect:/csmovie";
    }
}
