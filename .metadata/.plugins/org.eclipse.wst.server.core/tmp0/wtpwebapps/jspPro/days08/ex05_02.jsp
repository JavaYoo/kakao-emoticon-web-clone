<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2022. 6. 23. - 오전 10:24:25</title>
<link rel="shortcut icon "type = "image/x-icon" href = "../images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<h3>ex05_02.jsp</h3>

<pre>
	choose == switch 문
	텍스트 박스가 1개일 경우에는 입력한 후 엔터를 치면 서브밋 된다.
</pre>

<form>
	국어 : <input type="text" name="kor">
</form>

<!-- ?kor=20 -->
<c:set value="${ param.kor }" var="kor"></c:set>

<c:choose>
	<c:when test="${ kor >= 90 && kor <= 100 }">수</c:when>
	<c:when test="${ kor >= 80 && kor < 90 }">우</c:when>
	<c:otherwise>가</c:otherwise>
</c:choose>

<%-- 
<c:if test="${ kor >= 90 && kor <= 100 }">수</c:if>
<c:if test="${ kor >= 80 && kor < 90 }">우</c:if>
<c:if test="${ kor >= 90 && kor <= 100 }">미</c:if>
<c:if test="${ kor >= 90 && kor <= 100 }">양</c:if>
<c:if test="${ kor >= 90 && kor <= 100 }">가</c:if>
--%>

</body>
</html>