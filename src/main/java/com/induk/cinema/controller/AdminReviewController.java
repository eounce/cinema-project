package com.induk.cinema.controller;

import com.induk.cinema.domain.Review;
import com.induk.cinema.service.CommentService;
import com.induk.cinema.service.MemberService;
import com.induk.cinema.service.ReviewService;
import com.induk.cinema.util.FileStore;
import lombok.RequiredArgsConstructor;
import org.springframework.core.io.Resource;
import org.springframework.core.io.UrlResource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;
import java.io.File;
import java.io.IOException;
import java.net.MalformedURLException;
import java.text.SimpleDateFormat;

@Controller
@RequiredArgsConstructor
@RequestMapping("/csmovie/admin/reviews")
public class AdminReviewController {

    private final ReviewService reviewService;
    private final MemberService memberService;
    private final CommentService commentService;
    private final FileStore fileStore;

    @GetMapping
    public String reviews(Model model) {
        model.addAttribute("reviews", reviewService.reviewList());
        return "admin/review/listForm";
    }

    @GetMapping("/{id}")
    public String DetailForm(@PathVariable Long id, Model model) {

        Review review = reviewService.findReview(id);
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String subscriptionDate = df.format(review.getReportingDate());


        model.addAttribute("comments", commentService.findCommentByReviewId(id));
        model.addAttribute("subscription_date", subscriptionDate);
        model.addAttribute("review", review);
        return "admin/review/detailForm";
    }

    @GetMapping("/add")
    public String addForm(Model model) {
        model.addAttribute("members", memberService.memberList());
        model.addAttribute("review", new Review());
        return "admin/review/addForm";
    }

    @PostMapping("/add")
    public String addReview(@Valid Review review,
                           BindingResult bindingResult,
                           RedirectAttributes redirectAttributes,
                            Model model) throws IOException {

        if(review.getImageForm().isEmpty()) {
            bindingResult.addError(new FieldError("reviewForm", "imageForm", "이미지는 필수 등록입니다."));
            model.addAttribute("members", memberService.memberList());
            return "admin/review/addForm";
        }

        //형식 검사
        if(bindingResult.hasErrors()) {
            model.addAttribute("members", memberService.memberList());
            return "admin/review/addForm";
        }
        review.setImage("false");

        Long id = reviewService.saveReview(review);

        //파일 업로드
        String rootPath = System.getProperty("user.dir");
        String basePath = rootPath + "/src/main/webapp/WEB-INF/views/image/review";        //파일 저장소
        String fileName = id.toString() + "_" + review.getImageForm().getOriginalFilename();  //파일이름
        String filePath = basePath + "/" + fileName;
        File dest = new File(filePath);
        review.getImageForm().transferTo(dest); // 파일 업로드 작업 수행
        review.setId(id);
        review.setImage(fileName);


        reviewService.updateReview(review);

        return "redirect:/csmovie/admin/reviews/";
    }
    @DeleteMapping("/{id}/del")
    public String delReview(@PathVariable Long id){
        reviewService.deleteReview(id);
        return "redirect:/csmovie/admin/reviews/";
    }
    @GetMapping("/{id}/edit")
    public String updateForm(@PathVariable Long id, Model model){
        Review review = reviewService.findReview(id);
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String subscriptionDate = df.format(review.getReportingDate());

        model.addAttribute("subscription_date", subscriptionDate);
        model.addAttribute("review", review);
        model.addAttribute("members", memberService.memberList());
        return "/admin/review/updateForm";
    }
    @PostMapping("/{id}/edit")
    public String updateForm(@Valid Review review,  BindingResult bindingResult,
                             @PathVariable Long id,
                             Model model) throws IOException {
        Review beforReview = reviewService.findReview(id);


        //형식 검사
        if(bindingResult.hasErrors()) {
            SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String subscriptionDate = df.format(beforReview.getReportingDate());
            review.setImage(beforReview.getImage());

            model.addAttribute("subscription_date", subscriptionDate);
            model.addAttribute("reviewForm", review);
            model.addAttribute("members", memberService.memberList());
            return "admin/review/updateForm";
        }

        review.setImage(beforReview.getImage());
        //파일 업로드
        if(!review.getImageForm().getOriginalFilename().isEmpty()) {
            String rootPath = System.getProperty("user.dir");
            String basePath = rootPath + "/src/main/webapp/WEB-INF/views/image/review";        //파일 저장소
            String fileName = id.toString() + "_" + review.getImageForm().getOriginalFilename();  //파일이름
            String filePath = basePath + "/" + fileName;
            File dest = new File(filePath);
            review.getImageForm().transferTo(dest); // 파일 업로드 작업 수행

            review.setId(id);
            review.setImage(fileName);
        }

        reviewService.updateReview(review);
        return "redirect:/csmovie/admin/reviews/" + id;
    }

    @ResponseBody
    @GetMapping("/images/{filename}")
    public Resource downloadImage(@PathVariable String filename) throws MalformedURLException {
        return new UrlResource("file:" + fileStore.getFullPath("review", filename));
    }
}