<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2022. 6. 16. - 오전 10:11:34</title>
<link rel="shortcut icon "type = "image/x-icon" href = "../images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<h3>ex05.jsp</h3>

<pre>
1. 리다이렉트 (redirect)
2. 포워딩 (forward)
차이점
</pre>

<%
	String name = "admin";
	int age = 20;
%>

<!-- a 태그 GET 방식 요청 -->
<!-- ex05_forward.jsp?name=admin&age=20 -->
<%-- <a href="ex05_redirect.jsp?name=<%=name%>&age=<%=age%>">리다이렉트(redirect)</a> --%>
<a href="ex05_redirect.jsp">리다이렉트(redirect)</a><br>
<a href="ex05_forward.jsp">포워딩 (forward)</a>
<!-- 
ex05.jsp
리다이렉트(redirect) 링크 클릭	 -> ex05_redirect.jsp
ex05_finish.jsp 요청				<-
										-> ex05_finish.jsp
										> name :
										> age : 
-->
<script>
	$("a").on("click",function(){
		$(this).attr("href", function (i , val){
			return val + "?name=<%=name%>&age=<%=age%>";
		})
	})
</script>

</body>
</html>








