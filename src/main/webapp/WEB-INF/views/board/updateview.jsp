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
	
	<h2>게시글 수정</h2>
	<form action="/Board/Update">
	<input type="hidden" name="idx" value="${ updateList.idx }"/>
	<input type="hidden" name="menu_id" value="${ updateList.menu_id }"/>
		<table>
			<tr>
				<td>제목</td>
				<td><input type="text" name="title" value="${ updateList.title }"/></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea name="content">${ updateList.content }</textarea></td>
			</tr>
			<td colspan="2"><input type="submit" value="등록"/></td>
		</table>
	</form>
	</main>
</body>
</html>