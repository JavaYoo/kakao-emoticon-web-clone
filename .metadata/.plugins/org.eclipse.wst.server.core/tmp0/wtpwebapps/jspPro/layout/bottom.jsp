<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String msg = request.getParameter("msg");
%>
<div style="border: 1px solid gray;height: 100px;text-align: cneter;">
    <h3>홍길동 웹사이트 BOTTOM 소개 -  <%=msg%></h3>
</div>