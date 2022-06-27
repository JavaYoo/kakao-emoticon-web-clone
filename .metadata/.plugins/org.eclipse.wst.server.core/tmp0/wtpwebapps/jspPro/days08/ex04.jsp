<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2022. 6. 23. - 오전 9:45:27</title>
<link rel="shortcut icon "type = "image/x-icon" href = "../images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<h3>ex04.jsp</h3>

<%
	String name = "홍길동";
	// 4가지 스코프 저장
	request.setAttribute("xxx", name);
%>
<!-- EL -->
<c:set var="fullname" value="${ xxx }"></c:set>

> fullname = ${ fullname }<br>

<!-- fullname 변수 삭제 -->
<c:remove var="fullname"/>
> fullname = ${ fullname }<br>

<%-- 
<c:set var="fullname" value="<%=name %>"></c:set>
--%>
<%-- 
<c:set var="name" value="김길동"></c:set>
<c:set var="name" >김길동</c:set>
--%>


</pre>
     c:set var="변수명" value="값|< %=표현식% >|$ {EL}" [scope="4가지"] >< /c:set>

    == c:set> var="변수명">값< /c:set>
</pre>


<pre>
    1) 코어
        ㄱ. 변수 지원 - set, remove
        ㄴ. 흐름 제어(제어문)
            - forEach 컬렉션 맵, 처리
            - if
            - choose (like swith)
            - for Tokens (잘 사용 안함)
        ㄷ. URL 처리 - import, redirect, url
        ㄹ. 기타 - catch, out
</pre>

</body>
</html>