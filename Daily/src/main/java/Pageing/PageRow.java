package Pageing;

import lombok.Getter;
import lombok.ToString;

@Getter
@ToString
public class PageRow {
	private int rowPerPage; // 1페이지당 row개수
	private int	currPage; // 현재페이지
	private int sno ; // 열(목록)시작번호 
	private int eno ; // 열(목록)끝번호  
	
	public PageRow() {
		this.rowPerPage=4;
		this.currPage=1;
	}
	
	public void setCurrpage(int currPage) {
		if (currPage> 1) {
			this.currPage=currPage;
		}
		else this.currPage=1;
	}
	
	public void setRowPerPage(int rowPerPage) {
		if (rowPerPage<4 || rowPerPage>30) {
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
