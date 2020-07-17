package com.BookFinder.ctrl;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.BookFinder.ctrl.MapController;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/map")
public class MapController
{
	private static final Logger logger = LoggerFactory.getLogger(MapController.class);

	@GetMapping("/map")
	public void list()
	{
		logger.info("지도 페이지 접속");
	}

}