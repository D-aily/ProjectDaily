package vo;

import lombok.Data;

@Data
public class ReviewVO {
	private int reviewnum;
	private int productnum;
	private String id;
	private String content;
	private String date;
	private char state;
	private String image;
	private int score;
	
}
