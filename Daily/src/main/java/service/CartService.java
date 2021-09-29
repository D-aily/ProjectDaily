package service;

import java.util.List;

import vo.CartVO;

public interface CartService {
	
	List<CartVO> cartMoney();
	int insert(CartVO cvo);
	List<CartVO> cartList(String id);
	 int delete(int cartnum); //장바구니 개별 삭제
	 int deleteAll(String id); //장바구니 비우기
	 void update(int cartnum); 
	 int sumMoney(String id); //장바구니 금액 합계
	 int countCart(String id, int productnum); //장바구니 상품 갯수
	 void updateCart(CartVO cvo); //장바구니 수정 
	 int modifyCart(CartVO cvo);
	
}//class
