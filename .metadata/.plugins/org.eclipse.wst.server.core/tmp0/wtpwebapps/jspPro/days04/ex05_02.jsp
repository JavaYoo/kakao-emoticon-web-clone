<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
buffer="8kb" autoFlush="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2022. 6. 17. - 오후 3:08:43</title>
<link rel="shortcut icon "type = "image/x-icon" href = "../images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<h3>ex05_02.jsp</h3>

<pre>
	JSP 9가지 기본객체 - request, response
	out 출력 스트림
	
	out.append()
	out.print();
	
	<%
	out.flush();
	%>
	out.println(); + "\r\n" <br>
	out.newLine();
	
</pre>
[ out 객체의 버퍼와 관련된 메서드 ]<br>

버퍼 크기 : <%= out.getBufferSize() %> kb == buffer="8kb"<br>
<%
	// 스크립트릿
	out.clearBuffer(); 
%>
남은버퍼크기 : <%= out.getRemaining() %><br>
autoflush : <%= out.isAutoFlush() %><br>

</body>
</html>