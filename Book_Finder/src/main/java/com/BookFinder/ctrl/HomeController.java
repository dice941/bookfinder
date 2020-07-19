package com.BookFinder.ctrl;

import java.util.Locale;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.BookFinder.ctrl.HomeController;

@Controller
public class HomeController
{

	private static final Logger log = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model)
	{
		log.info("Welcome home! The client locale is {}.", locale);
		/*
		 * Date date = new Date(); DateFormat dateFormat =
		 * DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		 * String formattedDate = dateFormat.format(date);
		 * model.addAttribute("serverTime", formattedDate );
		 */
		return "home";
	}

	@GetMapping("/accessError")
	public void accessDenied(Authentication auth, Model model)
	{
		log.info(">>> access Denied : " + auth);
		model.addAttribute("msg", "비 정상적인 접근방법입니다.");
	}

	@GetMapping("/Login")
	public void loginInput(String error, String logout, Model model)
	{
		log.info("error : " + error);
		log.info("logout : " + logout);

		if (error != null)
		{
			model.addAttribute("error", "\n Login Error Check Your Account");
		}
		if (logout != null)
		{
			model.addAttribute("logout", "\n Logout!!");
		}
	}

	@GetMapping("/Logout")
	public void logoutGET()
	{
		log.info(">>>>Logout!!");
	}
}