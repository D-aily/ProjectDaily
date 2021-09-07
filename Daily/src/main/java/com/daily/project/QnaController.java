package com.daily.project;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import service.QnaService;
import vo.QnaVO;

@Controller
public class QnaController {

	@Autowired
	QnaService service ; 
	
	@RequestMapping(value="replyf")
	public ModelAndView replyf(ModelAndView mv, QnaVO vo) {
		mv.setViewName("servicecenter/replyForm");
		return mv;
	}
	
	@RequestMapping(value="reply")
	public ModelAndView reply(ModelAndView mv, QnaVO vo, RedirectAttributes rttr) {
		vo.setStep(vo.getStep()+1);
		
		if (service.replyInsert(vo)>0) {
			rttr.addFlashAttribute("message","답글이 등록 되었습니다.");
		}else {
			rttr.addFlashAttribute("message", "답글등록이 취소 되었습니다");
		}
		mv.setViewName("redircet:servicecenter");
		return mv;
	}
	
	
	//CRUD=========================================================
	//Qna list 
	@RequestMapping(value="/servicecenter")
	public ModelAndView qnalist (ModelAndView mv) {
	 List<QnaVO> list = service.selectList();
	 if (list != null) {
		 mv.addObject("Qnalist",list);
	}else {
		mv.addObject("message","출력할 게시글이 없습니다.");
	}
		mv.setViewName("servicecenter/Qnalist");
		return mv ;
	}
	
	
}//class 
