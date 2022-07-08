<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>이모티콘 삭제하기</title>
<link rel="shortcut icon"
	href="https://t1.kakaocdn.net/estoreweb/favicon/e_16x16.ico" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<link rel="stylesheet" href="../../css/add_delete/em_delete.css" />

</head>
<body>

	
	<div class="emo_delete">
		<div class="container">
			<div class="yellow_bnr">
				<h2 class="tit_em_delete">이모티콘 삭제하기</h2>
				<span class="ico_comm ico_card"></span>
			</div>
			
			<form class="del_form" action="/jspPro/pages/add_delete/em_delete_ok.do?del=">
				<div class="flexBox">
					<div class="delete_name">
						<div class="list_marker"></div>
						<div class="delete_list">이름</div>
					</div>
					<select class="em_delete" name="del">
						<option value="0">삭제할 이모티콘 선택</option>
						<c:forEach var="deleteList" items="${ deleteList }">
							<option value="${ deleteList.el_num },${ deleteList.el_name }">${ deleteList.el_name }</option>
						</c:forEach>
					</select>
				</div>

				<div class="em_btn">
					<div class="submit_btn">
						<input type="submit" class="em_submit" value="이모티콘 삭제">
					</div>
					<div class="home_btn">
						<button class="btn_close" onclick="location.href='../home/home.do'">홈</button>
					</div>
				</div>
			</form>
			
			<c:if test="${ param.del eq 'success' }">
				<div class="flexBox">
					<div class="fadeOut_txt"></div>
				</div>
			</c:if>
		</div>
	</div>
	
	

	

<script type="text/javascript">
	$(".em_submit").on("click", function() {
		var value = $(".em_delete option:selected").val();
		if(value == 0){
			alert("삭제할 이모티콘을 선택해주세요!");
		}
	});
	
	if ($(".fadeOut_txt").length) {
		alert("삭제 성공!");
	}
	
	
</script>

</body>
</html>