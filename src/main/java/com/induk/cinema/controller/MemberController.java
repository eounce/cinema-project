package com.induk.cinema.controller;

import com.induk.cinema.domain.Member;
import com.induk.cinema.dto.HistoryUrl;
import com.induk.cinema.service.MemberService;
import com.induk.cinema.util.FileStore;
import jdk.internal.org.jline.reader.History;
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
import java.net.URLDecoder;
import java.net.URLEncoder;

@Controller
@RequiredArgsConstructor
@RequestMapping("/csmovie/members")
public class MemberController {
    private final MemberService memberService;
    private final FileStore fileStore;
    @GetMapping("/login")
    public String login(Model model, @ModelAttribute("historyUrl") HistoryUrl historyUrl){
        model.addAttribute("member", new Member());
        return "/cinema/member/sign-in";
    }
    @PostMapping("/login")
    public String login(@Valid Member member, BindingResult bindingResult,
                        @RequestParam(value = "remember", required = false)String remember,
                        @ModelAttribute("historyUrl") HistoryUrl historyUrl,
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
            writer.print("location.href='/csmovie/members/login?" + historyUrl.getParam() + "';");
            writer.print("</script>");
            writer.close();
        }

        session.setAttribute("member", m);
        if(!historyUrl.getHistoryUrl().isEmpty() && historyUrl.getHistoryUrl() != ""){
            return "redirect:" + historyUrl.getURL();
        }
        return "redirect:/csmovie";
    }
    @GetMapping("/signup")
    public String signupForm(Model model){
        model.addAttribute("member", new Member());
        return "/cinema/member/sign-up";
    }

    @PostMapping("/signup")
    public String addMember(@Valid Member member,
                            BindingResult bindingResult) throws IOException {
        //형식
        if(bindingResult.hasErrors()) {
            return "/cinema/member/sign-up";
        }

        memberService.saveMember(member);
        return "redirect:/csmovie/members/login";
    }
    @GetMapping("/logout")
    public String logout(HttpSession session){
        session.invalidate();
        return "redirect:/csmovie";
    }
    @ResponseBody
    @GetMapping("/images/{filename}")
    public Resource downloadImage(@PathVariable String filename) throws MalformedURLException {
        return new UrlResource("file:" + fileStore.getFullPath("member", filename));
    }
}
