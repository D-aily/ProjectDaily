package vo;

import lombok.Data;

@Data
public class PnaVO {
	private int qnanum ;
	private int qnanum_seq;
	private String id;
	private String content;
	private int root ;
	private int indent;
	private String date;
	private char state;
	private char secret;
}
