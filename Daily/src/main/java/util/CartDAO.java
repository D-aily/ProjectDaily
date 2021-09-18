package util;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.CartVO;
import vo.FAQVO;

@Repository
public class CartDAO {

	
	@Autowired
	private	SqlSession sqlSession ;
	
	private static final String NS = "daily.mapper.CartMapper.";
	
	// insert 
	public int insert(CartVO cvo) {
		return sqlSession.insert(NS+"insert",cvo);
	}

}//class
