<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.jspf" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2022. 6. 21. - 오후 12:14:50</title>
<link rel="shortcut icon "type = "image/x-icon" href = "../images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style>
 table , td, th {
   border:solid 1px gray;
 }
 table{
     border-spacing: 3px;
     border-collapse: separate;
   }
   table,  tr, td {
    /* border-radius: 3px; */
    /* padding:3px;  */
   }
 table{
    width: 600px;
 }
</style>
</head>
<body>

<h3>delete.jsp</h3>

<div align="center">
  <h2>삭제하기</h2>
  <form method="post">
   <table>
     <tr>
       <td colspan="2" align="center"><b>글을 삭제합니다</b></td>
     </tr>
     <tr>
       <td align="center">비밀번호</td>
       <td>
         <input type="password" name="pwd" size="15" autofocus="autofocus">
       </td>
     </tr>
     <tr>
       <td colspan="2" align="center">
         <input type="submit" value="삭제">&nbsp;&nbsp;
         <input type="button" id="cancel" value="취소">
       </td>
     </tr>
   </table>
  </form>
</div>

<%
	String error = (String)request.getAttribute("error");
	if(error != null){
%>
	<script>
		alert("<%=error%>");
	</script>
<%
	}
%>

<script>
	$("#cancel").on("click", function() {
		// history.go(-1)
		// 조회수 증가 + 게시글 보기
		location.href="<%=contextPath%>/cstvsboard/view.htm?seq=${ param.seq }"
	})
</script>

</body>
</html>