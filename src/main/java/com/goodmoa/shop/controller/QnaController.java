package com.goodmoa.shop.controller;

import java.time.Instant;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.goodmoa.shop.PageHandler;
import com.goodmoa.shop.QnaDto;
import com.goodmoa.shop.SearchCondition;
import com.goodmoa.shop.service.QnaService;

@Controller
@RequestMapping("/qna")
public class QnaController {
	
	@Autowired
	QnaService service;
	
	@GetMapping("/write")
	public String write(Model m, HttpServletRequest request) {
		if (!loginCheck(request))
			return "redirect:/login/login?toURL="+request.getRequestURL();
		
		m.addAttribute("mode", "write");
		
		return "qna";
	}
	
	@PostMapping("/write")
	public String write(QnaDto dto, Model m, RedirectAttributes rattr, HttpSession session) {
		
		
		String writer = (String) session.getAttribute("custom_id");
		
		dto.setQna_writer(writer);
		
		try {
			if(service.write(dto) != 1) {
				throw new Exception("write fail");
			}
			
			rattr.addFlashAttribute("msg", "write OK");
			return "redirect:/qna/list";
			
		} catch (Exception e) {
			e.printStackTrace();
			
			m.addAttribute("mode", "write");
			m.addAttribute("dto", dto);
			m.addAttribute("msg", "write ERROR");
			
			return "qna";
		}
		
	}
	
	private boolean loginCheck(HttpServletRequest request) {
		HttpSession session = request.getSession();
		
		return session.getAttribute("custom_id") != null;
	}
	
	
	
	@PostMapping("/modify")
	public String modify(QnaDto dto, Model m, RedirectAttributes rattr, HttpSession session) {
		String writer = (String) session.getAttribute("custom_id");
		
		dto.setQna_writer(writer);
		
		try {
			if(service.modify(dto) != 1) {
				throw new Exception("modify fail");
			}
			rattr.addFlashAttribute("msg", "modify OK");
			
			return "redirect:/qna/list";
	
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(dto.toString());
			m.addAttribute("mode", "write");
			m.addAttribute("dto", dto);
			m.addAttribute("msg", "modify ERROR");
			
			return "qna";
		}
		 
	}
	
	@PostMapping("/remove")
	public String remove(Integer qno, Integer page, RedirectAttributes rattr, Integer pageSize, Model m, HttpSession session) {
		String writer = (String) session.getAttribute("custom_id");
		
		try {
			m.addAttribute("page", page);
			m.addAttribute("pageSize", pageSize);
			
			int rowCnt = service.remove(qno, writer);
			
			if(rowCnt != 1) {
				throw new Exception("remove fail");
			}
			rattr.addFlashAttribute("msg", "remove OK");
		} catch(Exception e) {
			e.printStackTrace();
			
			rattr.addFlashAttribute("msg", "remove ERROR");
		}
		return "redirect:/qna/list";
	}
	
	
	@GetMapping("/read")
	public String read(Integer page, Integer pageSize, Integer qno, Model m) {
		try {
			QnaDto dto = service.read(qno);
			
			m.addAttribute(dto);
			m.addAttribute("page", page);
			m.addAttribute("pageSize", pageSize);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "qna";
	}
	
	@GetMapping("/list")
	public String list(SearchCondition sc, Model m) {
		try {
			int totalCnt = service.getCount();
			
			PageHandler pageHandler = new PageHandler(totalCnt, sc);
			
			List<QnaDto> list = service.getList();
			
			System.out.println(list);
			m.addAttribute("list", list);
			m.addAttribute("ph", pageHandler);
			
			Instant startOfToday = LocalDate.now().atStartOfDay(ZoneId.systemDefault()).toInstant();
			m.addAttribute("startOfToday", startOfToday.toEpochMilli());
		
		} catch (Exception e) {
			e.printStackTrace();
			
			m.addAttribute("msg", "LIST_ERR");
			m.addAttribute("totalCnt", 0);
			
		}
		
		return "qnaList";
	}
	
	
	
	
}
