package vo;

import lombok.Data;

@Data
public class ReviewVO {
	private int reviewnum;
	private int productnum;
	private String id;
	private String content;
	private int review_seq;
	private char state;
	private int score;
	
}
