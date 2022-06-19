<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2022. 6. 17. - 오후 4:26:26</title>
<link rel="shortcut icon "type = "image/x-icon" href = "../images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<h3>ex06.jsp</h3>

a name : <%= application.getAttribute("name") %><br>
s age : <%= session.getAttribute("age") %><br>
r addr : <%= request.getAttribute("addr") %><br>
p color : <%= pageContext.getAttribute("color") %><br>

<pre>
	p 132 JSP 기본 객체와 4가지 영역 ( Scope )
	
	1. application scope : 웹 사이트 전체 사용되는 영역 
	2. session scope      : 하나의 브라우저 사용되는 영역                  세션 수업
	3. request scope     : 하나의 요청 처리할 때 사용되는 영역
	4. page scope         : 하나의 jsp 페이지 처리할 때 사용되는 영역
                                         ex01.jsp  바뀌면 사라짐
                                         ex02.jsp
	
	.setAttribute();
	.getAttribute();
	.getAttributeNames();      X
	removeAttribute(name);   X
	
	1   >   2   >   3   >   4
	
	ex06_02.jsp
	ex06_03.jsp
	ex06_04.jsp
	
</pre>



</body>
</html>








