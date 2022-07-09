<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>카카오 이모티콘샵</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<link rel="shortcut icon" href="../images/e_16x16.ico" />
<link rel="stylesheet" href="category.css" />

</head>
<body>


<div id="root" style="height: 100%;">
	<div id="kakaoWrap" class="default menu_in">
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
			<h3 class="screen_out">스타일</h3>
			<div class="area_stylesub">
			
			
			
				<div class="wrap_tabsort" style="background-color: rgb(255, 243, 243);">
					<div class="area_tabsort">
					
						<div class="list_stylehash">
							<strong class="screen_out">스타일 그룹</strong>
							<c:if test="${ not empty catgList }">
								<c:forEach items="${ catgList }" var="CatgDTO"><a class='<c:if test="${ param.ct_main eq CatgDTO.ct_main }">link_stylehash on</c:if><c:if test="${ param.ct_main ne CatgDTO.ct_main }">link_stylehash</c:if>' href="/jspPro/pages/category.do?ct_main=${ CatgDTO.ct_main }&ec_sub=전체" style="">${ CatgDTO.ct_main }<span class="screen_out">선택됨</span></a></c:forEach>
							</c:if>	
						</div>
						
						<div class="area_styletag">
							<strong class="screen_out">스타일 #태그</strong>
							<ul class="list_styletag" style="transform: translate(0px, 0px);">
								<li>
									<a aria-current="page" class="<c:if test='${ param.ec_sub eq "전체" }'>link_styletag on</c:if><c:if test='${ param.ec_sub ne "전체" }'>link_styletag</c:if>" href="/jspPro/pages/category.do?ct_main=${ param.ct_main }&ec_sub=전체" style="">
										<span class="txt_styletag" data-text="전체" style="">전체 </span>
										<span class="screen_out">선택됨</span>
									</a>
								</li>
								<c:if test="${ not empty ecatgCatgList }">
									<c:forEach items="${ ecatgCatgList }" var="EcatgCatgDTO">
										<c:if test='${ param.ct_main eq EcatgCatgDTO.ct_main }'>
											<li>
												<a aria-current="page" class='<c:if test="${ param.ec_sub eq EcatgCatgDTO.ec_sub }">link_styletag on</c:if><c:if test="${ param.ec_sub ne EcatgCatgDTO.ec_sub }">link_styletag</c:if>' href="/jspPro/pages/category.do?ct_main=${ EcatgCatgDTO.ct_main }&ec_sub=${ EcatgCatgDTO.ec_sub }" style="">
													<span class="txt_styletag" data-text="전체" style="">#${ EcatgCatgDTO.ec_sub } </span>
													<span class="screen_out">선택됨</span>
												</a>
											</li>
										</c:if>
									</c:forEach>
								</c:if>	
							</ul>
						</div>
						
					</div>
				</div>
				
				
				
				
				<div class="wrap_substyle">
					<div class="area_sort">
						<button class="btn_sort on" disabled="">최신순<span class="screen_out">선택됨</span></button><button class="btn_sort">인기순</button>
					</div>
					<strong class="screen_out">최신순 이모티콘</strong>
					
					
					
					<ul class="list_emoticonshop">
					
					
					<c:if test="${ not empty elistEcatgList }">
						<c:forEach items="${ elistEcatgList }" var="ElistEcatgDTO">
							<c:if test='${ ( param.ct_main eq ElistEcatgDTO.ct_main ) and param.ec_sub eq ( param.ec_sub eq "전체" ? param.ec_sub : ElistEcatgDTO.ec_sub ) }'>
								<li class="">
									<div class="link_new">
										<a class="link_product" href="/t/little-minigiri">
											<span class="unit_emot">
												<img src="${ ElistEcatgDTO.el_stopimg }" class="img_emot img_default" alt="">
												<img src="${ ElistEcatgDTO.el_mainimg }" class="img_emot img_hover" alt="">
											</span>
											<c:set var="cnt" value="0"></c:set>
											<c:forEach items="${ eimgList }" var="EimgDTO">
												<c:if test='${ (ElistEcatgDTO.el_name eq EimgDTO.el_name) and cnt <= 4 }'>
													<c:set var="cnt" value="${ cnt + 1 }"></c:set>
													<span class="unit_emot">
														<img src="${ EimgDTO.ei_path }" class="img_emot" alt="">
													</span>
												</c:if>
											</c:forEach>
										</a>
										<div class="area_tit">
											<a class="link_tit" href="/t/little-minigiri">
												<strong class="tit_product">
													<span class="area_icons">
														<c:if test="${ ElistEcatgDTO.newImg eq true }">
															<!-- <span class="ico_comm ico_sound">소리켜짐</span> -->
															<span class="ico_comm ico_newemot">NEW</span>
														</c:if>
													</span>
													<span class="txt_tit">${ ElistEcatgDTO.el_name }</span>
												</strong>
												<span class="txt_author">${ ElistEcatgDTO.el_maker }</span>
											</a>
											<button type="button" class="btn_grpshare">
												<span class="ico_comm ico_like">좋아요</span>
											</button>
										</div>
									</div>
								</li>
								
								
							</c:if>
						</c:forEach>
					</c:if>	
						
						
						
					</ul>
					
					
					
					
					<div></div>
				</div>
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


<script>

	$(function(){
		
		if ( $(".wrap_tabsort .list_stylehash .link_stylehash:nth-of-type(1)").hasClass("on") ) {
			$(".wrap_tabsort").css("background-color","rgb(255, 243, 243)");
			$(".wrap_tabsort .list_stylehash .link_stylehash:nth-of-type(1)").css("color","rgb(249, 117, 117)");
			$(".wrap_tabsort .list_styletag .link_styletag.on .txt_styletag").css("background-color","rgb(255, 134, 134)");
			$(".wrap_tabsort .list_styletag .link_styletag.on").css("background-color","rgb(255, 134, 134)");
			$(".wrap_tabsort .list_styletag .link_styletag .txt_styletag").addClass("on1");
			$(".wrap_tabsort .list_styletag .link_styletag").addClass("on1");
		} else if ( $(".wrap_tabsort .list_stylehash .link_stylehash:nth-of-type(2)").hasClass("on") ) {
			$(".wrap_tabsort").css("background-color","rgb(243, 250, 245)");
			$(".wrap_tabsort .list_stylehash .link_stylehash:nth-of-type(2)").css("color","rgb(99, 202, 133)");
			$(".wrap_tabsort .list_styletag .link_styletag.on .txt_styletag").css("background-color","rgb(116, 211, 148)");
			$(".wrap_tabsort .list_styletag .link_styletag.on").css("background-color","rgb(116, 211, 148)");
			$(".wrap_tabsort .list_styletag .link_styletag .txt_styletag").addClass("on2");
			$(".wrap_tabsort .list_styletag .link_styletag").addClass("on2");
		} else if ( $(".wrap_tabsort .list_stylehash .link_stylehash:nth-of-type(3)").hasClass("on") ) {
			$(".wrap_tabsort").css("background-color","rgb(255, 243, 247)");
			$(".wrap_tabsort .list_stylehash .link_stylehash:nth-of-type(3)").css("color","rgb(245, 159, 196)");
			$(".wrap_tabsort .list_styletag .link_styletag.on .txt_styletag").css("background-color","rgb(254, 178, 211)");
			$(".wrap_tabsort .list_styletag .link_styletag.on").css("background-color","rgb(254, 178, 211)");
			$(".wrap_tabsort .list_styletag .link_styletag .txt_styletag").addClass("on3");
			$(".wrap_tabsort .list_styletag .link_styletag").addClass("on3");
		} else if ( $(".wrap_tabsort .list_stylehash .link_stylehash:nth-of-type(4)").hasClass("on") ) {
			$(".wrap_tabsort").css("background-color","rgb(240, 252, 252)");
			$(".wrap_tabsort .list_stylehash .link_stylehash:nth-of-type(4)").css("color","rgb(112, 203, 200)");
			$(".wrap_tabsort .list_styletag .link_styletag.on .txt_styletag").css("background-color","rgb(147, 224, 221)");
			$(".wrap_tabsort .list_styletag .link_styletag.on").css("background-color","rgb(147, 224, 221)");
			$(".wrap_tabsort .list_styletag .link_styletag .txt_styletag").addClass("on4");
			$(".wrap_tabsort .list_styletag .link_styletag").addClass("on4");
		} else if ( $(".wrap_tabsort .list_stylehash .link_stylehash:nth-of-type(5)").hasClass("on") ) {
			$(".wrap_tabsort").css("background-color","rgb(255, 246, 246)");
			$(".wrap_tabsort .list_stylehash .link_stylehash:nth-of-type(5)").css("color","rgb(246, 154, 154)");
			$(".wrap_tabsort .list_styletag .link_styletag.on .txt_styletag").css("background-color","rgb(247, 183, 183)");
			$(".wrap_tabsort .list_styletag .link_styletag.on").css("background-color","rgb(247, 183, 183)");
			$(".wrap_tabsort .list_styletag .link_styletag .txt_styletag").addClass("on5");
			$(".wrap_tabsort .list_styletag .link_styletag").addClass("on5");
		} else if ( $(".wrap_tabsort .list_stylehash .link_stylehash:nth-of-type(6)").hasClass("on") ) {
			$(".wrap_tabsort").css("background-color","rgb(249, 249, 255)");
			$(".wrap_tabsort .list_stylehash .link_stylehash:nth-of-type(6)").css("color","rgb(158, 160, 237)");
			$(".wrap_tabsort .list_styletag .link_styletag.on .txt_styletag").css("background-color","rgb(192, 194, 249)");
			$(".wrap_tabsort .list_styletag .link_styletag.on").css("background-color","rgb(192, 194, 249)");
			$(".wrap_tabsort .list_styletag .link_styletag .txt_styletag").addClass("on6");
			$(".wrap_tabsort .list_styletag .link_styletag").addClass("on6");
		} else if ( $(".wrap_tabsort .list_stylehash .link_stylehash:nth-of-type(7)").hasClass("on") ) {
			$(".wrap_tabsort").css("background-color","rgb(248, 253, 243)");
			$(".wrap_tabsort .list_stylehash .link_stylehash:nth-of-type(7)").css("color","rgb(144, 199, 100)");
			$(".wrap_tabsort .list_styletag .link_styletag.on .txt_styletag").css("background-color","rgb(177, 224, 139)");
			$(".wrap_tabsort .list_styletag .link_styletag.on").css("background-color","rgb(177, 224, 139)");
			$(".wrap_tabsort .list_styletag .link_styletag .txt_styletag").addClass("on7");
			$(".wrap_tabsort .list_styletag .link_styletag").addClass("on7");
		} else if ( $(".wrap_tabsort .list_stylehash .link_stylehash:nth-of-type(8)").hasClass("on") ) {
			$(".wrap_tabsort").css("background-color","rgb(255, 252, 242)");
			$(".wrap_tabsort .list_stylehash .link_stylehash:nth-of-type(8)").css("color","rgb(244, 196, 0)");
			$(".wrap_tabsort .list_styletag .link_styletag.on .txt_styletag").css("background-color","rgb(249, 216, 81)");
			$(".wrap_tabsort .list_styletag .link_styletag.on").css("background-color","rgb(249, 216, 81)");
			$(".wrap_tabsort .list_styletag .link_styletag .txt_styletag").addClass("on8");
			$(".wrap_tabsort .list_styletag .link_styletag").addClass("on8");
		} else if ( $(".wrap_tabsort .list_stylehash .link_stylehash:nth-of-type(9)").hasClass("on") ) {
			$(".wrap_tabsort").css("background-color","rgb(247, 252, 255)");
			$(".wrap_tabsort .list_stylehash .link_stylehash:nth-of-type(9)").css("color","rgb(110, 178, 228)");
			$(".wrap_tabsort .list_styletag .link_styletag.on .txt_styletag").css("background-color","rgb(155, 205, 242)");
			$(".wrap_tabsort .list_styletag .link_styletag.on").css("background-color","rgb(155, 205, 242)");
			$(".wrap_tabsort .list_styletag .link_styletag .txt_styletag").addClass("on9");
			$(".wrap_tabsort .list_styletag .link_styletag").addClass("on9");
		} else if ( $(".wrap_tabsort .list_stylehash .link_stylehash:nth-of-type(10)").hasClass("on") ) {
			$(".wrap_tabsort").css("background-color","rgb(255, 249, 244)");
			$(".wrap_tabsort .list_stylehash .link_stylehash:nth-of-type(10)").css("color","rgb(254, 163, 92)");
			$(".wrap_tabsort .list_styletag .link_styletag.on .txt_styletag").css("background-color","rgb(252, 188, 139)");
			$(".wrap_tabsort .list_styletag .link_styletag.on").css("background-color","rgb(252, 188, 139)");
			$(".wrap_tabsort .list_styletag .link_styletag .txt_styletag").addClass("on10");
			$(".wrap_tabsort .list_styletag .link_styletag").addClass("on10");
		} else if ( $(".wrap_tabsort .list_stylehash .link_stylehash:nth-of-type(11)").hasClass("on") ) {
			$(".wrap_tabsort").css("background-color","rgb(249, 245, 244)");
			$(".wrap_tabsort .list_stylehash .link_stylehash:nth-of-type(11)").css("color","rgb(204, 163, 145)");
			$(".wrap_tabsort .list_styletag .link_styletag.on .txt_styletag").css("background-color","rgb(217, 179, 163)");
			$(".wrap_tabsort .list_styletag .link_styletag.on").css("background-color","rgb(217, 179, 163)");
			$(".wrap_tabsort .list_styletag .link_styletag .txt_styletag").addClass("on11");
			$(".wrap_tabsort .list_styletag .link_styletag").addClass("on11");
		}
		
	});

</script>

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