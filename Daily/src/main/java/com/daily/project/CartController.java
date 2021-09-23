package com.daily.project;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mysql.cj.Session;

import lombok.extern.log4j.Log4j;
import service.CartService;
import vo.CartVO;

@Log4j
@Controller
public class CartController {
	
	@Autowired
	CartService service;
	
	// 장바구니 담기
	@RequestMapping(value = "/addCart")
	public ModelAndView addCart(ModelAndView mv,CartVO cvo, HttpSession session,RedirectAttributes rttr) {
		//로그인 여부 확인
		if(session.getAttribute("loginInfo") != null) {
			//로그인 상태
			if(service.insert(cvo)>0) {
				rttr.addFlashAttribute("message","장바구니에 추가 되었습니다.");
				mv.setViewName("redirect:cartlist");
			}else {
				rttr.addFlashAttribute("message","장바구니 추가에 실패하였습니다.");
				mv.setViewName("redirect:productDetail?productnum="+cvo.getProductnum()+"");
			}
		}else{//로그인 안한 상태
		rttr.addFlashAttribute("message", "로그인이 필요한 서비스 입니다.");
		mv.setViewName("redirect:loginPage");
		
		}
		return mv;
	}
		
	// 장바구니 목록
	@RequestMapping(value = "/cartlist")
	public ModelAndView cartlist(ModelAndView mv, HttpSession session,RedirectAttributes rttr) {
		Map<String,Object> map = new HashMap<>();
		//hashmap은 map(key,value)로 이뤄져 있고,
        //key값은 중복이 불가능 하고 value는 중복이 가능하다.
        //value에 null값도 사용이 가능하다.
        //전달할 정보가 많을 경우에는 HashMap<>을 사용하는 것이 좋다.
        //장바구니에 담을 값들이 많기 때문에 여기선 HashMap<>를 사용한다.
		String loginInfo = (String)session.getAttribute("loginInfo");
		// 로그인 정보 확인
		if(loginInfo != null) {
			List<CartVO> list = service.cartList(loginInfo); // 장바구니 목록
			int sumMoney = service.sumMoney(loginInfo); // 금액 합계
			map.put("sumMoney",sumMoney);
			map.put("list", list);
			map.put("count",list.size()); //레코드 갯수
			
			mv.addObject("map", map); //데이터를 저장
			mv.setViewName("product_Board/cartList");
			
		}else {
			//로그인 안한경우
			rttr.addFlashAttribute("message", "로그인이 필요한 서비스 입니다.");
			mv.setViewName("redirect:loginPage");
		}
		return mv;
	}
	
	
	
}//class
