package vo;

import lombok.Data;

@Data
public class CartVO {
	private int cartnum;
	private String id;
	private String productnum;
	private String quantity;
	private String date;
}
