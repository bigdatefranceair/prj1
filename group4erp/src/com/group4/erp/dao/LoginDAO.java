package com.group4.erp.dao;

import java.util.Map;

//�α��� ���� �޼ҵ� �̸��� �����ϴ� 'DAO �������̽�' ����

public interface LoginDAO {
	//�α��� ���̵�, ��ȣ ���� ������ �˻��ϴ� �޼ҵ� ����
	
	int getAdminCnt(Map<String, String> admin_id_pwd);

}
