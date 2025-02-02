package com.group4.erp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.group4.erp.CorpSearchDTO;
import com.group4.erp.CorporationDTO;
import com.group4.erp.dao.AccountDAO;

@Service
public class AccountServiceImpl implements AccountService {
	
	@Autowired
	AccountDAO accountDAO;

	@Override
	public int getCorpListCnt() {
		// TODO Auto-generated method stub
		int corpListCnt = this.accountDAO.getCorpListCnt();
		
		return corpListCnt;
	}

	@Override
	public List<CorporationDTO> getCorpList(CorpSearchDTO corpSearchDTO) {
		// TODO Auto-generated method stub
		List<CorporationDTO> corpList = this.accountDAO.getCorpList(corpSearchDTO);
		
		return corpList;
	}

	@Override
	public int insertCorp(CorporationDTO corporationDTO) {
		// TODO Auto-generated method stub.
		
		int insertCorpCnt = this.accountDAO.insertCorp(corporationDTO);
		
		return insertCorpCnt;
	}

	@Override
	public CorporationDTO getCorpInfo(String corp_no) {
		// TODO Auto-generated method stub
		CorporationDTO selectedCorp = this.accountDAO.getCorpInfo(corp_no);
		
		return selectedCorp;
	}
	
	

}
