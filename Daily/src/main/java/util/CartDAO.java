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
	// list
	public List<CartVO> cartMoney(){
		return null;
	}
	
	// insert 장바구니 담기
	public int insert(CartVO cvo) {
		return sqlSession.insert(NS+"insert",cvo);
	}
	
	// list 장바구니 목록 
	public List<CartVO> cselectList(CartVO cvo){
		return sqlSession.selectList(NS+"selectList",cvo);
	}

}//class
