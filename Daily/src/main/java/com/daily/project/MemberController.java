package com.daily.project;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import service.MemberService;
import vo.MemberVO;

@Controller
public class MemberController {
	
	@Autowired
	MemberService service;

	// 기능-------------------------------------------------------------
	
	//배송지 변경
	@RequestMapping(value = "/address_change")
	public ModelAndView address_change(HttpSession session, ModelAndView mv,MemberVO vo) {
		String address = vo.getAddress();
		if(service.changeaddress(vo) > 0) {
			//주소변경 성공
			mv.addObject("result","complete");
		    session.setAttribute("loginInfo.address", address);
		}else {
			mv.addObject("result","error");
		}
		mv.setViewName("redirect:minfopage");
		return mv;
	}
	
	//로그인
	@RequestMapping(value = "/mlogin")
	public ModelAndView mlogin(HttpSession session,ModelAndView mv, MemberVO vo,HttpServletRequest request) {
		
		String pw = vo.getPw();
		
		vo = service.mselectOne(vo);
		if (vo != null) {
			if (vo.getPw().equals(pw)) {
				// 로그인 성공
				session.setAttribute("loginInfo", vo);
				//request.getSession().setAttribute("loginInfo", vo);
				mv.setViewName("redirect:home");
			}else {
				// password 틀림
				mv.addObject("message","비밀번호가 일치하지 않습니다. 다시시도해 주세요");
				mv.setViewName("redirect:mloginpage");
			}
		}
		return mv;
	}
	
	//로그아웃
	@RequestMapping(value = "/mlogout")
	public ModelAndView logout(HttpServletRequest request, ModelAndView mv, RedirectAttributes rttr) {
		HttpSession session = request.getSession(false);
		if (session!=null) {
			session.invalidate();
		}
		mv.setViewName("redirect:home");
		return mv;
	}
	
	//아이디 찾기
	@RequestMapping(value="/mfindid")
	public ModelAndView mfindid(HttpServletRequest request, ModelAndView mv,MemberVO vo) {
		vo=service.mfindid(vo);
		System.out.println(vo);
		mv.addObject("findid", vo);
		mv.setViewName("member/findidResult");
		return mv;
	}
	
	//비밀번호 찾기
	@RequestMapping(value="/mfindpwcheck")
	public ModelAndView mfindpwcheck(HttpServletRequest request, ModelAndView mv,MemberVO vo) {
		vo=service.mfindpw(vo);
		if(vo!=null) {
			mv.addObject("vo", vo);
			mv.setViewName("member/findpwResult");
		}else {
			mv.setViewName("redirect:mfindpw");
		}
		return mv;
	}
	
	//비밀번호 변경
	@RequestMapping(value="/changepw")
	public ModelAndView changepw(ModelAndView mv,MemberVO vo) {
		int result = service.changepw(vo);
		if(result > 0) {
			// 성공
			mv.addObject("vo", vo);
			mv.addObject("message", "비밀번호가 변경되었습니다.");
			mv.setViewName("redirect:mloginpage");
		}else {
			mv.addObject("message", "비밀번호가 변경에 실패하였습니다. 다시시도해 주세요");
			mv.setViewName("redirect:mfindpw");
		}
		return mv;
	}

	
	
	
	// page 이동 -------------------------------------------------	
	
	// 배송지 페이지
	@RequestMapping(value = "/addresspage")
	public ModelAndView addresspage(ModelAndView mv) {
		System.out.println("addresspage");
		mv.setViewName("member/addresspage");
		return mv;
	}
	
	// 개인정보 변경 페이지
	@RequestMapping(value = "/info_change_page")
	public ModelAndView info_change_page(ModelAndView mv) {
		System.out.println("info_change_page");
		mv.setViewName("member/info_change_page");
		return mv;
	}
	
	// 배송지 변경 페이지
	@RequestMapping(value = "/address_change_page")
	public ModelAndView address_change_page(ModelAndView mv) {
		mv.setViewName("member/address_change_page");
		return mv;
	}

	// 로그인 페이지
	@RequestMapping(value = "/mloginpage")
	public ModelAndView login(ModelAndView mv) {
		mv.setViewName("member/loginPage");
		return mv;
	}

	// 회원가입페이지
	@RequestMapping(value = "/msignuppage")
	public ModelAndView msignuppage(ModelAndView mv) {
		mv.setViewName("member/signupPage");
		return mv;
	}
	
	// 아이디 찾기 페이지
	@RequestMapping(value = "/mfindidpage")
	public ModelAndView mfindidpage(ModelAndView mv) {
		mv.setViewName("member/findidPage");
		return mv;
	}

	// 마이페이지
	@RequestMapping(value = "/mypage")
	public ModelAndView mypage(ModelAndView mv,HttpSession session) {
		if(session.getAttribute("loginInfo")!=null) {
			mv.setViewName("member/myPage");
		}else {
			mv.setViewName("redirect:mloginpage");
			mv.addObject("message", "로그인이 필요한 서비스입니다.");
		}
		return mv;
	}

	// 비밀번호 찾기 패이지
	@RequestMapping(value = "/mfindpwpage")
	public ModelAndView mfindpwpage(ModelAndView mv) {
		mv.setViewName("member/findpwPage");
		return mv;
	}

	
	// 개인정보 페이지
	@RequestMapping(value = "/minfopage")
	public ModelAndView minfopage(ModelAndView mv) {
		mv.setViewName("member/minfopage");
		return mv;
	}
	
	
}// MemberController
