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
<link rel="stylesheet" href="header_footer.css?ver=1">
<link rel="stylesheet" href="new_body.css">
</head>
<body>

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
					<button class="link_my">
						<span class="wrap_thumb"><span class="inner_thumb">
						<img class="thumb_user" 
							src="https://t1.kakaocdn.net/estoreweb/images/20220421091219/profile_default.png"
								width="28px" height="28px" alt="사용자">
								</span>
							</span>
					</button>
				</div>
				<nav id="kakaoGnb">
					<h2 class="screen_out">kakao emoticon shop 메인메뉴</h2>
					<ul class="list_gnb">
						<li class=""><a class="link_gnb" href="/">홈</a></li>
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
					<c:forEach items="${elist}" var="elist" >
						<li class="">
							<div class="link_new new_tit">
								<a class="link_new" href="/t/cute-and-kind-bubble-ver-6">
								<div	class="area_tit">
										<strong class="tit_product">
										<span class="txt_tit">${ elist.el_name }</span>
										</strong><span class="txt_author">${ elist.el_maker }</span>
									</div></a>
								<button type="button" class="btn_grpshare">
									<span class="ico_comm ico_like">좋아요</span>
								</button>
							</div>
							<a class="link_new new_img" aria-label="예쁜 말풍선톡 5 상세"	href="/t/cute-and-kind-bubble-ver-6">
							<ul class="area_newemoticon">
									<li>
									<img
										src="https://item.kakaocdn.net/do/008c15e6e103ac630f630d2e1fc6deed8f324a0b9c48f77dbce3a43bd11ce785"
										class="img_emot img_default" alt="">
										<img
										src="https://item.kakaocdn.net/do/008c15e6e103ac630f630d2e1fc6deed15b3f4e3c2033bfd702a321ec6eda72c"
										class="img_emot img_hover" alt="">
										</li>
									<li><img
										src="https://item.kakaocdn.net/do/008c15e6e103ac630f630d2e1fc6deedf604e7b0e6900f9ac53a43965300eb9a"
										class="img_emot img_default" alt="">
										<img
										src="https://item.kakaocdn.net/do/008c15e6e103ac630f630d2e1fc6deed4022de826f725e10df604bf1b9725cfd"
										class="img_emot img_hover" alt="">
										</li>
									<li><img
										src="https://item.kakaocdn.net/do/008c15e6e103ac630f630d2e1fc6deed9f5287469802eca457586a25a096fd31"
										class="img_emot img_default" alt="">
										<img
										src="https://item.kakaocdn.net/do/008c15e6e103ac630f630d2e1fc6deed8b566dca82634c93f811198148a26065"
										class="img_emot img_hover" alt="">
										</li>
									<li>
									<img
										src="https://item.kakaocdn.net/do/008c15e6e103ac630f630d2e1fc6deed9f17e489affba0627eb1eb39695f93dd"
										class="img_emot img_default" alt="">
										<img
										src="https://item.kakaocdn.net/do/008c15e6e103ac630f630d2e1fc6deed82f3bd8c9735553d03f6f982e10ebe70"
										class="img_emot img_hover" alt="">
										</li>
								</ul>
								</a>
								</li>
								</c:forEach>
					</ul>
					<div></div>
				</div>
			</div>
			
			
			<div id="kakaoFoot" class="foot_group ">
				<div class="area_footer">
					<h2 class="screen_out">서비스 이용정보</h2>
					<div class="service_info">
						<a class="link_service" href="/policy" target="_blank"
							rel="noreferrer">이용약관</a><a class="link_service"
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
						<button type="button" class="btn_movetop">
							<span class="ico_comm ico_movetop">위로 이동</span>
						</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>