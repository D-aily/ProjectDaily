package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import util.CartDAO;
import vo.CartVO;

@Service
public class CartServiceImpl implements CartService {

	@Autowired
	public CartDAO dao;

	@Override
	public int insert(CartVO cvo) {
		return dao.insert(cvo);
	}
	@Override
	public List<CartVO> cartMoney() {
		return null;
	}
	@Override
	public List<CartVO> cselectList(CartVO cvo) {
		return dao.cselectList(cvo);
	}
}



