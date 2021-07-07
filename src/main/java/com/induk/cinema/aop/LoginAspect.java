package com.induk.cinema.aop;

import com.induk.cinema.domain.Member;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@Aspect
@Component
public class LoginAspect {
     /*Logger logger = LoggerFactory.getLogger(LoginAspect.class);

    @Pointcut("execution(* com.induk.cinema.controller.Admin*.*(..))")
    public void loginInspectPointcut() {
    }

    @Before("loginInspectPointcut()")
    public void loginInspect() throws IOException, ServletException {    //로그인 했는지 여부

        HttpSession session = ((ServletRequestAttributes) (RequestContextHolder.currentRequestAttributes())).getRequest().getSession();

            Member m = (Member) session.getAttribute("member");
        if (!(m != null && m.getAdmin() == 1)) {
            HttpServletRequest request = ((ServletRequestAttributes) (RequestContextHolder.currentRequestAttributes())).getRequest();
            HttpServletResponse response = ((ServletRequestAttributes) (RequestContextHolder.currentRequestAttributes())).getResponse();

            if (request.getRequestURL().toString().contains("/members/login")) return ;    //현재페이지가 login페이지면 괜찮음

            PrintWriter writer;
            writer = response.getWriter();
            writer.print("<script>");
            writer.print("alert('Login as administrator');");
            writer.print("location.href='/csmovie/admin/members/login';");    //로그인 페이지로 이동
            writer.print("</script>");
            writer.close();
        }
    }*/
}
