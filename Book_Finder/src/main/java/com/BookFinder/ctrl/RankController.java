package com.BookFinder.ctrl;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.BookFinder.domain.Criteria;
import com.BookFinder.domain.PagingVO;
import com.BookFinder.service.BookService;

@Controller
@RequestMapping("/rank/*")
public class RankController
{
	private static final Logger log = LoggerFactory.getLogger(RankController.class);

	@Inject
	private BookService bsv;

	@GetMapping("/list")
	public void list(Model model, Criteria cri)
	{
		log.info(">>>>>> 랭크/리스트 - 이동 - GET");
		model.addAttribute("list", bsv.list(cri));
		int totalCnt = bsv.totalCount(cri);
		model.addAttribute("pgvo", new PagingVO(totalCnt, cri));
	}
}
