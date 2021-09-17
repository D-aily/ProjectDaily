package com.daily.project;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.annotation.RequestScope;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.extern.log4j.Log4j;
import service.MemberService;
import vo.MemberVO;

@Log4j
@Controller
public class MemberController {
	
	@Autowired
	MemberService service;

	
	@RequestMapping(value = "/mlogin")
	public ModelAndView mlogin(HttpSession session,ModelAndView mv, MemberVO vo,HttpServletRequest request) {
		
		String pw = vo.getPw();
		
		vo = service.mselectOne(vo);
		if (vo != null) {
			if (vo.getPw().equals(pw)) {
				// 로그인 성공
				session.setAttribute("loginInfo", vo);
				mv.setViewName("redirect:home");
			}else {
				// password 틀림
				mv.addObject("message","비밀번호가 일치하지 않습니다. 다시시도해 주세요");
				mv.setViewName("redirect:mloginpage");
			}
		}else {
			// ID 틀림
			mv.addObject("message","아이디가 다릅니다. 다시시도해 주세요");
			mv.setViewName("redirect:mloginpage");
		}
		return mv;
	}//mlogin
	
	@RequestMapping(value = "/mlogout")
	public ModelAndView logout(HttpServletRequest request, ModelAndView mv, RedirectAttributes rttr) {
		HttpSession session = request.getSession(false);
		if (session!=null) {
			session.invalidate();
		}
		mv.setViewName("redirect:home");
		return mv;
	}//mlogout
	
	@RequestMapping(value="/mfindid")
	public ModelAndView mfindid(HttpServletRequest request, ModelAndView mv,MemberVO vo) {
		vo=service.mfindid(vo);
		System.out.println(vo);
		mv.addObject("findid", vo);
		mv.setViewName("member/findidResult");
		return mv;
	}
	
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
	
	// mloginpage
	@RequestMapping(value = "/mloginpage")
	public ModelAndView login(ModelAndView mv) {
		mv.setViewName("member/loginPage");
		return mv;
	}

	// msignuppage
	@RequestMapping(value = "/msignuppage")
	public ModelAndView msignuppage(ModelAndView mv) {
		mv.setViewName("member/signupPage");
		return mv;
	}
	
	// msignuppage
	@RequestMapping(value = "/mfindidpage")
	public ModelAndView mfindidpage(ModelAndView mv) {
		mv.setViewName("member/findidPage");
		return mv;
	}
	
	// msignuppage
	@RequestMapping(value = "/mypage")
	public ModelAndView mypage(ModelAndView mv) {
		mv.setViewName("member/myPage");
		return mv;
	}
	
	// msignuppage
	@RequestMapping(value = "/mfindpwpage")
	public ModelAndView mfindpwpage(ModelAndView mv) {
		mv.setViewName("member/findpwPage");
		return mv;
	}
	
}// MemberController
