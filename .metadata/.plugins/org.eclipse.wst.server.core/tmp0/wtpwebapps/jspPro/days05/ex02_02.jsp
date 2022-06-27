<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.jspf" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2022. 6. 20. - 오전 10:41:48</title>
<link rel="shortcut icon" type="image/x-icon" href="../images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<h3>ex02_02.jsp - 차이점 </h3>


<%--  top.jsp
           id 변수 인식 X
<%= id %>
 --%>
 <%-- 
<pre>include 액션태그 - </pre>
<jsp:include page="/layout/top.jsp"></jsp:include>
 --%>
 
 
<pre>include 지시자 - <%= id %></pre>
<%@ include file="/layout/top.jsp" %>

<br>
contextPaht = <%= contextPath %><br>

</body>
</html>