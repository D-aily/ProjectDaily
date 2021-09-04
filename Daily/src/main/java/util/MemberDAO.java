package util;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import vo.MemberVO;

@Repository
public class MemberDAO {

	private SqlSession sqlSession ;
	
	private static final String NS = "daily.mapper.MemberMapper.";
	
	
// ----------------------------------------------------------
	// CRUD
	
	// selectList 
	public List<MemberVO> selectList(){
		return sqlSession.selectList(NS+"selectList");
	}
	// selectOne
	public MemberVO selectOne(MemberVO vo) {
		return sqlSession.selectOne(NS+"selectOne",vo);
	}
	
	// insert 
	public int insert(MemberVO vo) {
		return sqlSession.insert(NS+"insert",vo);
	}
	
	// update
	public int update(MemberVO vo) {
		return sqlSession.update(NS+"update",vo);
	}
	// delete 
	public int delete(MemberVO vo) {
		return sqlSession.delete(NS+"delete",vo);
	}
}//class 
