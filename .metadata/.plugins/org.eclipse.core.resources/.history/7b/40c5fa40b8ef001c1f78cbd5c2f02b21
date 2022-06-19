<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2022. 6. 17. - 오전 10:39:46</title>
<link rel="shortcut icon "type = "image/x-icon" href = "../images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<h3>ex01_finish.jsp</h3>

<%
	String [] empnos = request.getParameterValues("empno");
	for(int i = 0 ; i < empnos.length; i++){
%>
	<li><%=empnos[i] %></li>
<%		
	}
%>

<hr>
<!-- JSTL + EL -->
<!-- 변수 선언 -->
<c:set var="length" value="<%= empnos.length %>"></c:set>
<c:forEach var="i" begin="0" end="${ length-1 }" step="1">
	<li>${ paramValues.empno[i] }</li>
</c:forEach>


</body>
</html>