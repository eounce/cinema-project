package com.induk.cinema.controller;

import com.induk.cinema.domain.Review;
import com.induk.cinema.dto.ReviewForm;
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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;
import java.io.File;
import java.io.IOException;
import java.net.MalformedURLException;

@Controller
@RequiredArgsConstructor
@RequestMapping("/admin/reviews")
public class AdminReviewController {

    private final ReviewService reviewService;
    private final MemberService memberService;
    private final FileStore fileStore;

    @GetMapping
    public String reviews(Model model) {
        model.addAttribute("reviews", reviewService.reviewList());
        return "admin/review/listForm";
    }

    @GetMapping("/{id}")
    public String DetailForm(@PathVariable Long id, Model model) {
        Review review = reviewService.findReview(id);

        model.addAttribute("review", review);
        return "admin/review/detailForm";
    }

    @GetMapping("/add")
    public String addForm(Model model) {
        model.addAttribute("members", memberService.memberList());
        model.addAttribute("reviewForm", new ReviewForm());
        return "admin/review/addForm";
    }

    @PostMapping("/add")
    public String addReview(@Valid ReviewForm reviewForm,
                           BindingResult bindingResult,
                           RedirectAttributes redirectAttributes,
                            Model model) throws IOException {

        if(reviewForm.getImage().isEmpty()) {
            bindingResult.addError(new FieldError("reviewForm", "image", "이미지는 필수 등록입니다."));
            model.addAttribute("members", memberService.memberList());
            return "admin/review/addForm";
        }

        //형식 검사
        if(bindingResult.hasErrors()) {
            model.addAttribute("members", memberService.memberList());
            return "admin/review/addForm";
        }
        reviewForm.setImageName("dswds");
        Long id = reviewService.saveReview(reviewForm);

        //파일 업로드
        String rootPath = System.getProperty("user.dir");
        String basePath = rootPath + "/src/main/webapp/WEB-INF/views/image/review";        //파일 저장소
        String fileName = id.toString() + "_" + reviewForm.getImage().getOriginalFilename();  //파일이름
        String filePath = basePath + "/" + fileName;
        File dest = new File(filePath);
        reviewForm.getImage().transferTo(dest); // 파일 업로드 작업 수행
        reviewForm.setId(id);
        reviewForm.setImageName(fileName);


        reviewService.updateReview(reviewForm);

        return "redirect:/admin/reviews/";
    }
    @DeleteMapping("/{id}/del")
    public String delReview(@PathVariable Long id){
        reviewService.deleteReview(id);
        return "redirect:/admin/reviews/";
    }
    @GetMapping("/{id}/edit")
    public String updateForm(@PathVariable Long id, Model model){
        model.addAttribute("review", reviewService.findReview(id));
        return "/admin/review/updateForm";
    }
    @PostMapping("/{id}/edit")
    public String updateForm(@Valid Review review,  BindingResult bindingResult,
                             @PathVariable Long id,
                             @RequestParam(value = "imageDel", required = false) String imageDel,
                             @RequestParam("files") MultipartFile file) throws IOException {

        //형식 검사
        if(bindingResult.hasErrors()) {
            return "admin/review/updateForm";
        }
        Review beforReview = reviewService.findReview(id);
        review.setReportingDate(beforReview.getReportingDate());
        if(imageDel == null) review.setImage(beforReview.getImage());

        //파일 업로드
        if(!file.getOriginalFilename().isEmpty() && imageDel == null) {
            String rootPath = System.getProperty("user.dir");
            String basePath = rootPath + "/src/main/webapp/WEB-INF/views/image/review";        //파일 저장소
            String fileName = id.toString() + "_" + file.getOriginalFilename();  //파일이름
            String filePath = basePath + "/" + fileName;
            File dest = new File(filePath);
            file.transferTo(dest); // 파일 업로드 작업 수행

            review.setId(id);
            review.setImage(fileName);
        }

        //reviewService.updateReview(review);
        return "redirect:/admin/reviews/" + id;
    }

    @ResponseBody
    @GetMapping("/images/{filename}")
    public Resource downloadImage(@PathVariable String filename) throws MalformedURLException {
        return new UrlResource("file:" + fileStore.getFullPath("review", filename));
    }
}