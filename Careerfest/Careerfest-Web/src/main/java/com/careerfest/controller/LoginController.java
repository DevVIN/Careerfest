package com.careerfest.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.careerfest.model.Registrationmodel;
import com.careerfest.service.SaveRegistrationDetail;

@Controller
@RequestMapping("/")
public class LoginController {

	@Autowired
	SaveRegistrationDetail saveRegistrationDetails;
	
	
	@RequestMapping(value = {"/","/home"}, method = RequestMethod.GET)
	public String showIndex(Model model) {
		System.out.println("Inside Controller");
		return "home";
	}
	@RequestMapping(value = "/registration", method = {RequestMethod.GET,RequestMethod.POST})
	public String saveRegistration(@ModelAttribute("Registration")Registrationmodel Rmodel,BindingResult result,Model model,
			HttpServletRequest request){
		if(request.getMethod().equals("GET")){
			model.addAttribute("Registration", new Registrationmodel());
		}else{
			System.out.println("On Login Controller Registration value "+Rmodel.getEmail_id()+" "+Rmodel.getPassword());
			saveRegistrationDetails.saveRegistrationDetail(Rmodel);
			List<Registrationmodel> registeredusers = saveRegistrationDetails.getAllRegisteredUser();
			model.addAttribute("userlist", registeredusers);
		}
		return "registration";
	}
}
