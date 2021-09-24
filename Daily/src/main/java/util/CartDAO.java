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
	public List<CartVO> cartList(String id){
		return sqlSession.selectList(NS+"cartList",id);
	}
	
	// 장바구니 전체 삭제
	public int deleteAll(String id) {
		return sqlSession.delete(NS+"deleteAll",id);
	}
	
	// 장바구니 개별 삭제
	public int delete(int cartnum) {
		return sqlSession.delete(NS+"delete", cartnum);
	}
	
	// 장바구니 업데이트
	public void update(int cartnum) {
		
	}
	
	// 장바구니 금액합계
	public int sumMoney(String id) {
		return sqlSession.selectOne(NS+"sumMoney", id);
	}
	
	// 장바구니 상품갯수
	public int countCart(String id, int productnum) {
		return 0;
	}
	
	// 장바구니 수정
	public void updateCart(CartVO cvo) {
		
	}
	
	// 
	public int modifyCart(CartVO cvo) {
		return sqlSession.update(NS+"modifyCart", cvo);
	}
	
}//class
