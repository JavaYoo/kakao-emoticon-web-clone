<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카카오 이모티콘샵</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="shortcut icon" href="https://t1.kakaocdn.net/estoreweb/favicon/e_16x16.ico" />
<link rel="stylesheet" href="../../css/faq/faq.css">
<link rel="stylesheet" href="../../css/header/header.css">

<style>
a {
	text-decoration: none;
	color: black;
}

table, tr, td {
	border-radius: 3px;
}
</style>
</head>
<body>
	<div id="kakaoIndex"
		style="overflow: hidden; position: absolute; left: -9999px; width: 0; height: 1px; margin: 0; padding: 0;">
		<a href="#dkBody">본문 바로가기</a> <a href="#dkGnb">메뉴 바로가기</a>
	</div>
	<div id="root" style="height: 100%;">
		<div id="kakaoWrap" class="default head_etc">
			<div id="kakaoHead" class="emoticon_head">
				<div class="k_head">
					<button class="link_menu" id="side_open">
						<span class="ico_comm ico_menu">사이드메뉴 열기</span>
					</button>
					<a class="link_home" href="/"> <span class="ico_comm ico_home">홈으로
							이동</span>
					</a>
					<h1 class="tit_logo">
						<a class="link_thome" href="/"> <span
							class="ico_comm ico_logo">kakao emoticon shop</span>
						</a> <span class="ico_comm ico_logo">kakao emoticon shop</span>
					</h1>
					<strong class="tit_cont"></strong>
					<button class="link_search">
						<span class="ico_comm ico_search">검색하기</span>
					</button>
					<button class="link_my">
						<span class="wrap_thumb"> <span class="inner_thumb"><img
								class="thumb_user"
								src="https://t1.kakaocdn.net/estoreweb/images/20220421091219/profile_default.png"
								width="28px" height="28px" alt="사용자"></span>
						</span>
					</button>
				</div>
				<nav id="kakaoGnb">
					<h2 class="screen_out">kakao emoticon shop 메인메뉴</h2>
					<ul class="list_gnb">
						<li class=""><a class="link_gnb" href="/">홈</a></li>
						<li class=""><a class="link_gnb" href="/item/new">신규</a></li>
						<li class=""><a class="link_gnb" href="/item/hot">인기</a></li>
						<li class=""><a class="link_gnb" href="/item/style">스타일</a></li>
					</ul>
				</nav>
			</div>
			<br> <br> <br> <br> <br> <br> <br>
			<br> <br>

			<h3 style="text-align: center">문의하기</h3>
			<form method="post" action="">
				<table width="800px" style="margin: 50px auto" border="1">
					<tr style="background-color: gray">
						<td colspan="2" align="right"><a href="../user/board.do"
							style="color: white">글목록</a></td>
					</tr>
					<tr>
						<td width="70" align="center">제목</td>
						<td width="330"><input type="text" name="qa_title" size="30"
							value='<c:if test="${ not empty param.qa_ref }">[답글]</c:if>'>
						</td>
					</tr>
					<tr>
						<td width="70" align="center">문의 분류</td>
						<td width="330"><input type="text" name="qa_class" size="30">
						</td>
					</tr>

					<tr>
						<td width="70" align="center">작성자</td>
						<td width="330"><input type="text" name="qa_id" size="30">
						</td>
					</tr>
					<tr>
						<td width="70" align="center">내용</td>
						<td width="330"><textarea rows="13" cols="95"
								name="qa_content"></textarea></td>
					</tr>
					<tr>
						<td align="center">공개여부</td>
						<td><input type="radio" name="qa_lock" value="1" checked>공개
							<input type="radio" name="qa_lock" value="0">비공개</td>
					</tr>
					<tr style="background-color: gray">
						<td colspan="2" align="center"><input type="submit"
							value="글쓰기"> <input type="reset" value="새작성"></td>
					</tr>
				</table>
			</form>
			<br> <br> <br> <br> <br> <br>
			<div id="kakaoFoot" class="foot_group ">
				<div class="area_footer">
					<h2 class="screen_out">서비스 이용정보</h2>
					<div class="service_info">
						<a class="link_service" href="/policy" target="_blank"
							rel="noreferrer">이용약관</a> <a class="link_service"
							href="https://billing-web.kakao.com/kbill/terms/service"
							target="_blank" rel="noreferrer">유료이용안내</a> <a
							class="link_service" href="https://www.kakao.com/policy/privacy"
							target="_blank" rel="noreferrer"> <strong class="dlnk_txt">개인정보처리방침</strong>
						</a> <a class="link_service" href="https://bizemoticon.kakao.com"
							target="_blank" rel="noreferrer">기업고객</a> <a class="link_service"
							href="https://cs.kakao.com/requests?category=278&amp;locale=ko&amp;node=30555&amp;service=94"
							target="_blank" rel="noreferrer">문의하기</a> <a class="link_service"
							href="http://www.ftc.go.kr/bizCommPop.do?wrkr_no=1208147521"
							target="_blank" rel="noreferrer">공정위사업자정보</a> <a
							class="link_service" href="https://www.kakaocorp.com/page/"
							target="_blank" rel="noopener noreferrer"> <strong
							class="dlnk_txt">(주) 카카오</strong>
						</a>
						<p class="desc_service">카카오 이모티콘샵에서 판매되는 콘텐츠의 저작권은 콘텐츠 제공자에게
							있으며, 이를 무단 이용하는 경우 저작권법 등에 따라 처벌될 수 있습니다.</p>
					</div>
					<div class="wrap_info">
						<strong class="tit_info"> <a class="link_info"
							href="https://www.kakaocorp.com/page/" target="_blank"
							rel="noopener noreferrer">(주) 카카오</a>
						</strong>
						<dl class="list_info">
							<div class="unit_info">
								<dt>대표</dt>
								<dd>남궁훈</dd>
								<dt>사업자등록번호</dt>
								<dd>
									<span class="txt_en">120-81-47521</span>
								</dd>
							</div>
							<div class="unit_info">
								<dt>통신판매업신고번호</dt>
								<dd>제2015-제주아라-0032호</dd>
							</div>
						</dl>
						<dl class="list_info">
							<div class="unit_info">
								<dt>주소</dt>
								<dd>
									제주특별자치도 제주시 첨단로 <span class="txt_en">242</span>(영평동)
								</dd>
							</div>
							<div class="unit_info">
								<dt>호스팅사업자</dt>
								<dd>(주)카카오</dd>
								<dt>고객센터</dt>
								<dd>
									<span class="txt_en">1577-3754</span>
								</dd>
							</div>
							<div class="unit_info">
								<dt>메일</dt>
								<dd>
									<span class="txt_en">help.notice@kakaocorp.com</span>
								</dd>
							</div>
						</dl>
					</div>
					<div class="area_movetop">
						<button type="button" class="btn_movetop">
							<span class="ico_comm ico_movetop">위로 이동</span>
						</button>
					</div>
				</div>
			</div>
</body>
</html>