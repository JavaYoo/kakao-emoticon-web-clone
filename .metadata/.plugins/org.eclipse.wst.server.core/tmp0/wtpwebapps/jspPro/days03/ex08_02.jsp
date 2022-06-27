<%@page import="java.util.Enumeration"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2022. 6. 16. - 오후 4:01:01</title>
<link rel="shortcut icon "type = "image/x-icon" href = "../images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<h3>ex08_02.jsp</h3>
<%-- 
<%
String name = request.getParameter("name");
String age = request.getParameter("age") ;
%>
--%>
<form action="ex08_03.jsp" method="get">
    address : <input type="text" name="address" value="서울 역삼동"><br>
    tel : <input type="text" name="tel" value="010-0000-0000"><br>
    <input type="button" value="Prev" onclick="history.back();">
    <input type="submit" value="Next">
</form>


<!-- 쿠키 - 세션 -->
<%-- 
<input type="hidden" name="name" value="<%=name%>">
<input type="hidden" name="age" value="<%=age%>">
--%>

<script>
      <%
         Enumeration<String> en =  request.getParameterNames();
         while( en.hasMoreElements() ){
             String pname = en.nextElement();
             String pvalue = request.getParameter(pname);
        %>
        $("form").append("<input type='hidden' name='<%= pname %>' value='<%= pvalue %>'>");
        <%
         }
      %>
</script>



</body>
</html>