package util;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.WishListVO;

@Repository
public class WishListDAO {
	
	@Autowired
	private SqlSession sqlSession ;
	
	private static final String NS = "daily.mapper.WishListMapper.";
	
	// WishList
	public List<WishListVO> WishList(WishListVO vo) {
		return sqlSession.selectList(NS+"wishlist",vo);
	}

















}//class 
