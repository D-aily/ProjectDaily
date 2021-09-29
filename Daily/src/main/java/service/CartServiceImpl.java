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
	public List<CartVO> cartList(String id) {
		return dao.cartList(id);
	}
	@Override
	public int deleteAll(String id) {
		return dao.deleteAll(id);
	}
	@Override
	public int delete(int cartnum) {
		return dao.delete(cartnum);
	}
	@Override
	public void update(int cartnum) {
		
	}
	@Override
	public int sumMoney(String id) {
		return dao.sumMoney(id);
	}
	@Override
	public int countCart(String id, int productnum) {
		return 0;
	}
	@Override
	public void updateCart(CartVO cvo) {
		
	}
	@Override
	public int modifyCart(CartVO cvo) {
		return dao.modifyCart(cvo);
	}
}//class



