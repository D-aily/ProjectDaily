package Pageing;

import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

import lombok.Getter;
import lombok.ToString;

@Getter
@ToString
public class PageMaker {
	private int totalRowCount ; // 전체 row 갯수 (전체 page수 계산위함)
	private int spageNo;  //view에 표시할 첫 PageNo
	private int epageNo;  //view에 표시할 끝 PageNo
	
	private boolean prev;
	private boolean next;
	private int displayPageNo = 3; // 1page당 표시할 페이지바 PageNo갯수 
	private int lastPageNo;
	
	private int offset_sno ; // 디비에 시작 열 번호 
	int cur_page; // searchQuery 에서 currpage 값 받기
	
	private Searchpage page;  
	
	public void setPage(Searchpage page) { // 요청페이지 현재페이지,목록개수값 set
		this.page=page;
	}
	
	public void setTotalRowCount(int totalRowCount){
		this.totalRowCount=totalRowCount;
		calcData();
	}
	
	public void calcData() {
		epageNo =(int)(Math.ceil(page.getCurrPage()/(double)displayPageNo)*displayPageNo);
		spageNo = (epageNo-displayPageNo)+1;
		lastPageNo=(int)(Math.ceil(totalRowCount)/(double)page.getRowPerPage());
		
		if (epageNo>lastPageNo) {
			epageNo=lastPageNo;
		}
		 
		prev = spageNo==1 ?false:true ;
		next = epageNo==lastPageNo ?false:true;
	}
	
	
	// 4) QueryString 
	// ** 패키지 org.springframework.web.util
	
	public String makeQuery(int currPage) {
		UriComponents uriComponents = 
				UriComponentsBuilder.newInstance().
				queryParam("currPage", currPage).  // ?currPage=4
				queryParam("rowsPerPage",page.getRowPerPage())
				.build();
		return uriComponents.toString();
	} //makeQuery
	
	public String searchQuery(int currPage) {
		

		cur_page = currPage;
				
		UriComponents uriComponents =
				UriComponentsBuilder.newInstance().
				queryParam("currPage", currPage).
				queryParam("rowsPerPage", page.getRowPerPage()).
				queryParam("costsearch",page.getCostsearch()).
				queryParam("kindsearch",page.getKindsearch()).
				queryParam("scoresearch",page.getScoresearch()).
				queryParam("keyword",page.getKeyword())
				.build();
		return uriComponents.toString();
		
	}
		
	public void setOffset_sno() {
		page.setCurrpage(cur_page);
		
		this.offset_sno= (this.cur_page-1)*page.getRowPerPage();
		System.out.println("offset_sno=>"+offset_sno);
	}

	

	
}//PageMaker
