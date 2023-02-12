package com.goodmoa.shop.controller;

import java.net.URLEncoder;
import java.util.HashMap;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.goodmoa.shop.CustomerDto;
import com.goodmoa.shop.service.CustomerService;


@Controller
@RequestMapping("/login")
public class LoginController {
	
	@Autowired
	CustomerService service;
	
	@GetMapping("/admin")
	public String adminLogin() {
		return "admin";
	}
	
	@GetMapping("/adminlogout")
	public String adminLogout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
	@GetMapping("/login")
	public String login() {
		return "login";
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
	@PostMapping("/login")
	public String login(String custom_id, String custom_pw, CustomerDto dto, boolean rememberId, String toURL, HttpServletRequest request, HttpServletResponse response) {
		try {
			if (!loginCheck(custom_id, custom_pw)) {				
				String msg = URLEncoder.encode("아이디 또는 비밀번호가 일치하지 않습니다.");
				return "redirect:/login/login?msg=" + msg;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		HttpSession session = request.getSession();
		session.setAttribute("login", dto);
		session.setAttribute("custom_id", custom_id);
		
		
		if (rememberId) {
			Cookie cookie = new Cookie("custom_id", custom_id);
			response.addCookie(cookie);
		} else {
			Cookie cookie = new Cookie("custom_id", custom_id);
			cookie.setMaxAge(0);
			response.addCookie(cookie);
		}
		
		
		toURL = (toURL == null || toURL.equals("")) ? "/" : toURL;
		
		
		return "redirect:" + toURL;
	}
	
	private boolean loginCheck(String custom_id, String custom_pw) throws Exception{
		HashMap<String, String> map = new HashMap<String, String>();
		
		map.put("custom_id", custom_id);
		map.put("custom_pw", custom_pw);
		CustomerDto dto = service.login(map);
		
		if(dto == null) {
			return false;
		}
		return true;
	}
}		
		
		
		


