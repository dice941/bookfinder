package com.BookFinder.ctrl;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class RankController
{
	private static final Logger log = LoggerFactory.getLogger(RankController.class);

	@RequestMapping(value = "/rank/*", method = RequestMethod.GET)
	public String rank(Locale locale, Model model)
	{
		log.info(">>>>>>>>> move to {}.", locale);
		return "rank";
	}
}
