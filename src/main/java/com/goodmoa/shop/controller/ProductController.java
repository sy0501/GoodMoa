package com.goodmoa.shop.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.goodmoa.shop.ProductDto;
import com.goodmoa.shop.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {
	@Autowired
	ProductService service;
	
	@GetMapping("/maple")
	public String listMaple(Model m) {
		try {
			List<ProductDto> list = service.listMaple();			
			m.addAttribute("game", "maple");
			m.addAttribute("list", list);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "product";
	}
	
	@GetMapping("/battleGround")
	public String listBattle(Model m) {
		try {
			List<ProductDto> list = service.listBattle();			
			m.addAttribute("game", "battle");
			m.addAttribute("list", list);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "product";
	}
	
	@GetMapping("/lostArk")
	public String listArk(Model m) {
		try {
			List<ProductDto> list = service.listArk();			
			m.addAttribute("game", "ark");
			m.addAttribute("list", list);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "product";
	}
	
	@GetMapping("/cookieRunKingdom")
	public String listKingdom(Model m) {
		try {
			List<ProductDto> list = service.listKingdom();			
			m.addAttribute("game", "kingdom");
			m.addAttribute("list", list);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "product";
	}
	
	@GetMapping("/best")
	public String listBest(Model m) {
		try {
			List<ProductDto> list = service.listBest();
			
			m.addAttribute("mode", "best");
			m.addAttribute("list", list);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "product";
	}
	
	@GetMapping("/sale")
	public String listSale(Model m) {
		try {
			List<ProductDto> list = service.listSale();
			
			m.addAttribute("mode", "sale");
			m.addAttribute("list", list);
		} catch(Exception e) {
			e.printStackTrace();
		}
		return "product";
	}
	
	@GetMapping("/new")
	public String listNew(Model m) {
		try {
			List<ProductDto> list = service.listNew();
			
			m.addAttribute("mode", "new");
			m.addAttribute("list", list);
		} catch(Exception e) {
			e.printStackTrace();
		}
		return "product";
	}
	
	@GetMapping("/detail/{product_num}")
	public String detail(ProductDto dto, @PathVariable Integer product_num, Model m) {
		try {
			
			dto = service.detail(product_num);
			m.addAttribute("dto", dto);
			System.out.println(dto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "productDetail";
	}
}
