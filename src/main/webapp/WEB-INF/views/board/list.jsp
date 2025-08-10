<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BoardList</title>

</head>
<body>
	<main>
		<table>
			<tr>
			 	<th>게시판 번호</th>
			 	<th>메뉴 이름</th>
			 	<th>제목</th>
			 	<th>내용</th>
			 	<th>글쓴이</th>
			 	<th>작성 날짜</th>
			 	<th>좋아요</th>
			</tr>
			<c:forEach var="board" items="${ boardList }">
			<tr>
				<td>${ board.idx }</td>
				<td>${ board.menu_id }</td>
				<td>${ board.title }</td>
				<td>${ board.content }</td>
				<td>${ board.writer }</td>
				<td>${ board.regdate }</td>
				<td>${ board.hit }</td>
			</tr>
			</c:forEach> 
		</table>
	</main>
</body>
</html>





