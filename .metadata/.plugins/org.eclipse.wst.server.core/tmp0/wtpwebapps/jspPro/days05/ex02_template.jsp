<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2022. 6. 20. - 오전 10:31:15</title>
<link rel="shortcut icon" type="image/x-icon" href="../images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<h3>ex02_template.jsp</h3>

<div style="text-align: center">
  <table width="600" border="1" align="center">
     <tr>
       <td colspan="3">
          <!-- 
          flush 속성  : 출력 버퍼에 담겨 있는 응다데이터 -> 클라이언트 전송하고 출력 버퍼 비우겠다. 
           -->
          <jsp:include page="/layout/top.jsp" flush="false"></jsp:include>
       </td>
     </tr>
     <tr height="300">
       <td width="150" valign="top" style="background: yellow"><jsp:include page="/days05/layout/left.jsp"></jsp:include></td>
       <td>
          <a href="ex02_memberAdd.jsp">회원 추가</a><br>
          회원 관리 Content 부분<br>
          회원 관리 Content 부분<br>
          회원 관리 Content 부분<br>
          회원 관리 Content 부분<br>
          회원 관리 Content 부분<br>
       </td>
       <td valign="top" style="background: red"><jsp:include page="/days05/layout/right.jsp"></jsp:include></td>       
     </tr>
     <tr>
        <td colspan="3">
           <!-- 
           include 액션태그로   bottom.jsp           페이지를 포함하면서 
           msg 파라미터를 넘겨 주고 싶다면
            --> 
          <jsp:include page="/layout/bottom.jsp">
            <jsp:param value="hi~~~~~" name="msg"/>
          </jsp:include>
       </td>
     </tr>     
  </table>
</div>

</body>
</html>