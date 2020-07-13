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
import com.BookFinder.service.BookService;

@Controller
@RequestMapping("/book/*")
public class BookController
{
	private static final Logger log = LoggerFactory.getLogger(BookController.class);

	@Inject
	private BookService bsv;
	@Inject
	private com.BookFinder.util.FileProcess fp;

	@GetMapping("/write")
	public void write(Model model)
	{
		log.info(">>>>>> Book Write Page 이동 - GET");
	}

	@PostMapping("/write")
	public String write(MultipartHttpServletRequest req, RedirectAttributes reAttr) throws IllegalStateException, IOException
	{
		log.info(">>> 도서 등록 요청 - POST");
		bsv.write(fp.bv_fs(req));
		reAttr.addFlashAttribute("result", "write_ok");
		return "redirect:/book/list";
	}

	@GetMapping("/list")
	public void list(Model model, Criteria cri)
	{
		log.info(">>> Book List 출력 - GET");
		model.addAttribute("list", bsv.list(cri));
		int totalCnt = bsv.totalCount(cri);
		model.addAttribute("pgvo", new PagingVO(totalCnt, cri));
	}

	@GetMapping({ "/detail", "/modify" })
	public void detail(@RequestParam("bno") int bno, Model model, @ModelAttribute("cri") Criteria cri)
	{
		log.info(">>> 도서 상세 페이지 출력 - GET");
		model.addAttribute("bvo", bsv.detail(bno));
	}

	@PostMapping("/modify")
	public String modify(MultipartHttpServletRequest req, RedirectAttributes reAttr, @ModelAttribute("cri") Criteria cri) throws IllegalStateException, IOException
	{
		log.info(">>> 도서 수정 페이지 요청 - POST");
		bsv.modify(fp.bv_fm(req));
		reAttr.addAttribute("pageNum", cri.getPageNum());
		reAttr.addAttribute("amount", cri.getAmount());
		reAttr.addFlashAttribute("result", "modify_ok");
		return "redirect:/book/detail?bno=" + req.getParameter("bno");
	}

	@PostMapping("/remove")
	public String remove(@RequestParam("bno") int bno, @RequestParam("imgfile") String imgfile, RedirectAttributes reAttr, @ModelAttribute("cri") Criteria cri)
	{
		log.info(">>> 제보 삭제 요청 - POST");
		if (!imgfile.equals("NONE"))
		{
			fp.fileRemove(imgfile);
		}
		bsv.remove(bno);
		reAttr.addAttribute("pageNum", cri.getPageNum());
		reAttr.addAttribute("amount", cri.getAmount());
		reAttr.addFlashAttribute("result", "remove_ok");
		return "redirect:/book/list";
	}

	@PostMapping("/rmimg")
	public String removeImg(@RequestParam("bno") int bno, @RequestParam("imgfile") String imgfile)
	{
		log.info(">>> 이미지 삭제 로직 실행");
		fp.fileRemove(imgfile);
		bsv.removeImg(bno);
		return "redirect:/";
	}
}
