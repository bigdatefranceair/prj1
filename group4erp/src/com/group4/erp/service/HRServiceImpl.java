package com.group4.erp.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.group4.erp.EmployeeDTO;
import com.group4.erp.EmployeeInfoDTO;
import com.group4.erp.SalaryDTO;
import com.group4.erp.SalListSearchDTO;
import com.group4.erp.TimeDTO;
import com.group4.erp.dao.HrDAO;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.group4.erp.HrListSearchDTO;
import com.group4.erp.SalListSearchDTO;
import com.group4.erp.dao.HrDAO;
import com.group4.erp.dao.InvenDAO;

@Service
public class HRServiceImpl implements HRService {

	
	@Autowired
	HrDAO hrDAO;

	@Override
	public List<SalaryDTO> getEmpSalList(SalListSearchDTO salListSearchDTO) {
		
		List<SalaryDTO> empSalList = this.hrDAO.getEmpSalList(salListSearchDTO);
		
		return empSalList;
	}
	
	public int getEmpListAllCnt(HrListSearchDTO hrListSearchDTO) {
		
		int getEmpBoardListCnt = this.hrDAO.getEmpListAllCnt(hrListSearchDTO);
		
		return getEmpBoardListCnt;
	}
	
	public List<Map<String, String>> getEmpList(HrListSearchDTO hrListSearchDTO){
		
		List<Map<String, String>> getEmpBoardList = this.hrDAO.getEmpList(hrListSearchDTO);
		
		return getEmpBoardList;

	}
	
	@Override
	public int getDayOffListCnt(HrListSearchDTO hrListSearchDTO) {
		int getDayOffListCnt = this.hrDAO.getDayOffListCnt(hrListSearchDTO);
		return getDayOffListCnt;
	}

	@Override
	public List<Map<String, String>> getDayOffList(HrListSearchDTO hrListSearchDTO) {
		List<Map<String, String>> getDayOffList = this.hrDAO.getDayOffList(hrListSearchDTO);
		return getDayOffList;
	}

	@Override
	public int getEmpInoutListCnt(HrListSearchDTO hrListSearchDTO) {
		int getEmpInoutListCnt = this.hrDAO.getEmpInoutListCnt(hrListSearchDTO);
		return getEmpInoutListCnt;
	}

	@Override
	public List<Map<String, String>> getEmpInoutList(HrListSearchDTO hrListSearchDTO) {
		List<Map<String, String>> getEmpInoutList = this.hrDAO.getEmpInoutList(hrListSearchDTO);
		return getEmpInoutList;
	}
	
	
	
	public int getEmpListAllCnt(SalListSearchDTO salListSearchDTO) {
		
		int getEmpBoardListCnt = this.hrDAO.getEmpListAllCnt(salListSearchDTO);
		
		return getEmpBoardListCnt;
	}
	

	@Override
	public TimeDTO getTime() {
		// TODO Auto-generated method stub
		TimeDTO timeDTO = this.hrDAO.getTime();
		
		return timeDTO;
	}

	@Override
	public SalaryDTO getSalaryInfo(int emp_no) {
		// TODO Auto-generated method stub
		
		SalaryDTO salaryDTO = this.hrDAO.getSalaryInfo(emp_no);
		
		return salaryDTO;
	}

	public EmployeeInfoDTO getEmpContant(int emp_no) {
		
		EmployeeInfoDTO getEmpContantList = this.hrDAO.getEmpContant(emp_no);
		
		return getEmpContantList;

	}

	@Override
	public List<SalaryDTO> getAvgSalChart() {
		// TODO Auto-generated method stub
		
		List<SalaryDTO> avgSalInfo = this.hrDAO.getAvgSalChart();
		
		return avgSalInfo;
	}

}
