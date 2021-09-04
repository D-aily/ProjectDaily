package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import util.MemberDAO;
import vo.MemberVO;

public class MemberServiceImpl implements MemberService {
	@Autowired
	MemberDAO dao;
	
	
	
	
	//----------------------------------------------
		// 기본 CRUD
	@Override
	public List<MemberVO> selectList() {
		// TODO 회원 리스트
		return dao.selectList();
	}
	@Override
	public MemberVO selectOne(MemberVO vo) {
		// TODO 회원 한명 
		return selectOne(vo);
	}
	@Override
	public int insert(MemberVO vo) {
		// TODO 추가
		return dao.insert(vo);
	}
	@Override
	public int update(MemberVO vo) {
		// TODO 수정
		return dao.update(vo);
	}
	@Override
	public int delete(MemberVO vo) {
		// TODO 삭제
		return dao.delete(vo);
	}
}