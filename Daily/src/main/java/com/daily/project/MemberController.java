package com.daily.project;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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

<<<<<<< HEAD


	int test ;

	@RequestMapping(value = "/mlist")
	public ModelAndView mlist(ModelAndView mv) {

		List<MemberVO> list = service.mselectList();
		return mv;
	}
=======
	// 기능-------------------------------------------------------------

	// ID 중복확인
	@RequestMapping(value = "/idCheck")
	public ModelAndView idCheck(ModelAndView mv, MemberVO vo) {
		// => 전달된 ID 의 존재여부 확인
		// => notNull : 존재 -> 사용불가 
		// => Null : 없음 -> 사용가능
		// => 그러므로 전달된 ID 보관해야함
		mv.addObject("newID", vo.getId());
		if (service.mselectOne(vo) != null) {
			mv.addObject("idUse", "F"); // 사용불가
		}else mv.addObject("idUse", "T"); // 사용가능
		mv.setViewName("member/idDupCheck");
		return mv;
	} //idCheck

	//회원가입
	@RequestMapping(value = "/msignup")
	public ModelAndView msignup(ModelAndView mv, MemberVO vo) {
		if(service.minsert(vo)>0) {
			// 회원가입 성공
			mv.setViewName("redirect:mloginpage");
		}else {
			//회원가입 실패
			mv.setViewName("redirect:msignuppage");
		}
		return mv;
	}
	// 개인정보 변경
	@RequestMapping(value = "/info_change")
	public ModelAndView info_change(ModelAndView mv, MemberVO vo) {
		if(service.changeinfo(vo)>0) {
			// 개인정보 수정 성공
>>>>>>> 6b77f0e01001e1c714b0c686d091716486545962

		}else {
			// 개인정보 수정 실패

		}
		mv.setViewName("redirect:minfopage");
		return mv;
	}

	//로그인
	@RequestMapping(value = "/mlogin")
<<<<<<< HEAD
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
				vo = service.mselectOne(vo);
				if (vo != null) {
					if (vo.getPw().equals(pw)) {
						// 로그인 성공
						request.getSession().setAttribute("loginInfo", vo);
						mv.setViewName("redirect:home");
					}else {
						// password 틀림
						mv.addObject("message","비밀번호가 일치하지 않습니다. 다시시도해 주세요");
						mv.setViewName("redirect:mloginpage");
					}
				}
=======
	public ModelAndView mlogin(ModelAndView mv, MemberVO vo,HttpServletRequest request) {
		HttpSession session = request.getSession(true);
		String pw = vo.getPw();

		vo = service.mselectOne(vo);
		if (vo != null) {
			if (vo.getPw().equals(pw)) {
				// 로그인 성공
				session.setAttribute("loginInfo", vo.getId());
				mv.setViewName("redirect:home");
			}else {
				// password 틀림
				mv.addObject("message","비밀번호가 일치하지 않습니다. 다시시도해 주세요");
				mv.setViewName("redirect:mloginpage");
>>>>>>> 6b77f0e01001e1c714b0c686d091716486545962
			}
		}else {
			mv.setViewName("redirect:mloginpage");
		}
		return mv;
<<<<<<< HEAD
	}//mlogin

=======
	}

	//로그아웃
>>>>>>> 6b77f0e01001e1c714b0c686d091716486545962
	@RequestMapping(value = "/mlogout")
	public ModelAndView logout(HttpServletRequest request, ModelAndView mv, RedirectAttributes rttr) {
		HttpSession session = request.getSession(false);
		if (session!=null) {
			session.invalidate();
		}
		mv.setViewName("redirect:home");
		return mv;
<<<<<<< HEAD
	}//mlogout

=======
	}

	//아이디 찾기
>>>>>>> 6b77f0e01001e1c714b0c686d091716486545962
	@RequestMapping(value="/mfindid")
	public ModelAndView mfindid(HttpServletRequest request, ModelAndView mv,MemberVO vo) {
		vo=service.mfindid(vo);
		mv.addObject("findid", vo);
		mv.setViewName("member/findidResult");
		return mv;
	}

<<<<<<< HEAD
=======
	//비밀번호 찾기 (회원가입한 확인)
>>>>>>> 6b77f0e01001e1c714b0c686d091716486545962
	@RequestMapping(value="/mfindpwcheck")
	public ModelAndView mfindpwcheck(HttpServletRequest request, ModelAndView mv,MemberVO vo) {
		vo=service.mfindpw(vo);
		if(vo!=null) {
			mv.addObject("vo", vo);
			mv.setViewName("member/findpwResult");
		}else {
			mv.setViewName("redirect:mfindpwpage");
		}
		return mv;
	}

<<<<<<< HEAD
=======
	//비밀번호 변경
>>>>>>> 6b77f0e01001e1c714b0c686d091716486545962
	@RequestMapping(value="/changepw")
	public ModelAndView changepw(ModelAndView mv,MemberVO vo,HttpSession session, HttpServletResponse response) {
		// jsonView 사용시 response 의 한글 처리
		response.setContentType("text/html; charset=UTF-8");
		if(service.changepw(vo) > 0) {
			// 성공
			if(session.getAttribute("loginInfo")!=null) {
				//로그인
				mv.addObject("message", "비밀번호가 변경되었습니다.");
				mv.setViewName("jsonView");
			}else {
				//비로그인
				mv.addObject("message", "로그인이 필요한 서비스입니다.");
				mv.setViewName("redirect:mloginpage");
			}
		}else {
			mv.addObject("message", "비밀번호가 변경에 실패하였습니다. 다시시도해 주세요");
			if(session.getAttribute("loginInfo")!=null) {
				//로그인
			}else {
				//비로그인
				mv.addObject("message", "로그인이 필요한 서비스입니다.");
				mv.setViewName("redirect:mloginpage");
			}
		}
		return mv;
	}

<<<<<<< HEAD
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
=======



	// page 이동 -------------------------------------------------	

	// 로그인 페이지
	@RequestMapping(value = "/info_pwchange_page")
	public ModelAndView info_pwchange_page(ModelAndView mv,MemberVO vo,HttpSession session) {
		if(session.getAttribute("loginInfo")!=null) {
			vo.setId((String)session.getAttribute("loginInfo"));
			vo = service.mselectOne(vo);
			mv.addObject("Info", vo);
			mv.setViewName("member/info_pwchange_page");
		}else {//비로그인
			mv.setViewName("redirect:mloginpage");
			mv.addObject("message", "로그인이 필요한 서비스입니다.");
>>>>>>> 6b77f0e01001e1c714b0c686d091716486545962
		}
		return mv;
	}

<<<<<<< HEAD
	// page 이동 -------------------------------------------------	

	// mloginpage
=======
	// 개인정보 변경 페이지
	@RequestMapping(value = "/password_change_page")
	public ModelAndView password_change_page(ModelAndView mv,MemberVO vo,HttpSession session) {
		//로그인 확인
		if(session.getAttribute("loginInfo")!=null) {
			vo.setId((String)session.getAttribute("loginInfo"));
			vo = service.mselectOne(vo);
			mv.addObject("Info", vo);
			mv.setViewName("member/info_change_page");
		}else {//비로그인
			mv.setViewName("redirect:mloginpage");
			mv.addObject("message", "로그인이 필요한 서비스입니다.");
		}
		return mv;
	}

	// 개인정보 변경 페이지
	@RequestMapping(value = "/info_change_page")
	public ModelAndView info_change_page(ModelAndView mv,MemberVO vo,HttpSession session) {
		//로그인 확인
		if(session.getAttribute("loginInfo")!=null) {
			vo.setId((String)session.getAttribute("loginInfo"));
			vo = service.mselectOne(vo);
			mv.addObject("Info", vo);
			mv.setViewName("member/info_change_page");
		}else {//비로그인
			mv.setViewName("redirect:mloginpage");
			mv.addObject("message", "로그인이 필요한 서비스입니다.");
		}
		return mv;
	}

	// 로그인 페이지
>>>>>>> 6b77f0e01001e1c714b0c686d091716486545962
	@RequestMapping(value = "/mloginpage")
	public ModelAndView login(ModelAndView mv) {
		mv.setViewName("member/mloginPage");
		return mv;
	}

	// 회원가입페이지
	@RequestMapping(value = "/msignuppage")
	public ModelAndView msignuppage(ModelAndView mv) {
		mv.setViewName("member/signupPage");
		return mv;
	}

<<<<<<< HEAD
	// msignuppage
=======
	// 아이디 찾기 페이지
>>>>>>> 6b77f0e01001e1c714b0c686d091716486545962
	@RequestMapping(value = "/mfindidpage")
	public ModelAndView mfindidpage(ModelAndView mv) {
		mv.setViewName("member/findidPage");
		return mv;
	}
<<<<<<< HEAD


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
=======


	// 비밀번호 찾기 패이지
>>>>>>> 6b77f0e01001e1c714b0c686d091716486545962
	@RequestMapping(value = "/mfindpwpage")
	public ModelAndView mfindpwpage(ModelAndView mv) {
		mv.setViewName("member/findpwPage");
		return mv;
	}

<<<<<<< HEAD
	// minfopage
=======
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

	// 개인정보 페이지
>>>>>>> 6b77f0e01001e1c714b0c686d091716486545962
	@RequestMapping(value = "/minfopage")
	public ModelAndView minfopage(ModelAndView mv,HttpServletRequest request, MemberVO vo) {
		HttpSession session = request.getSession(false);
		//로그인 했을경우
		if(session.getAttribute("loginInfo")!=null) {
			vo.setId((String)session.getAttribute("loginInfo"));
			vo = service.mselectOne(vo);
			if(vo!=null) {
				mv.addObject("loginInfo", vo);
				mv.setViewName("member/minfopage");
			}else {
				mv.setViewName("member/mloginpage");
			}

		}else {
			// 비로그인 상태
			mv.setViewName("member/mloginpage");
		}
		return mv;
	}


}// MemberController
