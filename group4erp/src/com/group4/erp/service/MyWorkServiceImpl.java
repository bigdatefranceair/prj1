package com.group4.erp.service;

import com.group4.erp.InvenSearchDTO;
import com.group4.erp.MyWorkSearchDTO;
import com.group4.erp.dao.*;
import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class MyWorkServiceImpl implements MyWorkService{

	@Autowired
	private MyWorkDAO myWorkDAO;

	//검색된 관리 상품 목록 불러오는 코드
	public List<Map<String,String>> getMyCareBookList(MyWorkSearchDTO myWorkSearchDTO) {

		List<Map<String,String>> getMyCareBookList = this.myWorkDAO.getMyCareBookList(myWorkSearchDTO);

		//System.out.println("서비스 : " + getMyCareBookList.size());
		return getMyCareBookList;
		
	}
	//===================================================================================================
	//검색 항목 불러오는 코드
	public List<Map<String,String>> getCategoryList(MyWorkSearchDTO myWorkSearchDTO) {

		List<Map<String,String>> getCategoryList = this.myWorkDAO.getCategoryList(myWorkSearchDTO);

		//System.out.println("서비스 : " + getCategoryList.size());
		return getCategoryList;
		
	}
	public List<Map<String,String>> getBookSizeList(MyWorkSearchDTO myWorkSearchDTO) {

		List<Map<String,String>> getBookSizeList = this.myWorkDAO.getBookSizeList(myWorkSearchDTO);

		//System.out.println("서비스 : " + getBookSizeList.size());
		return getBookSizeList;
		
	}
	public List<Map<String,String>> getBranchList(MyWorkSearchDTO myWorkSearchDTO) {

		List<Map<String,String>> getBranchList = this.myWorkDAO.getBranchList(myWorkSearchDTO);

		//System.out.println("서비스 : " + getBranchList.size());
		return getBranchList;
		
	}
	public List<Map<String,String>> getPublisherList(MyWorkSearchDTO myWorkSearchDTO) {

		List<Map<String,String>> getPublisherList = this.myWorkDAO.getPublisherList(myWorkSearchDTO);

		//System.out.println("서비스 : " + getPublisherList.size());
		return getPublisherList;
		
	}
	//===================================================================================================
	//페이징 처리를 위한 총 검색 개수 불러오는 코드
	public int getMyWorkListAllCnt(MyWorkSearchDTO myWorkSearchDTO) {

		int myWorkListAllCnt = this.myWorkDAO.getMyWorkListAllCnt(myWorkSearchDTO);

		System.out.println("서비스 : " + myWorkListAllCnt);
		return myWorkListAllCnt;
		
	}
}
