package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import util.MemberDAO;
import vo.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {
	@Autowired
	MemberDAO dao;
	
	@Override
	public MemberVO findid(MemberVO vo) {
		return dao.findid(vo);
	}
	@Override
	public int findpw(MemberVO vo) {
		return dao.findpw(vo);
	}

	@Override
	public List<MemberVO> selectList() {
		// TODO 회원 리스트
		return dao.selectList();
	}
	@Override
	public MemberVO selectOne(MemberVO vo) {
		// TODO 회원 한명 
		return dao.selectOne(vo);
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
