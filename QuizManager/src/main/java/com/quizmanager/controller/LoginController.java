package com.quizmanager.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.quizmanager.dto.User;

@Controller
public class LoginController {

	@RequestMapping("/login")
	public String login() {
		return "login";

	}

	@RequestMapping("/registration")
	public String registration() {
		return "registration";

	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public ModelAndView save(@ModelAttribute("user") User user) {
		System.out.println("user " + user);
		return new ModelAndView("registration");
	}
	
	

}
