<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file = "/WEB-INF/views/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>책 재고관리</title>
<script>

$(document).ready(function(){	
	
	$('[name=rowCntPerPage]').change(function(){
		goSearchBookInven();
	});
	
	
	$(".pagingNumber").html(
			getPagingNumber(
				"${bookListCnt}"						//검색 결과 총 행 개수
				,"${invenSearchDTO.selectPageNo}"			//선택된 현재 페이지 번호
				,"${invenSearchDTO.rowCntPerPage}"		//페이지 당 출력행의 개수
				,"10"										//페이지 당 보여줄 페이지번호 개수
				,"goSearchBookInven();"						//페이지 번호 클릭 후 실행할 자스코드
			)
		);
	

	inputData('[name=rowCntPerPage]',"${invenSearchDTO.rowCntPerPage}");
	inputData('[name=selectPageNo]',"${invenSearchDTO.selectPageNo}");
});

	function goSearchBookInven(){
		//alert("검색기능 구현중");
		document.book_inventory_search_form.submit();
	}

$(document).ready(function(){   
   
   $('[name=rowCntPerPage]').change(function(){
      goSearchBookInven();
   });
   
   
   $(".pagingNumber").html(
         getPagingNumber(
            "${bookListCnt}"                  //검색 결과 총 행 개수
            ,"${invenSearchDTO.selectPageNo}"         //선택된 현재 페이지 번호
            ,"${invenSearchDTO.rowCntPerPage}"      //페이지 당 출력행의 개수
            ,"10"                              //페이지 당 보여줄 페이지번호 개수
            ,"goSearchBookInven();"                  //페이지 번호 클릭 후 실행할 자스코드
         )
      );
   

   inputData('[name=rowCntPerPage]',"${invenSearchDTO.rowCntPerPage}");
   inputData('[name=selectPageNo]',"${invenSearchDTO.selectPageNo}");
   inputData('[name=searchPublisher]',"${invenSearchDTO.searchPublisher}");
   inputData('[name=is_print]',"${invenSearchDTO.is_print}");
   inputData('[name=book_keyword]',"${invenSearchDTO.book_keyword}");
   	<c:forEach items="${hrListSearchDTO.category_name}" var="cat">
		inputData( "[name=category_name]", "${cat}" );
	</c:forEach>
	<c:forEach items="${hrListSearchDTO.size_cd}" var="size_cd">
		inputData( "[name=size_cd]", "${size_cd}" );
	</c:forEach>
	<c:forEach items="${hrListSearchDTO.inventory_loc}" var="loc">
		inputData( "[name=inventory_loc]", "${loc}" );
	</c:forEach>
   
});

   function goSearchBookInven(){
      //alert("검색기능 구현중");
      alert(  $("[name=book_inventory_search_form]").serialize()   );
      document.book_inventory_search_form.submit();
   }

   function goAllSearchBookInven(){
      alert("모두검색기능 구현중");
      //document.book_inventory_search_form.reset();
      //goSearchBookInven();
   }
   
</script>
<!--
<style>
   .table_layout{width:98%}
   
   table{width:100%}

</style>
-->
</head>
<body><center>
   <form name="book_inventory_search_form" method="post" action="/group4erp/goBookList.do">
      <div class="table_layout">
      <table  width="700" border=1 bordercolor="#000000" cellpadding=5 align=center>
         <!-- <colgroup>
            <col width="20%" />
            <col width="*" />
         </colgroup> -->
         <tr bgcolor="gray">
         <th width=50>구분<th>내용
         <tr>
         <th bgcolor="gray">분야
         <td align=center>
            <input type="checkbox" name="category_name" value="소설">소설
            <input type="checkbox" name="category_name" value="사회">사회
            <input type="checkbox" name="category_name" value="과학">과학
            <input type="checkbox" name="category_name" value="IT">IT
            <input type="checkbox" name="category_name" value="예술">예술
            <input type="checkbox" name="category_name" value="종교">종교
            <input type="checkbox" name="category_name" value="만화">만화
            <input type="checkbox" name="category_name" value="여행">여행
            <input type="checkbox" name="category_name" value="잡지">잡지
            <input type="checkbox" name="category_name" value="요리">요리
         <tr>
         <th bgcolor="gray">판형
         <td align=center>
            <input type="checkbox" name="size_cd" value="01">신국판
            <input type="checkbox" name="size_cd" value="02">국판
            <input type="checkbox" name="size_cd" value="03">46판
            <input type="checkbox" name="size_cd" value="04">46배판
            <input type="checkbox" name="size_cd" value="05">크라운판
            <input type="checkbox" name="size_cd" value="06">국배판
            <input type="checkbox" name="size_cd" value="07">타블로이드
         <tr>
         <th bgcolor="gray">지역
         <td align=center>
            <input type="checkbox" name="inventory_loc" value="지역1">지역1
            <input type="checkbox" name="inventory_loc" value="지역2">지역2
            <input type="checkbox" name="inventory_loc" value="지역3">지역3
            <input type="checkbox" name="inventory_loc" value="지역4">지역4
            <input type="checkbox" name="inventory_loc" value="지역5">지역5
         <tr>
         <th bgcolor="gray">출판사
         <td align=center>
            <select name="searchPublisher">
               <option value="">--------</option>
               <c:forEach items="${requestScope.publisher}" var="publisher" varStatus="loopTagStatus">
                  <option value="${publisher.publisher}">${publisher.publisher}</option>
               </c:forEach>
             
         
         <tr>
         <th bgcolor="gray">절판 상황
         <td align=center>
            <input type="radio" name="is_print" value="n">절판
            <input type="radio" name="is_print" value="y">판매중
         
         <tr>
         <th bgcolor="gray">키워드
         <td>
            <input type="text" name="book_keyword" size=40>
      </table>
      <!-- </div> -->
      <br>
      <input type="button" value="  검색  " onclick="goSearchBookInven();">&nbsp;&nbsp;
      <input type="button" value="모두검색" onclick="goAllSearchBookInven();">
      
      <table border=0 width=700>
         <tr>
            <td align=right>
            [검색 수량] : ${bookListCnt} 권
               <select name="rowCntPerPage">
                  <option value="10">10</option>
                  <option value="15">15</option>
                  <option value="20">20</option>
                  <option value="25">25</option>
                  <option value="30">30</option>
               </select> 행보기
      </table>
      <input type="hidden" name="selectPageNo">
   </form>   

      
      <br>
   <form>
      <table class="bookTable tbcss2" border=0 cellspacing=0 cellpadding=5 width=750>
         <tr bgcolor="gray"><th>책번호<th>책이름<th>카테고리<th>출판사<th>절판여부<th>가격<th>수량<th>재고위치
         
         <c:forEach items="${requestScope.BookList}" var="book" varStatus="loopTagStatus">
          <tr style="cursor:pointer" onClick="goInvenContentForm(${book.ISBN13});">
             <td align=center>${book.ISBN13}
            <td align=center>${book.book_name}
            <td align=center>${book.cat_name}
            <td align=center>${book.publisher}
            <td align=center>${book.is_not_print}
            <td align=center>${book.book_price}
            <td align=center>${book.book_cnt}
            <td align=center>${book.branch_name}
         </c:forEach>
         <!-- <tr><td colspan=8 align=center> DB 연동 실패(아직 구현중)  -->
      </table>
		
		<br>
	

      <div>&nbsp;<span class="pagingNumber"></span>&nbsp;</div>
     
   </form>
   

</body>
</html>