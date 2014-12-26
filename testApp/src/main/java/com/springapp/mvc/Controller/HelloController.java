package com.springapp.mvc.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HelloController {
	@RequestMapping(value="/", method = RequestMethod.GET)
	public String index(ModelMap model) {

		model.addAttribute("message", "index Acceuil");
		return "index";
	}

	@RequestMapping(value="/signin", method = RequestMethod.GET)
	public String signin() {
		return "Connection/signin";
	}

	@RequestMapping(value="/signup", method = RequestMethod.GET)
	public String siginup() {
		return "Connection/signup";
	}

}