package com.seostella.springsecuritylogin.controller;




import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SigninController {


	@RequestMapping(value = "/signin", method = RequestMethod.GET)
	public String signin() {
		return "user/signin";
	}
	
	@RequestMapping(value = "/signin-failure", method = RequestMethod.GET)
	public String signinFailure() {
		return "user/signin_failure";
	}

	@RequestMapping(value = "/reg", method = RequestMethod.GET)
	public String reg() {
		return "reg";
	}

	@RequestMapping(value = "/registration", method = RequestMethod.POST)
	public String registration() {
		return "registration";
	}

	@RequestMapping(value = "/welcome", method = RequestMethod.GET)
	public String welcome() {
		return "welcome";
	}

	
}
