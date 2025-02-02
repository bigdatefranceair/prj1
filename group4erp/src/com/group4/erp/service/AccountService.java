/*
 * 회계 업무 관련 기능들 처리
 * 
 * 
 */


package com.group4.erp.service;

import java.util.List;

import com.group4.erp.CorpSearchDTO;
import com.group4.erp.CorporationDTO;

public interface AccountService {
	
	int getCorpListCnt();
	
	List<CorporationDTO> getCorpList(CorpSearchDTO corpSearchDTO);
	
	int insertCorp(CorporationDTO corporationDTO);
	
	CorporationDTO getCorpInfo(String corp_no);

}
