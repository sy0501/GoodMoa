package com.goodmoa.shop.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.goodmoa.shop.CustomerDto;
import com.goodmoa.shop.service.CustomerService;

@Controller
@RequestMapping("/join")
public class JoinController {	
	
	@Autowired
	CustomerService service;
	
	@GetMapping("/join")
	public String ddd() {
		return "join";
	}
	
	@PostMapping("/register")
	public String join(CustomerDto dto, Model m, HttpSession session) {
		if(!isValid(dto)) {
			return "redirect:/join";
		}
		
		try {
			service.register(dto);
			System.out.println(dto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "login";
		
	}
		private boolean isValid(CustomerDto dto) {
			return true;
		}
	
}


