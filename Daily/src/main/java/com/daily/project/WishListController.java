package com.daily.project;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import service.WishListService;
import vo.WishListVO;

@Controller
public class WishListController {

	@Autowired
	WishListService service;
	// 기능-------------------------------------------------------------

	/*
	 * //위시리스트 불러오기
	 * 
	 * @RequestMapping(value="/wishlist") 
	 * public ModelAndView wishlist(ModelAndView mv, MemberVO vo,HttpServletRequest request) {
	 * 
	 * HttpSession session = request.getSession(true);
	 * vo.setId((String)session.getAttribute("loginInfo"));
	 * 
	 * if(service.changepw(vo) > 0) { // 성공
	 * if(session.getAttribute("loginInfo")!=null) { //로그인 mv.addObject("message",
	 * "비밀번호가 변경되었습니다."); mv.setViewName("jsonView"); }else { //비로그인
	 * mv.addObject("message", "로그인이 필요한 서비스입니다.");
	 * mv.setViewName("redirect:mloginpage"); } }else { mv.addObject("message",
	 * "비밀번호가 변경에 실패하였습니다. 다시시도해 주세요"); if(session.getAttribute("loginInfo")!=null)
	 * { //로그인 }else { //비로그인 mv.addObject("message", "로그인이 필요한 서비스입니다.");
	 * mv.setViewName("redirect:mloginpage"); } } return mv; }
	 */



	// page 이동 -------------------------------------------------	

	// 위시리스트 페이지
	@RequestMapping(value = "/wishlistpage")
	public ModelAndView wishlistpage(ModelAndView mv, WishListVO vo, HttpServletRequest request) {
		HttpSession session = request.getSession(true);
		// 로그인 한 아이디 기준으로 검색 
		vo.setId((String)session.getAttribute("loginInfo"));
		List<WishListVO> list = service.WishList(vo);
		if(list != null) {
			//찜목록 있음
			mv.addObject("wishlist",list);
		}else {
			//찜목록 없음
			
		}
		mv.setViewName("home");
		return mv;
	}



}// MemberController
