package Pageing;

import lombok.Getter;
import lombok.ToString;

@Getter
@ToString
public class PageMaker {
	private int totalRowCount ; // 전체 row 갯수 (전체 page수 계산위함)
	private int spagNo;  //view에 표시할 첫 PageNo
	private int epageNo;  //view에 표시할 끝 PageNo
	
	private boolean prev;
	private boolean next;
	private int displayPageNo = 4; // 1page당 표시할 PageNo갯수 
	private int lastPageNo;
	
	
	private Searchpage page; 
	
	public void setPage(Searchpage page) {
		this.page =page;
	}
	
	
	
}//PageMaker
