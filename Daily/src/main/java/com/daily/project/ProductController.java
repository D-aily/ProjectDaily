package com.daily.project;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import service.ProductService;
import vo.ProductVO;


@Controller
public class ProductController {

	@Autowired
	ProductService service; // 전역 변수 서비스
	
	//상품 리스트
	@RequestMapping(value = "/pdlist")
	public ModelAndView pdlist(ModelAndView mv) {
		List<ProductVO> list = service.selectList();
		if(list != null ) {  
			System.out.println("** List =>"+list);
			mv.addObject("Product", list); //product에 list를 담는
		}else {
			mv.addObject("message","현재 상품을 준비중입니다. 조금만 기다려주세요." );
		}
		mv.setViewName("product_Board/productList");
		return mv;
	}
	
}//class
