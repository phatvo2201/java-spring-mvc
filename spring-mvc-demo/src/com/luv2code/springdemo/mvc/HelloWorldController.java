package com.luv2code.springdemo.mvc;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/hello")
public class HelloWorldController {
	
	@RequestMapping("/showForm")
	public String showFrom() {
		return "helloworld-form";
	}
	
	
	@RequestMapping("/processForm")
	public String showHello() {
		return "helloworld";
	}


	@RequestMapping("/processFormVersionTwo")
	public String letShoutDude(HttpServletRequest request,Model model) {
		String name=request.getParameter("studentName");
		name=name.toUpperCase();
		String result="Yo!"+ name;
		model.addAttribute("message",result);
		
		
		
		
		return "helloworld";
	}

}
