<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String id = (String)session.getAttribute("id");
	System.out.println(id+"의 세션: \t"+session.getId());
%>

${name } 님 안녕하세요.  <br>
<a href='login_index.jsp'>홈으로 이동</a> <br> 

<form action="main" method="get">
<input type="hidden" name="signal" value="logout">
<input type="submit" value="로그아웃">
</form>
</body>
</html>