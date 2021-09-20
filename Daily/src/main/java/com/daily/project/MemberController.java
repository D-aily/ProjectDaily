package com.daily.project;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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

	
	int test ;
	
	@RequestMapping(value = "/mlist")
	public ModelAndView mlist(ModelAndView mv) {
		
		List<MemberVO> list = service.mselectList();
		return mv;
	}
	

	@RequestMapping(value = "/mlogin")
	public ModelAndView mlogin(HttpSession session,ModelAndView mv, MemberVO vo,HttpServletRequest request) {
		
		String pw = vo.getPw();
		String password= vo.getPw();
		int Lv = vo.getLv();
		// => 입력값의 오류에 대한 확인은 UI 에서 JavaScript로 처리 
		vo = service.mselectOne(vo);
		if(vo != null) {
			if(vo.getPw().equals(password)) {
				//로그인 성공 : 로그인정보 seesion에 보관 , home으로 
				request.getSession().setAttribute("loginID", vo.getId());
				request.getSession().setAttribute("loginName", vo.getName());
			
				String Lev = String.valueOf(vo.getLv());
				log.info(Lev);
				request.getSession().setAttribute("Lv", Lev);
			
				vo = service.mselectOne(vo);
			
				if (vo != null) {
					if(vo.getPw().equals(pw)) {
						// 로그인 성공
						request.getSession().setAttribute("loginInfo", vo);
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
			}
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

	// mdetail
	@RequestMapping(value = "mdetail")
	public ModelAndView mdetail(HttpServletRequest request, ModelAndView mv, MemberVO vo) {
		
		HttpSession session = request.getSession(false);
		if (session !=null && session.getAttribute("loginID")!=null) {
			vo.setId((String)session.getAttribute("loginID"));
			
			if(request.getParameter("id")!=null) {
				vo.setId(request.getParameter("id"));
			}
			
			vo=service.mselectOne(vo);
			if (vo!=null) {
				mv.addObject("Apple",vo);
				mv.setViewName("member/memberDetail");
				
				if ("U".equals(request.getParameter("jcode"))) {
					mv.setViewName("member/updateForm");
				}else {
					mv.setViewName("member/memberDetail");
				}
				
			}else {
				mv.addObject("message","상세정보가 없습니다, 로그인 후 이용하세요 !! ");
				mv.setViewName("member/loginForm");
			}
		}else {
			// 로그인 정보가 없음.
			mv.addObject("message","상세정보가 없습니다, 로그인 후 이용하세요 !! ");
			mv.setViewName("member/loginForm");
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

	// join
	@RequestMapping(value = "join")
	public ModelAndView join(ModelAndView mv,  MemberVO vo) {
		
		if (service.minsert(vo)> 0) {
			//join 성공 -> 로그인 유도
			mv.addObject("message","~~ 회원가입 완료, 로그인하세요~~" );
			mv.setViewName("member/loginForm");
		}else {
			// join 실페 -> 재가입 유도 
			mv.addObject("message","~~ 회원가입 오류, 다시 하세요 !! ");
			mv.setViewName("member/joinForm");
		}
		return mv;
	}// join
	
	// update
		@RequestMapping(value = "update")
		public ModelAndView update(ModelAndView mv,  MemberVO vo, RedirectAttributes rttr) {
			
			if (service.mupdate(vo)> 0) {
				//update 성공 -> mlist
				rttr.addFlashAttribute("message","정보 수정 성공~~!!");
				mv.setViewName("redirect:mlist");
			}else {
				// update 실페 -> 
				rttr.addFlashAttribute("message"," 회원 정보 수정 실패 , 다시 하세요 !! ");
				mv.setViewName("redirect: mdetail?id="+vo.getId()+"&jcode=U");
			} 
			return mv;
		}// update 

		// mdelete
		@RequestMapping(value = "mdelete")
		public ModelAndView mdelete(ModelAndView mv,  MemberVO vo,HttpServletRequest request,RedirectAttributes rttr) {
			
	/*		String loginId = (String)session.getAttribute(null)
			if (session!=null && loginID!=null) {
			
			
			}else{
			
			}
	*/
			
			if (service.mdelete(vo)> 0) {
					//mdelete 성공 -> home
					HttpSession session = request.getSession(false);
					session.invalidate();
					rttr.addFlashAttribute("message","회원탈퇴 성공 !! 1개월후 재가입 가능 합니다~~");
					mv.setViewName("redirect:home");
				}else {
					// mdelete 실페 -> 
					rttr.addFlashAttribute("message"," 회원 탈퇴 실패 , 없는 정보입니다. !! ");
					mv.setViewName("redirect: home");
				} 
				
			 
			return mv;
		}// mdelete
		 

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
	
	// minfopage
	@RequestMapping(value = "/minfopage")
	public ModelAndView minfopage(ModelAndView mv) {
		mv.setViewName("member/minfopage");
		return mv;
	}
}// MemberController
