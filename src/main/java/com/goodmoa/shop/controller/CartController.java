package com.goodmoa.shop.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.goodmoa.shop.CartDto;
import com.goodmoa.shop.service.CartService;

@Controller
@RequestMapping("/cart")
public class CartController {
	@Autowired
	CartService service;
	
	@PostMapping("/add")
	@ResponseBody
	public int addCart(CartDto dto, HttpSession session) throws Exception{
		
		String custom_id = (String) session.getAttribute("custom_id");
		dto.setCustom_id(custom_id);

		int count = service.countCart(dto.getProduct_num(), custom_id);
		
		int result = 0;
		
		if(custom_id != null) {
			if(count == 0) {
				service.addCart(dto);
			} else {
				service.updateCart(dto);
			}
			
			result = 1;
		}
		
		return result;
		
	}
	
	@GetMapping("/cartList")
	public String getCartList(HttpSession session, Model m) throws Exception {	   
		String custom_id = (String) session.getAttribute("custom_id");
		int sumPrice = service.sumPrice(custom_id);
	   
	   List<CartDto> cartList = service.cartList(custom_id);
	   Map map = new HashMap();
	   
	   m.addAttribute("cartList", cartList);
	   
	   map.put("cartList", cartList);
	   map.put("sumPrice", sumPrice);
	   map.put("count", cartList.size());
	   
	   m.addAttribute("map", map);
	   
	   return "cart";
	}
	
	@GetMapping("/remove")
	public String remove(Integer cart_num, Model m, RedirectAttributes rattr) {
		try {
			service.delete(cart_num);
			rattr.addFlashAttribute("msg", "remove OK");
		} catch (Exception e) {
			e.printStackTrace();
			rattr.addFlashAttribute("msg", "remove ERROR");
		}
		return "redirect:/cart/cartList";
		
	}
	
	
}
