package vo;

import lombok.Data;

@Data
public class MemberVO {
	private String id; 
	private String pw; 
	private String name; 
	private String address; 
	private String phone; 
	private char state; 
	private char lev ; 
	private int money; 
	private int point; 
}
