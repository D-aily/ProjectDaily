package vo;

import lombok.Data;

@Data
public class PnaVO {
	private int qnanum ;
	private String id;
	private String content;
	private int root ;
	private int indent;
	private int qnanum_seq;
	private char state;
	private char secret;
}
