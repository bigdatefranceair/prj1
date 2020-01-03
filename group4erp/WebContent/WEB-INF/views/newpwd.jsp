<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file = "/WEB-INF/views/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>YES4조 전사적자원관리 시스템 </title>
<script>

function CheckLoginInfo(){
	if( is_empty('[name=emp_id]') ){
		alert("사원 아이디를 입력해주세요.");
		$("[name=writer]").focus();
		return;
	document.loginInfo.submit();
}
}

function CheckLoginInfo(){
	if( is_empty('[name=emp_pwd]') ){
		alert("현 비밀번호를 입력해주세요.");
		$("[name=subject]").focus();
		return;
	document.loginInfo.submit();
	
}
}

function ChangeOutPwd(){
	if( is_empty('[name=new_pwd]') ){
		alert("변경할 비밀번호를 입력해주세요.");
		$("[name=pwd]").focus();
		return;
	document.OutPwd.submit();

	if( is_valid_pattern("[name=new_pwd]", /^[0-9]{4}$/)==false ){
		alert("암호는 숫자 4개를 입력해주세요");
		return;
	}
	if(confirm("정말 변경한 비밀번호를 저장하시겠습니까?")==false){return;}
	
	
	$.ajax({

		url : "/group4erp/gochangepwdProc.do"
	  	 , type : "post"
		, data : $('[name=boardNewPwd]').serialize()
	
		, success : function(boardNewPwdCnt){
			if(boardNewPwdCnt==1){
				alert("새로운비밀번호 등록 성공!");
			}
			else{
				alert("새로운비밀번호 등록 실패! 관리자에게 문의 바람.");
			}
		}
		//서버의 응답을 못 받았을 경우 실행할 익명함수 설정
		, error : function(){
			alert("서버 접속 실패");
		}
	});
}

</script>

</head>
<body>
<cneter>
<form name="change_pwd" method="post" action="/group4erp/gochangepwd.do">
	<b>비밀번호변경화면</b><br>
	<table class="tbcss1" cellpadding=5 cellspacing=0>
		<tr>
			<td>사원아이디</td><td><input type="text" name="emp_id"></td>
		</tr>
		<tr>
			<td>현비밀번호</td><td><input type="text" name="emp_pwd"></td>
		</tr>
		<tr>
			<td>변경할비밀번호</td><td><input type="text" name="new_pwd"></td>
		</tr>
		
		



		
	
	</table>
</form>

<input type="button" name="joinBtn" value="비밀번호변경" onClick="checkLoginInfo();">&nbsp;



    
    



 
</body>
</html>