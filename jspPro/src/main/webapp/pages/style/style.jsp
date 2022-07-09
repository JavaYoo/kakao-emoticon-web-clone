<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>카카오 이모티콘샵</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<link rel="shortcut icon" href="../images/e_16x16.ico" />
<link rel="stylesheet" href="style.css" />

</head>
<body>

<div id="root" style="height: 100%;">
	<div id="kakaoWrap" class="">
		<div id="kakaoHead" class="emoticon_head">
			<div class="k_head">
				<button class="link_menu" id="side_open">
					<span class="ico_comm ico_menu">사이드메뉴 열기</span>
				</button>
				<a class="link_home" href="/"><span class="ico_comm ico_home">홈으로
						이동</span></a>
				<h1 class="tit_logo">
					<a class="link_thome" href="/"><span class="ico_comm ico_logo">kakao
							emoticon shop</span></a><span class="ico_comm ico_logo">kakao
						emoticon shop</span>
				</h1>
				<strong class="tit_cont"></strong>
				<button class="link_search">
					<span class="ico_comm ico_search">검색하기</span>
				</button>
				<button class="link_my">
					<span class="wrap_thumb"><span class="inner_thumb"><img
							class="thumb_user"
							src="https://t1.kakaocdn.net/estoreweb/images/20220421091219/profile_default.png"
							width="28px" height="28px" alt="사용자"></span></span>
				</button>
			</div>
			<nav id="kakaoGnb">
				<h2 class="screen_out">kakao emoticon shop 메인메뉴</h2>
				<ul class="list_gnb">
					<li class=""><a class="link_gnb" href="/jspPro/pages/home.do">홈</a></li>
					<li class=""><a class="link_gnb" href="/item/new">신규</a></li>
					<li class=""><a class="link_gnb" href="/item/hot">인기</a></li>
					<li class="on"><a class="link_gnb" href="/jspPro/pages/style.do">스타일</a></li>
				</ul>
			</nav>
		</div>
		<div id="kakaoContent" class="cont_home">
			<div class="area_styletab">
				<div class="area_tabbnr">
					<h3 class="tit_tab">
						<img class="img_bnrtit"
							src="https://t1.kakaocdn.net/estoreweb/images/20220421091219/bnr_tit_style.png"
							alt="배너 텍스트 이미지"><img class="img_bnrbg"
							src="https://t1.kakaocdn.net/estoreweb/images/20220421091219/bnr_bg_style.png"
							alt="배너이미지">
					</h3>
				</div>
				<div class="area_hashall">
					<ul class="list_hashall">
						<li>
							<a class="link_hash" href="/jspPro/pages/category.do?ct_main=인기 이모티콘 시리즈&ec_sub=전체" style="color: rgb(249, 117, 117);">인기 이모티콘 시리즈</a>
						</li>
						<li>
							<a class="link_hash" href="/jspPro/pages/category.do?ct_main=MD추천&ec_sub=전체" style="color: rgb(99, 202, 133);">MD추천</a>
						</li>
						<li>
							<a class="link_hash" href="/jspPro/pages/category.do?ct_main=선물하기 좋은&ec_sub=전체" style="color: rgb(245, 159, 196);">선물하기 좋은</a>
						</li>
						<li>
							<a class="link_hash" href="/jspPro/pages/category.do?ct_main=재밌는&ec_sub=전체" style="color: rgb(112, 203, 200);">재밌는</a>
						</li>
						<li>
							<a class="link_hash" href="/jspPro/pages/category.do?ct_main=귀여운&ec_sub=전체" style="color: rgb(246, 154, 154);">귀여운</a>
						</li>
						<li>
							<a class="link_hash" href="/jspPro/pages/category.do?ct_main=메시지&ec_sub=전체" style="color: rgb(158, 160, 237);">메시지</a>
						</li>
						<li>
							<a class="link_hash" href="/jspPro/pages/category.do?ct_main=일러스트&ec_sub=전체" style="color: rgb(144, 199, 100);">일러스트</a>
						</li>
						<li>
							<a class="link_hash" href="/jspPro/pages/category.do?ct_main=카카오 공식&ec_sub=전체" style="color: rgb(244, 196, 0);">카카오 공식</a>
						</li>
						<li>
							<a class="link_hash" href="/jspPro/pages/category.do?ct_main=스타/인플루언서/캐릭터&ec_sub=전체" style="color: rgb(110, 178, 228);">스타/인플루언서/캐릭터</a>
						</li>
						<li>
							<a class="link_hash" href="/jspPro/pages/category.do?ct_main=동물&ec_sub=전체" style="color: rgb(254, 163, 92);">동물</a>
						</li>
						<li>
							<a class="link_hash" href="/jspPro/pages/category.do?ct_main=큰이모티콘&ec_sub=전체" style="color: rgb(204, 163, 145);">큰이모티콘</a>
						</li>
					</ul>
				</div>


				<c:if test="${ not empty catgList }">
					<c:forEach items="${ catgList }" var="CatgDTO">
						<div class="box_style">
							<a class="link_tit" href="/jspPro/pages/category.do?ct_main=${ CatgDTO.ct_main }&ec_sub=전체">
								<strong class="tit_style">#${ CatgDTO.ct_main }</strong><span class="ico_comm ico_stylemore">더보기</span>
							</a>
							<ul class="list_style" style="transform: translate(0px, 0px);">
							<c:if test="${ not empty ecatgCatgList }">
								<c:set var="cnt" value="0"></c:set>
								<c:forEach items="${ ecatgCatgList }" var="EcatgCatgDTO">
									<c:if test="${ (CatgDTO.ct_main eq EcatgCatgDTO.ct_main) and cnt <= 3 }">
										<c:set var="cnt" value="${ cnt + 1 }"></c:set>
										<li>
											<a class="link_style" href="/jspPro/pages/category.do?ct_main=${ CatgDTO.ct_main }&ec_sub=${ EcatgCatgDTO.ec_sub }">
												<span class="txt_hash">#${ EcatgCatgDTO.ec_sub }</span>  
												<ul class="list_linkstyle">
												<c:if test="${ not empty elistEcatgList }">
													<c:set var="cnt2" value="0"></c:set>
													<c:forEach items="${ elistEcatgList }" var="ElistEcatgDTO">
														<c:if test="${ (EcatgCatgDTO.ec_sub eq ElistEcatgDTO.ec_sub) and cnt2 <= 3 }">
														<c:set var="cnt2" value="${ cnt2 + 1 }"></c:set>
															<li>
																<img class="img_linkstyle" src="${ ElistEcatgDTO.el_stopimg }" alt="">
															</li>
														</c:if>
													</c:forEach>
												</c:if>
												</ul>
											</a>
										</li>
									</c:if>
								</c:forEach>
							</c:if>
							</ul>
						</div>
					</c:forEach>
				</c:if>
				
				
			</div>
		</div>
		
		

		<!-- footer -->
		<div id="kakaoFoot" class="foot_group ">
			<div class="area_footer">
				<h2 class="screen_out">서비스 이용정보</h2>
				<div class="service_info">
					<a class="link_service" href="https://e.kakao.com/policy" target="_blank"
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


<script>
	$(function(){
		$(".ico_movetop").click(function(){
			document.body.scrollTop = 0;
			document.documentElement.scrollTop = 0;
		});
	});
</script>

</body>
</html>