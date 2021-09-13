package com.daily.project;

import java.io.IOException;
import java.util.List;

<<<<<<< HEAD

import javax.servlet.http.HttpServletRequest;

=======
import javax.servlet.http.HttpServletRequest;
>>>>>>> 75d699c846402a12f46c5653272150bf66f70423

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	
	//상품 등록 폼
	@RequestMapping(value = "/pdregistf")
	public ModelAndView pdregistf(ModelAndView mv) {
		mv.setViewName("product_Board/productRegist");
		return mv;
	}
	
	//상품 등록
	@RequestMapping(value = "/pdregist")
	public ModelAndView pdregist(ModelAndView mv, ProductVO vo, HttpServletRequest request )throws IOException {
		System.out.println("insert =>"+vo);
		if(service.insert(vo) > 0) {
			mv.addObject("message","상품 등록이 완료되었습니다.");
			mv.setViewName("home");
		}else {
			mv.addObject("message", "상품 등록이 실패하였습니다. 다시 시도해주세요!");
			mv.setViewName("product_Board/productRegist");
		}
		return mv;
	}
	
	//상품 디테일
	@RequestMapping(value = "/pddetail")
	public ModelAndView pddetail(ModelAndView mv, ProductVO vo, HttpServletRequest request, RedirectAttributes rttr) {
		service.countUp(vo);
		
		vo = service.selectOne(vo);
		if(vo != null) {
			request.setAttribute("Product", vo);
			if("U".equals(request.getParameter("jcode"))) {
				//업데이트로 넘어가기
				mv.setViewName("product_Board/productUpdate");
			}else {
				mv.setViewName("product_Board/productDetail");
			}
		}else {
			mv.addObject("message","해당 상품을 찾을 수 없습니다.");
			mv.setViewName("redirect:pdlist");
		}
		return mv;
	}
	
	//상품 수정
	@RequestMapping(value = "/pdupdate")
	public ModelAndView pdupdate(ModelAndView mv,ProductVO vo, RedirectAttributes rttr)throws IOException {
		
		if(service.update(vo) > 0) {
	     //업데이트 성공
		 rttr.addFlashAttribute("message","상품 업데이트 성공!");
		 mv.setViewName("redirect:pdlist");
		}else {
		 //업데이트 실패
		 rttr.addFlashAttribute("message","상품 업데이트 실패. 확인 후 다시해주세요!");
		 mv.setViewName("redirect:pddetail?productnum="+vo.getProductnum()+"&jcode=U");
		}
		return mv;
	}
	
	//상품 삭제
	@RequestMapping(value = "/pddelete")
	public ModelAndView pddelete(ModelAndView mv,ProductVO vo, RedirectAttributes rttr) {
		if(service.delete(vo) > 0) {
			//삭제 성공
			rttr.addFlashAttribute("message","상품이 성공적으로 삭제 되었습니다.");
			mv.setViewName("redirect:pdlist");
		}else {
			//삭제 실패
			rttr.addFlashAttribute("message","상품 삭제가 실패 하였습니다.");
			mv.setViewName("redirect:pddetail?productnum="+vo.getProductnum());
		}
		return mv;
	}
	
	
}//class
