package com.group4.erp;

public class CorpSearchDTO {

	String searchKeyword;
	private int selectPageNo=1;
	private int rowCntPerPage=10;
	String corp_no;
	
	
	
	public String getCorp_no() {
		return corp_no;
	}

	public void setCorp_no(String corp_no) {
		this.corp_no = corp_no;
	}

	
	public String getSearchKeyword() {
		return searchKeyword;
	}
	
	public void setSearchKeyword(String searchKeyword) {
		this.searchKeyword = searchKeyword;
	}
	
	public int getSelectPageNo() {
		return selectPageNo;
	}
	
	public void setSelectPageNo(int selectPageNo) {
		this.selectPageNo = selectPageNo;
	}
	
	public int getRowCntPerPage() {
		return rowCntPerPage;
	}
	
	public void setRowCntPerPage(int rowCntPerPage) {
		this.rowCntPerPage = rowCntPerPage;
	}

}
