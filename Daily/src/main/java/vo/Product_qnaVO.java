package vo;

import lombok.Data;

@Data
public class Product_qnaVO {
	private int prodqnanum;
	private int product;
	private String id;
	private String content;
	private int qnanum_seq;
	private char state;
	private char secret;
}
