<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../../include.jspf"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>카카오 이모티콘샵</title>
<link rel="shortcut icon"
	href="https://t1.kakaocdn.net/estoreweb/favicon/e_16x16.ico" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<link rel="stylesheet" href="../../css/header.css" />
<link rel="stylesheet" href="../../css/search.css?ver=1" />
<link rel="stylesheet" href="../../css/hot.css" />

</head>
<body>




	<div id="kakaoIndex"
		style="overflow: hidden; position: absolute; left: -9999px; width: 0; height: 1px; margin: 0; padding: 0;">
		<a href="#dkBody">본문 바로가기</a> <a href="#dkGnb">메뉴 바로가기</a>
	</div>

	<div id="root" style="height: 100%;">
		<div id="kakaoWrap" class="default head_bnr menu_in">

			<!-- 로그인 하면 나오는 띠배너 -->
			<c:if test="${ not empty sessionScope.email }">
				<div class="kakaoTopbnr">
					<div class="wrap_topbnr"
						style="background-color: rgb(152, 232, 231);">
						<div class="inner_topbnr">
							<a
								href="https://my.kakao.com/product/EMOTICON001?t_src=emoticon&amp;t_ch=webstore&amp;t_obj=web_gnb_banner"
								class="link_bnr"> <span class="txt_info"
								style="color: rgb(0, 0, 0);">이모티콘 무제한! 웹에선 평생 할인</span> <span
								class="unit_coupon"> 
								<img src="https://item.kakaocdn.net/dn/e1iAq/btrFiaXi8G1/wYPKhfbRvUgCYIgsxc9V5k/img.png"
									class="img_coupon" alt="띠배너이미지">
							</span>
							</a>
						</div>
						<button class="btn_close_tb" aria-label="띠배너닫기">
							<span class="ico_comm ico_closew"></span>
						</button>
					</div>
				</div>
			</c:if>



			<div id="kakaoHead" class="emoticon_head">
				<div class="k_head">
					<button class="link_menu" id="side_open">
						<span class="ico_comm ico_menu">사이드메뉴 열기</span>
						<c:if test="${ not empty sessionScope.email }">
							<span class="ico_comm ico_new">new</span> 
						</c:if>
					</button>
					<a class="link_home" href="/"><span class="ico_comm ico_home">홈으로
							이동</span></a>
					<h1 class="tit_logo">
						<a class="link_thome" href="/">
							<span class="ico_comm ico_logo">kakao emoticon shop</span>
						</a> 
						<span class="ico_comm ico_logo">kakao emoticon shop</span>
					</h1>
					<strong class="tit_cont"></strong>
					<button class="link_search">
						<span class="ico_comm ico_search">검색하기</span>
					</button>
					<button class="link_my">
						<span class="wrap_thumb">
							<span class="inner_thumb">
								<c:if test="${ not empty sessionScope.email && sessionScope.email ne 'admin'}">
									<c:forEach var="memberList" items="${ memberList }">
										<c:if test="${ memberList.m_id eq param.id }">
											<img class="thumb_user"
												src="${ memberList.m_pimg }"
												width="28px" height="28px" alt="사용자">
										</c:if>
									</c:forEach>
								</c:if>
								<c:if test="${ empty sessionScope.email || sessionScope.email eq 'admin' }">
									<a href="/"> <!-- 로그인 페이지 -->
										<img class="thumb_user"
												src="https://t1.kakaocdn.net/estoreweb/images/20220421091219/profile_default.png"
												width="28px" height="28px" alt="사용자">
									</a>
								</c:if>
							</span>
						</span>
					</button>

					<!-- 로그인 후 프로필 클릭하면 보이는 프로필창 -->
					<c:if test="${ not empty sessionScope.email && sessionScope.email ne 'admin' }">
						<c:forEach var="memberList" items="${ memberList }">
							<c:if test="${ memberList.m_id eq sessionScope.email }">
								<div class="profile_layer">
		`							<span class="wrap_thumb"> 
										<span class="inner_thumb">
											<img class="thumb_user" src="${ memberList.m_pimg }" width="40px" height="40px" alt="사용자">
										</span>
									</span> 
									<span class="tit_thumb">${ memberList.m_nn }</span> 
									<span class="desc_email">${ memberList.m_id }</span>
									<button class="btn_logout">로그아웃</button>
								</div>
							</c:if>
						</c:forEach>
					</c:if>

					<!-- 관리자로 로그인할 경우, 프로필 창에 이모티콘 추가 삭제 버튼 -->
					<c:if test="${ sessionScope.email eq 'admin' }">
						<div class="profile_layer">
			               	<span class="tit_thumb">admin</span>
			               	<button class="btn_em_add" onclick="location.href='../add_delete/em_add.do'">이모티콘 추가</button>
			               	<button class="btn_em_delete" onclick="location.href='../add_delete/em_delete.do'">이모티콘 삭제</button>
			               	<button class="btn_em_logout">로그아웃</button>
		               </div>
		            </c:if>

					<!-- 로그인 한 경우, 쿠폰 발급 알림 -->
					<c:if test="${ not empty sessionScope.email && sessionScope.email ne 'admin' }">
		              	<div class="tooltip_layer">
		               		<div class="area_tooltip">
		               			<p class="layer_tooltip">
		               				<a class="link_tooltip" href="/mypage/coupons"><strong>항상 전상품 20% 할인</strong> 쿠폰이 발급되었습니다.</a>
		               			</p>
		               			<button class="btn_close_tt" aria-label="툴팁닫기">
		               				<span class="ico_comm ico_close"></span>
		               			</button>
		               		</div>
		               </div> 
	               </c:if>

				</div>

				<div class="search_wrap on">
					<form class="search-box__form" action="/Kakao/pages/header/search.do">
						<div class="inner_search">
							<h3 class="screen_out">이모티콘 검색어 입력</h3>
							<div class="emoticon_sch">
								<div class="box_search">
									<c:if test="${ empty param.q || empty searchList }">
										<input type="text" id="tfSearch" name="q"
											placeholder="이모티콘을 검색해보세요!" class="tf_search"
											autocomplete="off" value="">
									</c:if>
									<c:if test="${ not empty searchList }">
										<input type="text" id="tfSearch" name="q"
											placeholder="이모티콘을 검색해보세요!" class="tf_search"
											autocomplete="off" value="${ param.q }">
									</c:if>
									<button type="button" id="search_delete" class="btn_delete">
										<span class="ico_comm ico_schdelete">검색어 지우기</span>
									</button>
									<button type="submit" class="btn_search">
										<span class="ico_comm ico_sch">검색</span>
									</button>
								</div>
							</div>
							<button type="button" class="btn_schcancel">취소</button>
						</div>
					</form>
				</div>

				<nav id="kakaoGnb">
					<h2 class="screen_out">kakao emoticon shop 메인메뉴</h2>
					<ul class="list_gnb">
						<!-- 해당 페이지에 클래스 on 넣기  -->
						<li class=""><a class="link_gnb" href="/Kakao/pages/home/home.do">홈</a></li>
						<li class=""><a class="link_gnb" href="/Kakao/pages/new/new.do">신규</a></li>
						<li class=""><a class="link_gnb" href="/Kakao/pages/hot/hot.do">인기</a></li>
						<li class=""><a class="link_gnb" href="/Kakao/pages/style/style.do">스타일</a></li>
					</ul>
				</nav>
			</div>
			<!-- header -->



			<div id="kakaoContent" class="cont_search">
				<!-- 검색 결과 없거나 스페이스/검색어 없이 검색한 경우  -->
				<c:if test="${ empty param.q || empty searchList }">
					<div></div>
					<div class="area_searchview wrap_empty">
						<div class="area_empty">
							<div class="inner_area">
								<img class="img_empty"
									src="https://t1.kakaocdn.net/estoreweb/images/20220421091219/empty_purchase.png"
									alt="검색결과 없음 이미지">
								<strong class="tit_empty">검색 결과가 없습니다.</strong>
								<p class="desc_empty">다른 검색어로 다시 시도해주세요.</p>
							</div>
						</div>
						<div></div>
					</div>
				</c:if>
				
				<div class="area_searchview">
					<!-- 정상 검색  -->
					<c:if test="${ not empty searchList }">
						<span class="area_count">검색결과<em class="txt_emph">${fn:length(searchList)}</em></span>
						<ol class="list_double">
							<c:forEach var="searchList" items="${ searchList }" varStatus="status">
								<li class="hot_item">
									<div class="double_tit">
										<a class="link_double" href="#">
											<div class="area_tit">
												<strong class="tit_product">
													<c:forEach var="hotNewList" items="${ hotNewList }">
														<c:if test="${ hotNewList.el_num eq searchList.el_num }">
															<span class="area_icons">
																<span class="ico_comm ico_newemot">NEW</span>
															</span>
														</c:if>
													</c:forEach>
													<span class="txt_tit">${ searchList.el_name }</span>
												</strong>
												<span class="txt_author">${ searchList.el_maker }</span>
											</div>
										</a>
										<button type="button" class="btn_grpshare">
											<!-- 좋아요 한 이모티콘이면 ico_likeOn 클래스명 넣기 +  btn_grpshare display 속성 block-->
											<span class="ico_comm ico_like">좋아요</span>
										</button>
									</div>
									<a class="link_double double_img" href="#">
										<div class="area_doubleemoticon">
											<img src="${ searchList.el_stopimg }" class="img_emot img_default">
										</div>
										<div class="area_doubleemoticon">
											<img src="${ searchList.el_mainimg }" class="img_emot img_hover">
										</div>
									</a>
								</li>
							</c:forEach>
						</ol>
					</c:if>
				</div>
				
			</div>



		</div>
		<!-- #kakaoWrap -->
	</div>
	<!-- #root -->


	<script>
	/* 검색 관련 */
	
	$(".search_wrap").css("display", "block");
	$(".k_head").css("z-index", "2");
	$("#kakaoGnb").css("position", "relative");
	$("#kakaoGnb").css("z-index", "1");
	$(".link_search").css({"cursor":"default", "display":"none"});
	$(".btn_delete").css({"cursor":"default", "display":"none"});
	
	$(".btn_delete").css("display", "");
	$(".link_thome").css("margin-right", "44px");
	
	//검색 삭제 버튼
	$(".tf_search").on("keyup", function() {
		$(".btn_delete").css("display", "");
	});
	
	// 검색어 삭제 
	$(".btn_delete").on("click", function() {
		$(".tf_search").val("");
		$(".btn_delete").css("display", "none");
	});
	
	
	/* 쿠폰알림창 */
	$(".btn_close_tt").on("click", function() {
		$(".tooltip_layer").css("display", "none");
	});

	/* 띠 배너 */
	//띠배너 닫기
	$(".btn_close_tb").on("click", function() {
		$(".kakaoTopbnr").css("display", "none");
		$(".emoticon_head").css("top", "0px");
		$(".search_wrap").css("top", "110px")
	});

	if (${ not empty sessionScope.email }) {
		$(".head_bnr .emoticon_head").css("top", "50px");
		$(".head_bnr .search_wrap").css("top", "160px");
	}

	/* 프로필 */
	$(".link_my").on("click", function() {
		$(".profile_layer").toggle();
	});
	
	/* 로그아웃 */
	$(".btn_em_logout").on("click", function() {
		sessionStorage.clear();  //세션 데이터 삭제
		location.reload(); //새로고침
	});
	
	$(".btn_logout").on("click", function() {
		sessionStorage.clear();  //세션 데이터 삭제
		location.reload(); //새로고침
	});
	
</script>

</body>
</html>