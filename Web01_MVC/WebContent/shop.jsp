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
	/* String name = "guest";
	Cookie []all = request.getCookies();
	if(all != null) {
		for(Cookie c:all) {
			if (c.getName().equals("login_name")) {
				name = c.getValue();
			}
		}	
	}*/
	
	String name;
	name = (String) session.getAttribute("login_name");
	if (name == null) {
		name="guest";
	}

%>

	<h1>나의 사랑, <%= name %>님 지갑을 여세요</h1> <br>
	<a href='basketView.jsp'><%=name %>님의 장바구니 보기</a>
<hr>
	<form action="main">
	<input type="hidden" name="key" value="basketInsert">
	<table>
	<tr>	<td><img src='https://en.pimg.jp/027/815/543/1/27815543.jpg' width="200px"></td>
			<td><img src='https://littledeep.com/wp-content/uploads/2020/09/washer-illustration.png' width="200px"></td>
			<td><img src='https://i.pinimg.com/originals/65/d9/da/65d9da09b7be0772fbdf34b7d6b9b796.png' width="200px"></td>
	<tr>	<td><input type="radio" name="product" value="냉장고"></td>
			<td><input type="radio" name="product" value="세탁기"></td>
			<td><input type="radio" name="product" value="TV"></td>
	
	</table>	
	<br>
	<input type="submit" value="장바구니 넣기">
	</form>
</body>
</html>