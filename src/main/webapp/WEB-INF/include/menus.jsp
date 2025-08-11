<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
  	#menu td {
		 background : black;
		 text-align: center;
		 border-color: red;						 
		}
	#menu a { color : white;
						font-weight : bold;
	 }
</style>
 <!-- 메뉴 목록 -->
  <table id="menu">
  	<tr>
  	   <c:forEach var="menu" items="${ menuList }">
  			<td>
  				<a href="/Board/TotalList?menu_id=${menu.menu_id}">${ menu.menu_name }</a>
  			</td>	
  			</c:forEach>
  	</tr>
  	
  </table>
  
 
    
