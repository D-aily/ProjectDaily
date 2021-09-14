package Pageing;

import lombok.Getter;
import lombok.ToString;

@Getter
@ToString
public class PageRow {
	private int rowPerPage; // 1페이지당 row개수
	private int	currPage; // 현재페이지
	private int sno ; // 시작페이지
	private int eno ; // 끝페이지 
	
	public PageRow() {
		this.rowPerPage=5;
		this.currPage=1;
	}
	
	public void setCurrpage(int currPage) {
		if (currPage> 1) {
			this.currPage=currPage;
		}
		else this.currPage=1;
	}
	
	public void setRowPerPage(int rowPerPage) {
		if (rowPerPage<5 || rowPerPage>30) {
			this.rowPerPage=5;
		}
		else this.rowPerPage=rowPerPage;
	}
	
	public void setSnoEno() {
		if (this.sno<1) {
			this.sno=1;
		}
		this.sno=(this.currPage-1)*this.rowPerPage+1;
		this.eno=this.sno + this.rowPerPage -1; 
	}
	
	
	
	
}//PageRow
