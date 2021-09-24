package com.daily.project;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.extern.log4j.Log4j;
import service.CartService;
import vo.CartVO;

@Log4j
@Controller
public class CartController {
	
	@Autowired
	CartService service;
	
	@RequestMapping(value = "/addCart")
	public ModelAndView addCart(ModelAndView mv,CartVO cvo, HttpServletRequest request,RedirectAttributes rttr) {
		HttpSession session = request.getSession(false);
		//로그인 여부 확인하기
		String loginID = (String)session.getAttribute("loginID");
		cvo.setId(loginID);
		if(loginID != null) {
			if(service.insert(cvo)>0) {
				rttr.addFlashAttribute("message","장바구니에 추가 되었습니다.");
				mv.setViewName("redirect:cartlist");
			}else {
				rttr.addFlashAttribute("message","장바구니 추가에 패하였습니다.");
				mv.setViewName("redirect:productDetail?productnum="+cvo.getProductnum()+"");
			}
		}
		rttr.addFlashAttribute("message", "로그인 후 이용해 주세요!!");
		mv.setViewName("redirect:loginPage");
		return mv;
	}
	
		
}//class
