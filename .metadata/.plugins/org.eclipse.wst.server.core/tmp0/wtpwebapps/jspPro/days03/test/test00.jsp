<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2022. 6. 16. - 오후 4:47:00</title>
<link rel="shortcut icon "type = "image/x-icon" href = "../images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<h3>test/test00.jsp</h3>

<a href="<%= contextPath %>/test/test00.htm">test00.html</a>
<br>
<br>
<br>
<br>
<br>
<br>
<pre>
	[ JSTL ]
	/test/test00.htm -> 서블릿 호출 TestDeptEmp.java -> test01.jsp
								doGet(){
									포워딩 test01.jsp
								}
								
</pre>





</body>
</html>