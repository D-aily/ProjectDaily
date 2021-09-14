package service;

import java.util.List;

import vo.MemberVO;


public interface MemberService {

//----------------------------------------------
	// 기본 CRUD
	
	List<MemberVO> selectList();
	MemberVO selectOne(MemberVO vo);
	MemberVO findpw(MemberVO vo);
	MemberVO findid(MemberVO vo);
	int insert(MemberVO vo);
	int update(MemberVO vo);
	int delete(MemberVO vo);
	
}
