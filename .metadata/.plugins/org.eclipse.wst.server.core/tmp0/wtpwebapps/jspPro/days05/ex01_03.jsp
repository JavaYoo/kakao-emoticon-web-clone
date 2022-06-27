<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="/error/viewErrormessage.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2022. 6. 20. - 오전 9:13:42</title>
<link rel="shortcut icon "type = "image/x-icon" href = "../images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<h3>ex01_03.jsp - 에러 페이지</h3>

<%
	// ex01_02.jsp?name=hong
	// HTTP 상태 500 - 내부 서버 오류 발생
	String pname = null;
	
	pname = request.getParameter("name").toUpperCase(); // 대문자 변환 반환 메서드
	
	
%>

> name : <%= pname %> <br>

</body>
</html>