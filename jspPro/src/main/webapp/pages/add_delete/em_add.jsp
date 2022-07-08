<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>이모티콘 추가하기</title>
<link rel="shortcut icon"
	href="https://t1.kakaocdn.net/estoreweb/favicon/e_16x16.ico" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<link rel="stylesheet" href="../../css/em_add.css?ver=1" />

</head>
<body>

	
	<div class="emo_add">
		<div class="container">
			<div class="yellow_bnr">
				<h2 class="tit_em_add">이모티콘 추가하기</h2>
				<span class="ico_comm ico_card"></span>
			</div>


			<form action="/Kakao/pages/add_delete/em_add_ok.do" method="post" enctype="multipart/form-data">
				<div class="flexBox">
					<div class="add_name">
						<div class="list_marker"></div>
						<div class="add_list">이름</div>
					</div>
					<input type="text" class="name_check" name="name" required/>
				</div>

				<div class="flexBox">
					<div class="add_maker">
						<div class="list_marker"></div>
						<div class="add_list">제작자</div>
					</div>
					<input type="text" name="maker" required/>
				</div>

				<div class="flexBox">
					<div class="add_price">
						<div class="list_marker"></div>
						<div class="add_list">가격</div>
					</div>
					<input type="text" placeholder="2500" name="price" value="2500" required/>
				</div>
				
				<div class="flexBox">
					<div class="add_category">
						<div class="list_marker"></div>
						<div class="list_category">카테고리</div>
					</div>
					
					<div class="add_list">
						<select class="ct_sub" name="catg">
							<option value="0">카테고리 선택</option>
								<c:forEach var="catgList" items="${ catgList }">
									<option value="${ catgList.ct_sub }">${ catgList.ct_main } - ${ catgList.ct_sub }</option>
								</c:forEach>
						</select>
					</div>
				</div>
				
				
				<div class="flexBox">
					<div class="add_allImg">
						<div class="list_marker"></div>
						<div class="add_list">이모티콘 대표 이미지</div>
					</div>
					<input type="file" name="mainimg" required/>
				</div>
				
				<div class="flexBox">
					<div class="add_allImg">
						<div class="list_marker"></div>
						<div class="add_list">이모티콘 서브 이미지</div>
					</div>
					<input type="file" name="stopimg" required/>
				</div>
				
				<div class="flexBox">
					<div class="add_allImg">
						<div class="list_marker"></div>
						<div class="add_list">이모티콘 상세 이미지</div>
					</div>
					<input type="file" name="path" multiple="multiple" required/>
				</div> 
				

				<div class="em_btn">
					<div class="submit_btn">
						<input type="submit" class="em_submit" value="이모티콘 추가">
					</div>
					<div class="home_btn">
						<button class="btn_close" onclick="location.href='/Kakao/pages/home/home.do'">홈</button>
					</div>
				</div>
			</form>
			
			
			<c:if test="${ param.add eq 'success' }">
				<div class="flexBox">
					<div class="fadeOut_txt"></div>
				</div>
			</c:if>

		</div>
	</div>

<script type="text/javascript">
	$(".em_submit").on("click", function() {
		var catgValue = $(".ct_sub option:selected").val();
		if(catgValue == 0){
			alert("추가할 이모티콘의 정보를 모두 입력/선택해주세요!");
		}
	});
	
	if ($(".fadeOut_txt").length) {
		alert("추가 성공!");
	}
	
</script>


</body>
</html>