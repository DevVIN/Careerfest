package com.careerfest.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/")
public class LoginController {

	@RequestMapping(value = {"/","/home"}, method = RequestMethod.GET)
	public String showIndex(Model model) {
		System.out.println("Inside Controller");
		return "home";
	}
}
