<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2022. 6. 22. - 오후 12:30:16</title>
<link rel="shortcut icon "type = "image/x-icon" href = "../images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<h3>ex05_02.jsp - JSP 4가지 영역( Scope ) 이해 및 활용</h3>

X job  : <%=pageContext.getAttribute("job") %><br>
O deptno : <%=session.getAttribute("deptno") %><br>
X empno : <%=request.getAttribute("empno") %><br>
O dbcp : <%=application.getAttribute("dbcp") %><br>

<pre>
	1. 세션 언제 종료 ?
		- 웹 브라우저 종료 ( 닫기 )
		- 웹 브라우저 열기 + 요청 / 응답 X -> 자동 종료 
		  세션 20분 후에 종료된다..
		- 강제 세션 종료 == session.invalidate();
	2. 세션 유효 시간
		- 마지막 요청 / 응답 있은 후 20분 유효 시간.
		- web.xml 설정
</pre>

</body>
</html>