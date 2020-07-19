package com.BookFinder.ctrl;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/login/*")
public class LoginController
{

	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	@GetMapping("/all")
	public void doALL()
	{
		logger.info(">>>> doALL can access everybody");
	}

	@GetMapping("/member")
	public void doMember()
	{
		logger.info(">>>> logined member");
	}

	@GetMapping("/admin")
	public void doAdmin()
	{
		logger.info(">>>> admin Only");
	}

}