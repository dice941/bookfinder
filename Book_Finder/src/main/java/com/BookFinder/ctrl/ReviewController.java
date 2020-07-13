package com.BookFinder.ctrl;

import java.io.IOException;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.BookFinder.domain.Criteria;
import com.BookFinder.domain.PagingVO;
import com.BookFinder.domain.ReviewVO;
import com.BookFinder.service.ReviewService;

@Controller
@RequestMapping("/review/*")
public class ReviewController
{
	private static final Logger log = LoggerFactory.getLogger(ReviewController.class);

	@Inject
	private ReviewService rvsv;

	@Inject
	private com.BookFinder.util.FileProcess fp;

	@GetMapping("/write")
	public void write(Model model)
	{
		log.info(">>>>>> Review Weite Page 이동 - GET");
	}

	@PostMapping("/write")
	public String write(ReviewVO rvvo, RedirectAttributes reAttr)
	{
		log.info(">>> 리뷰 등록 페이지 출력 - POST");
		rvsv.write(rvvo);
		reAttr.addFlashAttribute("result", "write_ok"); // 한번 전송되고 끝남. 갖고 있지 않음
		return "redirect:/review/list";
	}

	@GetMapping("/list")
	public void list(Model model, Criteria cri)
	{
		log.info(">>> Review List 출력 - GET");
		model.addAttribute("list", rvsv.list(cri));
		int totalCnt = rvsv.totalCount(cri);
		model.addAttribute("pgvo", new PagingVO(totalCnt, cri));
	}

	// http://localhost:8081/review/detail?rvno=0&pageNum=1&amount=10&type=&keyword=
	@GetMapping({ "/detail", "/modify" })
	public void detail(@RequestParam("rvno") int rvno, Model model, @ModelAttribute("cri") Criteria cri)
	{
		log.info(">>> 제보 상세 페이지 출력 - GET");
		model.addAttribute("rvvo", rvsv.detail(rvno));
	}

	@PostMapping("/modify")
	public String modify(ReviewVO rvvo, RedirectAttributes reAttr)
	{
		log.info(">>> 상품 수정 요청 - POST");
		rvsv.modify(rvvo);
		reAttr.addFlashAttribute("result", "modify_ok");
		return "redirect:/review/detail?rvno=" + rvvo.getRvno();
	}

	@PostMapping("/remove")
	public String remove(@RequestParam("rvno") int rvno, RedirectAttributes reAttr)
	{
		log.info(">>> 리뷰 삭제 요청 - POST");
		rvsv.remove(rvno);
		reAttr.addFlashAttribute("result", "remove_ok");
		return "redirect:/review/list";
	}
}
