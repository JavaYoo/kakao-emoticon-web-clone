<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2022. 6. 17. - 오후 3:18:47</title>
<link rel="shortcut icon "type = "image/x-icon" href = "../images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<h3>ex05_03.jsp</h3>

<pre>
JSP 기본 객체 9가지 - request, response, out

[ pageContext ] - JSP 페이지에 대한 정보 저장객체
1. JSP 페이지의 기본 객체 얻어올 수 있다 - request, response, out 등등
2. 속성 처리 가능
3. 페이지 흐름 제어( 7장 )
4. 에러 데이터 구할 수 있다 ( 6장 )
</pre>

<%
	// 스크립트릿
	// request.getParameter("name");
	//	pageContext.getRequest().getParameter("name");
	
	// pageContext.getResponse();
	// pageContext.getOut();
	// pageContext.getSesstion();
	// 등등
%>

<%= request == pageContext.getRequest() %>

</body>
</html>