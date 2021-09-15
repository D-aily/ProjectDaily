package service;

import java.util.List;

import vo.MemberVO;


public interface MemberService {

//----------------------------------------------
	// 기본 CRUD
	
	List<MemberVO> mselectList();
	MemberVO mselectOne(MemberVO vo);
	MemberVO mfindpw(MemberVO vo);
	MemberVO mfindid(MemberVO vo);
	int minsert(MemberVO vo);
	int mupdate(MemberVO vo);
	int mdelete(MemberVO vo);
	
}
