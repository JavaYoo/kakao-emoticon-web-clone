<%@page import="java.text.DecimalFormat"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2022. 6. 22. - 오후 3:47:32</title>
<link rel="shortcut icon "type = "image/x-icon" href = "../images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<h3>ex09_03.jsp</h3>

<%
	long price = 22345;
	// JSP 4가지 영역
	request.setAttribute("price", price);
%>

price = <%= price %><br>
price = ${ price }<br>

<pre>
	단가를 세 자리마다 콤마를 찍어서 출력...
	22,345
</pre>

price = <%= String.format("%,d", price) %><br>

<%
	DecimalFormat df = new DecimalFormat("###,###");
	String str = df.format(price);
%>
price = <%= str %><br>

price = <fmt:formatNumber value="${ price }" pattern="#,###"></fmt:formatNumber> <br>



</body>
</html>