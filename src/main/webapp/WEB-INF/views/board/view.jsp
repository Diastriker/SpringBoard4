<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" type="image/ico" href="/img/favicon.ico" />
<link rel="stylesheet" href="/css/common2.css" />

</head>
<body>
	<main>

	<%@include file="/WEB-INF/include/menus.jsp" %>
	
	<h2>게시글 내용</h2>
	
		<table>
			<tr>
				<td>제목</td>
				<td>${ boardList.title }</td>
			</tr>
			<tr>
				<td>작성자</td>
				<td>${ boardList.writer }</td>
			</tr>
			<tr>
				<td>게시 날짜</td>
				<td>${ boardList.regdate }</td>
			</tr>
			<tr>
				<td>조회수</td>
				<td>${ boardList.hit }</td>
			</tr>
			<tr>
				<td>내용</td>
				<td>${ boardList.content }</td>
			</tr>
		</table>
		<h3><a href="/Board/DelView?writer=${ boardList.writer }&menu_id=${ boardList.menu_id }">게시글 삭제하기</a></h3>
		<h3><a href="/Board/UpdateForm">게시글 수정하기</a></h3>
	</main>
</body>
</html>