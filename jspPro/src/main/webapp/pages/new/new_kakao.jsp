<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>쌍용 이모티콘 #</title>
<link rel="shortcut icon " type = "image/x-icon" href = "SiSt.ico">
<!-- <link rel="shortcut icon" href="../assets/icons/e_16x16.ico" /> -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet" href="../../css/new/header_footer.css?ver=1">
<link rel="stylesheet" href="../../css/new/new_body.css?ver=5">
</head>
<body>
<% String ses = (String)session.getAttribute("email"); %>
<% String contextPath = request.getContextPath(); %>
	<div id="root" style="height: 100%;">
		<div id="kakaoWrap" class="">
			<div id="kakaoHead" class="emoticon_head">
				<div class="k_head">
					<button class="link_menu" id="side_open">
						<span class="ico_comm ico_menu">사이드메뉴 열기</span>
					</button>
					<a class="link_home" href="/"><span class="ico_comm ico_home">홈으로 이동</span></a>
					<h1 class="tit_logo">
						<a class="link_thome" href="/"><span class="ico_comm ico_logo">kakao emoticon shop</span></a>
						<span class="ico_comm ico_logo">kakao emoticon shop</span>
					</h1>
					<strong class="tit_cont"></strong>
					<button class="link_search">
						<span class="ico_comm ico_search">검색하기</span>
					</button>
					<button class="link_my" onclick="location.href='../login/login_kakao.do'">
						<span class="wrap_thumb"><span class="inner_thumb">
						<img class="thumb_user" 
							src="https://t1.kakaocdn.net/estoreweb/images/20220421091219/profile_default.png"
								width="28px" height="28px" alt="사용자" >
								</span>
							</span>
					</button>
				</div>
				<nav id="kakaoGnb">
					<h2 class="screen_out">kakao emoticon shop 메인메뉴</h2>
					<ul class="list_gnb">
						<li class=""><a class="link_gnb" href="/" >홈<%=ses%></a></li>
						<li class="on"><a class="link_gnb" href="/item/new">신규</a></li>
						<li class=""><a class="link_gnb" href="/item/hot">인기</a></li>
						<li class=""><a class="link_gnb" href="/item/style">스타일</a></li>
					</ul>
				</nav>
			</div>
			<div id="kakaoContent" class="cont_home">
				<div class="area_newtab">
					<div class="area_tabbnr">
						<h3 class="tit_tab">
							<img class="img_bnrtit"
								src="https://t1.kakaocdn.net/estoreweb/images/20220421091219/bnr_tit_new.png"
								alt="배너 텍스트 이미지"><img class="img_bnrbg"
								src="https://t1.kakaocdn.net/estoreweb/images/20220421091219/bnr_bg_new.png"
								alt="배너이미지">
						</h3>
					</div>
					<ul class="list_new">
						<c:forEach items="${  emap   }" var="emap" >
						<li class="new_list_hwan">
							<div class="link_new new_tit">
								<a class="link_new" href="<%=contextPath%>/pages/view/view.do?el_num=${ emap.key.el_num }">
								<div	class="area_tit">
										<strong class="tit_product">
										<span class="txt_tit">${ emap.key.el_name }</span>
										</strong><span class="txt_author">${ emap.key.el_maker }</span>
									</div></a>
								<button type="button" class="btn_grpshare">
									<span class="ico_comm ico_like">좋아요</span>
								</button>
							</div>
							<a class="link_new new_img" aria-label="예쁜 말풍선톡 5 상세"	href="<%=contextPath%>/pages/view/view.do?el_num=${ emap.key.el_num }">
							<c:forEach items="${ emap.value }"  var="emapValue" varStatus="i">
								<c:if test="${ i.index == 0 or i.index == 4 }"><ul class="area_newemoticon"></c:if>
									<li>
									<img  	src="${ emapValue.ei_path }" 
									class="<c:if test="${ i.index <= 3 }">img_emot img_default</c:if><c:if test="${ i.index > 3 }">img_emot img_hover</c:if>" alt="">
									</li>
								<c:if test="${ i.index == 3 or i.index == 7 }"></ul></c:if>
							</c:forEach>
							</a>
							</li>
							</c:forEach>
					</ul>
					<div></div>
				</div>
			</div>
			
			
			
			
			<script>

			$(document).ready(function () {
				$(".new_list_hwan").on("mouseover", function(){
					$(this).find(".img_hover").css("display", "block")
					$(this).find(".img_default").css("display", "none")
				})
				$(".new_list_hwan").on("mouseout", function(){
					$(this).find(".img_hover").css("display", "none")
					$(this).find(".img_default").css("display", "block")
				})
			});

			</script>
			
			
			<div id="kakaoFoot" class="foot_group">
				<div class="area_footer">
					<h2 class="screen_out">서비스 이용정보</h2>
					<div class="service_info">
						<a class="link_service" href="/policy" target="_blank"
							rel="noreferrer">이용약관<%= ses%></a><a class="link_service"
							href="https://billing-web.kakao.com/kbill/terms/service"
							target="_blank" rel="noreferrer">유료이용안내</a><a
							class="link_service" href="https://www.kakao.com/policy/privacy"
							target="_blank" rel="noreferrer"><strong class="dlnk_txt">개인정보처리방침</strong></a><a
							class="link_service" href="https://bizemoticon.kakao.com"
							target="_blank" rel="noreferrer">기업고객</a><a class="link_service"
							href="https://cs.kakao.com/requests?category=278&amp;locale=ko&amp;node=30555&amp;service=94"
							target="_blank" rel="noreferrer">문의하기</a><a class="link_service"
							href="http://www.ftc.go.kr/bizCommPop.do?wrkr_no=1208147521"
							target="_blank" rel="noreferrer">공정위사업자정보</a><a
							class="link_service" href="https://www.kakaocorp.com/page/"
							target="_blank" rel="noopener noreferrer"><strong
							class="dlnk_txt">(주) 카카오</strong></a>
						<p class="desc_service">카카오 이모티콘샵에서 판매되는 콘텐츠의 저작권은 콘텐츠 제공자에게
							있으며, 이를 무단 이용하는 경우 저작권법 등에 따라 처벌될 수 있습니다.</p>
					</div>
					<div class="wrap_info">
						<strong class="tit_info"><a class="link_info"
							href="https://www.kakaocorp.com/page/" target="_blank"
							rel="noopener noreferrer">(주) 카카오</a></strong>
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
						<button type="button" class="btn_movetop" onclick="location.href=''">
							<span class="ico_comm ico_movetop">위로 이동</span>
						</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>