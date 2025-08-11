<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" type="image/ico" href="/img/favicon.ico" />
<link rel="stylesheet" href="/css/common2.css" />

<style>
td { text-align: center; }
	
	tr:first-child{
		background-color : black;
		color : white;
		font-weight : bold;
		/* SCSS 문법 (sass 문법중에 하나) */
		/* SCSS 문법 : 별도 라이브러리 필요(스프링에서 라이브러리 없이 자동적용) */
		td {
			border-color : red;
			color : white;
		}
	}
	
	#menu a { color : white;
					font-weight : bold;
					
	 }
	
	td[colspan] {text-align : right;}
	/*
	tr:first-child td {
		border-color : white;
	}
	*/
</style>

</head>
<body>
	<main>
	<!-- 메뉴 리스트 -->
	<%@include file="/WEB-INF/include/menus.jsp" %>
	
	<%-- <h2>${menu_id} 게시물 목록</h2> --%>
	<h2>${menudto.menu_name} 게시물 목록</h2>
	<%-- <h2>${param.menu_id} 게시물 목록</h2> --%>
	
  <!-- 
  <table id="menu">
  	<tr>
  	   <c:forEach var="menu" items="${ menuList }">
  			<td>
  				<a href="/Board/TotalList?menu_id=${menu.menu_id}">${ menu.menu_name }</a>
  			</td>	
  			</c:forEach>
  	</tr>
  	
  </table>
  
    <h2>${ menu_id }게시물 목록</h2>
   -->
  <hr>
  <!-- 게시물 목록 -->
		<table>
			<tr>
			 	<td>게시판 번호</td>
			 	<td>제목</td>
			 	<td>작성자</td>
			 	<td>작성 날짜</td>
			 	<td>조회수</td>
			</tr>
			
			<tr>					
				<td colspan="5">
					<a href="/Board/WriteForm?menu_id=${ menudto.menu_id }">새 게시물 추가</a>
				</td>
			</tr>
				
			
			<c:forEach var="board" items="${ boardList }">
			<tr>
				<td>${ board.idx }</td>
				<td>
					<a href="/Board/View?idx=${ board.idx }">${ board.title }</a>
				</td>
				<td>${ board.writer }</td>
				<td>${ board.regdate }</td>
				<td>${ board.hit }</td>
			</tr>
			</c:forEach> 
		</table>
		<a href="/Menus/List">메뉴목록으로 돌아가기</a>
	</main>
</body>
</html>