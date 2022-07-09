<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2022. 7. 7. - 오후 2:44:09</title>
<link rel="shortcut icon" type="image/x-icon" href="../images/SiSt.ico">


<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script> 
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>



<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<style>
	.container {
		width: 500px;
		margin: 40px auto;
		line-height: 16px;
	}
	
	h4, h5 {
		text-align: center;
	}
	
	h4 span, h5 span {
		color: black;
	}
	
	.n {
		font-size: 13px;
	}
	
	#signup {
		background-color: lightgray;
		color: black;
		border: 0;
		border-radius: 5px;
		padding: 10px 224px;
		width: 500px;
	}
	
	.bottom input {
		background-color: white;
		border: 0;
		color: teal;
		font-size: 16px;
	}
	
	i {
		color: lightgray;
	}
	
	#imail {
		position: absolute;
		top: 155px;
		margin: 0 470px;
	}
	
	#ipw {
		position: absolute;
		top: 205px;
		margin: 0 470px;
	}
	
	#iperson2 {
		position: absolute;
		top: 254px;
		margin: 0 470px;
	}
	
	input {
		border: 1px solid lightgray;
		border-radius: 3px;
	}
	
	.ui-widget-header{
		background-color: #fee500;
		height: 30px;
	}
	
	#ui-id-1{
		height: 30px;
		line-height: 30px
	}
</style>
</head>

<body>
	
	
<div id="btnModalDelete">회원가입</div>




	
<div id="dialog-form" align="center" title="kakaoemoticon 회원 가입">

  <div class="container">
		<div id="imail">
			<i class="material-icons">person_outline</i>
		</div>
		<div id="iperson2">
			<i class="material-icons">person_outline</i>
		</div>
		<div id="ipw">
			<i class="material-icons">lock_outline</i>
		</div>
		<h4>
			<span>가입을 시작합니다!</span>
		</h4>
		<h5>
			<span>카카오계정 하나로 다양한 서비스를 편리하게 이용해 보세요!</span>
		</h5>
		<hr>
		<br>
		<form action="/jspPro/kakaoemoticon/signup.do" method="post" id="form_signUp">
			<input type="email" placeholder=" 이메일" name="id" id="m_id" required style="height: 30px; width: 495px" />
			<br>
			<br>
			<input type="password" placeholder=" 비밀번호" id="m_pwd" name="pwd" required style="height: 30px; width: 495px" />
			<br>
			<br>
			<input type="text" placeholder=" 이름" id="m_name" name="name" required style="height: 30px; width: 495px" />
			<br>
			<br>
			<p>
				<input type="button" value="가입하기" id="signup" onclick="emailCheck();" />
				<br>
				<br>
			</p>
		</form>
		<hr>
	</div>
  
</div>
	
	
<script>
  dialog = $("#dialog-form").dialog({
     autoOpen: false,
      height: 495,
      width: 600,
      modal: true,
      buttons:{},
      close: function (){
         form[0].reset();
      }
  });
  
  form = dialog.find("form");
  
  $("#btnModalDelete").on("click", function(event) {
     dialog.dialog("open" ); 
  })
  
  $("#cancel").on("click", function(event) {
     dialog.dialog("close" ); 
  })
</script>


<script>
	function emailCheck() {
         var params = {
            m_id : $("#m_id").val()
         };

         if( $("#m_id").val() != "" && $("#m_pwd").val() != "" && $("#m_name").val() != "" ){
        	      	 
	         $.ajax({
	            url : "/jspPro/kakaoemoticon/emailcheck.do",
	            dataType : "json",
	            type : "GET",
	            data : params,
	            cache : false,
	            success : function(data, textStatus, jqXHR) {
	               if (data.count == 0) {
	                  //이메일 사용가능
	                  $("#form_signUp").submit();
	               }
	
	               else {
	                  //이메일 중복
	                  alert("가입된 이메일이 있습니다.")
	                  $("#form_signUp")[0].reset();
	               }
	
	            },
	            error : function() {
	               alert("ajax 에러");
	            }
	         });
         
         } else{
        	 alert("모든 정보를 입력해주세요.");
        	 $("#form_signUp")[0].reset();
         } // if
         
      } // emailCheck()
</script>


<script>
  $("#m_id, #m_pwd, #m_name").on("keyup",function(){
	  if ( $("#m_id").val() != "" && $("#m_pwd").val() != "" && $("#m_name").val() != "" ){
		  $("#signup").css("background-color","#fee500");
	  } else {
		  $("#signup").css("background-color","lightgray");
	  }
  });
</script>
	
</body>

</html>