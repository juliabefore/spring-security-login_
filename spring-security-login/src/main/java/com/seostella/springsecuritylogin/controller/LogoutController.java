package com.seostella.springsecuritylogin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LogoutController {
	@RequestMapping(value = "/logout/user", method = RequestMethod.GET)
	public String secure() {
		return "logout/user";
	}
	
}
