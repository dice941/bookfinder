package com.BookFinder.ctrl;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

public class CsController
{
	private static final Logger log = LoggerFactory.getLogger(CsController.class);

	@RequestMapping(value = "/cs/*", method = RequestMethod.GET)
	public String cs(Locale locale, Model model)
	{
		log.info(">>>>>>>>> move to {}.", locale);
		return "cs";
	}
}
