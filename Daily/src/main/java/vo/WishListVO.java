package vo;

import lombok.Data;

@Data
public class WishListVO {
	private int wlnum;
	private String id;
	private int productnum;
	private String date;
	private String pname;
	private String image;
}