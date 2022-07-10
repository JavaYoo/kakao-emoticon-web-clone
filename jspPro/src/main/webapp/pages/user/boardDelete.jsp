<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카카오 이모티콘샵</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="shortcut icon" href="https://t1.kakaocdn.net/estoreweb/favicon/e_16x16.ico" />
</head>
<body>

<div align="center">
  <h2>삭제하기</h2>
  <form method="post">
   <table>
     <tr>
       <td colspan="2" align="center"><b>글을 삭제합니다</b></td>
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
		location.href="../user/boardView.do?qa_seq=${ param.qa_seq }"
	})
</script>

</body>
</html>