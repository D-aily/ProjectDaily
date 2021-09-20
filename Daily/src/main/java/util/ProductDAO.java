package util;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Pageing.PageRow;
import Pageing.Searchpage;
import vo.ProductVO;

@Repository
public class ProductDAO {
	@Autowired
	private SqlSession sqlSession ;
	
	private static final String NS = "daily.mapper.ProductMapper.";
	

	
	//pageList
	public int searchRowsCount(PageRow pr ){
		return sqlSession.selectOne(NS+"searchRowsCount",pr);
	}
	
	// 입력 통합검색
	public List<ProductVO> keywordsearchList(PageRow pr) {
		return sqlSession.selectList(NS+"keywordsearchList", pr);
	}
	
	// 상품옵션 통합검색 
	public List<ProductVO> optionsearchList(PageRow pr) {
		return sqlSession.selectList(NS+"optionsearchList", pr);
	}
<<<<<<< HEAD

	public int totalRowsCount() {
		return sqlSession.selectOne(NS+"totalRowCount");
	} //totalRowsCount

=======
	
>>>>>>> fa2beb7a9034057b79c639253ccc4a4325e4f919
	// CRUD + countUp
	
	//selectList
	public List<ProductVO> selectList(){
		return sqlSession.selectList(NS+"selectList");
	}
	//selectOne
	public ProductVO selectOne(ProductVO vo) {
		return sqlSession.selectOne(NS+"selectOne", vo);
	}
	// insert
	public int insert(ProductVO vo){
		return sqlSession.insert(NS+"insert",vo);
	}
	//update
	public int update(ProductVO vo) {
		return sqlSession.update(NS+"update",vo);
	}
	//delete
	public int delete(ProductVO vo) {
		return sqlSession.delete(NS+"delete",vo);
	}
	//countUp
	public int countUp(ProductVO vo) {
		return sqlSession.update(NS+"countUp", vo);
	}
	
}//class
