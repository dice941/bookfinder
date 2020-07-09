package com.BookFinder.ctrl;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/intro/*")
public class IntroController
{
	private static final Logger log = LoggerFactory.getLogger(IntroController.class);

	@GetMapping("/view")
	public void view(Model model)
	{
		log.info(">>>>>> 인트로 이동 - GET");
	}
}
