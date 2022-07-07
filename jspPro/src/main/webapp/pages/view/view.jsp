<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/include.jspf"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>이모티콘 상세보기</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="shortcut icon" href="../images/e_16x16.ico" />
<link rel="stylesheet" href="kview.css/area_product.css?ver=3">
<link rel="stylesheet" href="kview.css/list_emoticon.css?ver=1">
<link rel="stylesheet" href="kview.css/alert_layer.css?ver=1">
<link rel="stylesheet" href="kview.css/header.css?ver=3">
<link rel="stylesheet" href="kview.css/order_layer.css?ver=1">
<link rel="stylesheet" href="kview.css/footer.css?ver=1">
<!-- jquery ui 모달창 -->
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="/jspPro/kview/js/httpRequest.js"></script>
</head>
<body>

	<div id="root" style="height: 100%;">
		<div id="kakaoWrap" class="default head_detail">

			<div class="default head_bnr menu_in">

				<!-- 로그인 하면 나오는 띠배너 -->
				<!-- 
			<div class="kakaoTopbnr">
				<div class="wrap_topbnr" style="background-color: rgb(152, 232, 231);">
					<div class="inner_topbnr">
						<a href="https://my.kakao.com/product/EMOTICON001?t_src=emoticon&amp;t_ch=webstore&amp;t_obj=web_gnb_banner" class="link_bnr">
							<span class="txt_info" style="color: rgb(0, 0, 0);">이모티콘 무제한! 웹에선 평생 할인</span>
							<span class="unit_coupon">
								<img src="https://item.kakaocdn.net/dn/e1iAq/btrFiaXi8G1/wYPKhfbRvUgCYIgsxc9V5k/img.png" class="img_coupon" alt="띠배너이미지">
							</span>
						</a>
					</div>
					<button class="btn_close" aria-label="띠배너닫기">
						<span class="ico_comm ico_closew"></span>
					</button>
				</div>
			</div> 
			 -->



				<div id="kakaoHead" class="emoticon_head">
					<div class="k_head">
						<button class="link_menu" id="side_open">
							<span class="ico_comm ico_menu">사이드메뉴 열기</span>
						</button>
						<a class="link_home" href="/"><span class="ico_comm ico_home">홈으로
								이동</span></a>
						<h1 class="tit_logo">
							<a class="link_thome" href="/"><span
								class="ico_comm ico_logo">kakao emoticon shop</span></a> <span
								class="ico_comm ico_logo">kakao emoticon shop</span>
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

						<!-- 로그인 후 프로필 클릭하면 보이는 프로필창 -->
						<!-- 
	               <div class="profile_layer">
		               	<span class="wrap_thumb">
		               		<span class="inner_thumb">
		               			<img class="thumb_user" src="이미지링크" width="40px" height="40px" alt="사용자">
		               		</span>
		               	</span>
		               	<span class="tit_thumb">이름</span>
		               	<span class="desc_email">이메일</span>
		               	<button class="btn_logout">로그아웃</button>
	               </div> 
	               -->

						<!-- 로그인 후 뜨는 쿠폰 알림창 -->
						<!--  
	              <div class="tooltip_layer">
	               		<div class="area_tooltip">
	               			<p class="layer_tooltip">
	               				<a class="link_tooltip" href="/mypage/coupons"><strong>항상 전상품 20% 할인</strong> 쿠폰이 발급되었습니다.</a>
	               			</p>
	               			<button class="btn_close" aria-label="툴팁닫기">
	               				<span class="ico_comm ico_close"></span>
	               			</button>
	               		</div>
	               </div> 
	               -->

					</div>

					<div class="search_wrap on">
						<div class="dim_layer"></div>
						<form class="search-box__form" action="search.jsp">
							<div class="inner_search">
								<h3 class="screen_out">이모티콘 검색어 입력</h3>
								<div class="emoticon_sch">
									<div class="box_search">
										<input type="text" id="tfSearch" name="q"
											placeholder="이모티콘을 검색해보세요!" class="tf_search"
											autocomplete="off" value="">
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
							<li class=""><a class="link_gnb" href="/">홈</a></li>
							<li class=""><a class="link_gnb" href="/item/new">신규</a></li>
							<li class=""><a class="link_gnb" href="/item/hot">인기</a></li>
							<li class=""><a class="link_gnb" href="/item/style">스타일</a></li>
						</ul>
					</nav>


				</div>

				<div id="kakaoContent" class="cont_detail">
					<div class="area_product" id="top">
						<c:if test="${  not empty eList }">
							<c:forEach items="${eList }" var="dto">
								<strong class="screen_out">이모티콘 정보</strong>
								<div class="info_thumb">
									<div class="area_thumb">
										<img alt="카카오 이모티콘" class="thumb_img" src=${dto.el_mainimg }>
									</div>
								</div>
								<div class="info_product">

									<h3 class="tit_product">
										<span class="tit_inner" id="emo_name">${dto.el_name }</span>
									</h3>
									<span class="txt_author"><em class="screen_out">작가명</em>${dto.el_maker }</span>
									<div class="main_product">
										<div class="product_purchase_price">
											<span class="txt_rate">6월, 전상품 20% 할인</span>
											<dl class="list_purchase_price list_discount_price">
												<dt class="screen_out">판매가격</dt>
												<dd class="txt_price">
													<em class="num_g">${dto.el_price }</em>원
												</dd>
												<dt class="screen_out">기본가격</dt>
												<dd class="txt_cost">
													<span class="num_g">2000</span>원
												</dd>
											</dl>

										</div>

										<div class="product_purchase_share">
											<button type="button" class="btn_grpshare">
												<span class="ico_comm ico_share">공유</span>
											</button>
											<button type="button" class="btn_grpshare">
												<span class="ico_comm ico_likebig">좋아요</span>
											</button>

											<div class="social_comm_p">
												<div class="sns_comm_p share_layer">
													<strong class="screen_out">SNS로 공유하기 펼쳐짐</strong>
													<ul class="list_sns">
														<li><a href="#none" class="link_sns"
															data-handler="kakaotalk"> <span
																class="img_social ico_sns_kt"> </span>카카오톡
														</a></li>
														<li><a href="#none" class="link_sns"
															data-handler="kakaostory"> <span
																class="img_social ico_sns_ks"> </span>카카오스토리
														</a></li>
														<li><a href="#none" class="link_sns"
															data-handler="facebook"> <span
																class="img_social ico_sns_fb"> </span>페이스북
														</a></li>
														<li><a href="#none" class="link_sns"
															data-handler="twitter"> <span
																class="img_social ico_sns_tw"> </span>트위터
														</a></li>
														<li><a href="#none" class="link_sns"
															data-handler="mail"> <span
																class="img_social ico_sns_mail"> </span>다음메일
														</a></li>
														<li><a href="#none" class="link_sns"
															data-handler="daumcafe"> <span
																class="img_social ico_sns_cafe"> </span>다음카페
														</a></li>
													</ul>
													<button class="btn_close">
														<span class="img_social ico_close">공유목록 닫기</span>
													</button>
												</div>

											</div>
										</div>
									</div>


									<div class="wrap_btn">
										<form action="" method="get" id="buy_check">
											<input type="text" name="bl_num"
												value="<%=request.getParameter("el_num")%>"
												style="display: none;" /> <input type="text" name="bl_id"
												value="qkreks12@daum.net" style="display: none;" />
											<button type="button" class="btn_g" id="btn_buy">구매하기</button>
										</form>
										<form action="" method="get" id="gift_getFriendList">
											<input type="text" name="bl_num"
												value="<%=request.getParameter("el_num")%>"
												style="display: none;" /> <input type="text" name=""
												value="qkreks12@daum.net" style="display: none;" />
											<button type="button" class="btn_g btn_gift" id="btn_gift"
												onclick="getFriendJsonAjax()">선물하기</button>
										</form>
									</div>
								</div>
							</c:forEach>
						</c:if>
						<c:if test="${ empty eList }">
							<p>정보가 없음.</p>
						</c:if>
					</div>
					<!-- area_product -->


					<div class="area_emoticon">
						<h4 class="screen_out">상세 이모티콘</h4>
						<ul class="list_emoticon">
							<c:if test="${  not empty eList }">
								<c:forEach items="${eImgList }" var="dto" varStatus="status">
									<li class=""><a class="link_emoticon" href="#"> <img
											src=${dto.ei_path } class="img_emoticon"> <!-- <div class="box_send">
												<div class="area_send">
													<span class="ico_comm ico_send"></span> <span
														class="txt_send">보내기</span>
												</div>
											</div> -->
									</a></li>
								</c:forEach>
							</c:if>

							<c:if test="${ empty eList }">
								<p>정보가 없음.</p>
							</c:if>
						</ul>

						<div class="area_guide">
							<dl class="list_guide guide_close" id="guide1">
								<dt>
									<button class="btn_open" id="btn_guide1">
										<h4>상품안내</h4>
										<span class="ico_comm ico_open" id="guide_open1"></span>
									</button>
								</dt>
								<dd>부가가치세 10%가 포함된 가격입니다.</dd>
								<dd>결제 완료 후 ‘카카오톡’ 모바일 앱 메시지를 통해서 즉시 지급됩니다.</dd>
								<dd>선물 이모티콘은 결제 완료 후 선물받는 친구에게 이모티콘 메세지가 발송되므로 수신자가 직접
									이모티콘을 다운로드 받을 수 있습니다.</dd>
								<dd>구매한 이모티콘은 카카오톡 모바일 앱 및 카카오톡 PC 서비스에서 사용할 수 있습니다.</dd>
								<dd>이 이모티콘을 구매, 또는 선물하면 카카오의 다른 서비스에서도 사용할 수 있습니다. 다만, 플러스
									다운로드 하는 경우 카카오톡에서만 사용 가능합니다. 카카오는 회사의 사정, 기타 제반 여건에 따라 이모티콘
									사용처를 추가하거나 변경할 수 있습니다.</dd>
								<dd>카카오 이모티콘샵에서는 카카오톡 모바일 앱 내 이모티콘 스토어에서 판매하고 있는 이모티콘 중 일부는
									판매하지 않을 수 있습니다.</dd>
								<dd>대한민국 카카오톡 사용자가 아닌 경우에는 일부 기능 또는 구매가 제한될 수 있습니다.</dd>
								<dd>미성년자인 회원이 법정대리인의 동의없이 상품 등을 구매하는 경우 본인 또는 법정대리인이 이를 취소할
									수 있습니다.</dd>
							</dl>
							<dl class="list_guide guide_close" id="guide2">
								<dt>
									<button class="btn_open" id="btn_guide2">
										<h4>해지 및 환불 안내</h4>
										<span class="ico_comm ico_open" id="guide_open2"></span>
									</button>
								</dt>
								<dd>결제 후 계약내용에 관한 서면을 교부받은 날(이하 ‘구매일’)로부터 7일 이내에 청약철회할 수
									있습니다. 단, 콘텐츠의 내용이 표시·광고 내용과 다르거나 계약 내용과 다르게 이행된 경우에는 당해 콘텐츠를
									공급받은 날로부터 3개월 이내, 그 사실을 안 날 또는 알 수 있었던 날로부터 30일 이내에 청약철회할 수
									있습니다.</dd>
								<dd>
									아래 내용에 해당하는 경우에는 청약철회 또는 환불 신청이 제한될 수 있습니다.
									<ol class="list_subguide">
										<li>1) 구매일로부터 7일 이내에 용역 또는&nbsp;「문화산업진흥 기본법」 제2조제5호의
											디지털콘텐츠의 제공이 개시된 경우. 다만, 가분적 용역 또는 가분적 디지털콘텐츠로 구성된 계약의 경우에는
											제공이 개시되지 아니한 부분에 대하여는 예외로 함.</li>
										<li>2) 구매일로부터 7일이 경과한 후 단순변심으로 인한 환불 신청의 경우</li>
									</ol>
								</dd>
								<dd>
									청약 철회/환불 요청을 원하실 경우 <a
										href="https://cs.kakao.com/requests?category=278&amp;locale=ko&amp;node=30555&amp;service=94"
										class="link_txt" target="_blank" rel="noreferrer">[카카오
										고객센터]</a> 에서 신청 할 수 있으며, 소비자의 청약철회일로부터 3 영업일 이내에 지급받은 대금의 환급을 정당한
									사유 없이 지연하는 경우 소비자는 지연기간에 대해서 연 20%의 지연 배상금을 회사에게 청구할 수 있습니다.
								</dd>
								<dd>선물한 이모티콘의 경우 구매일로부터 7일이 경과하였거나, 선물을 받은 이용자가 다운로드 받은 경우
									환불이 불가합니다.</dd>
								<dd>청약철회 및 환불 시 이미 사용하신 할인쿠폰은 재발급해드리지 않습니다.</dd>
								<dd>
									그 외 다른 사항에 대한 청약철회 및 환불은 카카오 유료서비스 이용약관 및 콘텐츠산업진흥법의 기준에 따르며,
									피해보상 및 불만 처리 등 필요한 사항은 <a
										href="https://cs.kakao.com/requests?category=278&amp;locale=ko&amp;node=30555&amp;service=94"
										class="link_txt" target="_blank" rel="noreferrer">[카카오
										고객센터]</a>로 연락 주시기 바랍니다.
								</dd>
							</dl>
						</div>
					</div>
				</div>
				<!-- kakaoContent -->

				<div id="kakaoFoot" class="foot_group">
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
							<button type="button" class="btn_movetop" onclick="location.href='#'">
								<span class="ico_comm ico_movetop">위로 이동</span>
							</button>
						</div>
					</div>
				</div>
				<!-- kakaoFoot -->

				<div class="dimmed_layer dim_over"></div>
				<div class="alert_layer" id="alert_logon">
					<div class="inner_layer">
						<div class="layer_body">
							<strong class="txt_info">로그인 후 이용해주세요.</strong>
						</div>
						<div class="layer_foot">
							<button class="btn_s btn_m" id="alert_close">취소</button>
							<button class="btn_g btn_m">로그인</button>
						</div>
					</div>
					<button type="button" class="btn_close">
						<span class="ico_comm ico_orderclose" id="btn_layer_close">닫기</span>
					</button>
				</div>

				<div class="alert_layer" id="alert_buyCheck">
					<div class="inner_layer">
						<div class="layer_body">
							<strong class="txt_info">이미 보유하고 있는 상품입니다. 다른 이모티콘을
								선택해보세요.</strong>
						</div>
						<div class="layer_foot">
							<button class="btn_s btn_m" id="btn_buyCheck_ok">확인</button>
						</div>
					</div>
					<button type="button" class="btn_close" id="btn_buyCheck_close">
						<span class="ico_comm ico_orderclose">닫기</span>
					</button>
				</div>

				<!-- 구매하기 창 -->
				<div class="emoticon_layer order_layer" id="buy_layer">
					<c:if test="${  not empty eList }">
						<c:forEach items="${eList }" var="dto">
							<div class="inner_layer">
								<strong class="screen_out">이모티콘 주문하기 입력폼</strong>
								<div class="layer_head">
									<strong class="tit_layer">구매하기</strong>
								</div>
								<div class="layer_body">
									<div class="inner_body">
										<div></div>
										<div class="box_order">
											<div class="area_products">
												<div class="cont_thumb">
													<dl>
														<dd class="screen_out">상품명</dd>
														<dt>
															<div class="area_tit">
																<strong class="tit_product"><span
																	class="area_icons"></span><span class="txt_tit">${dto.el_name }
																</span><br /></strong><span class="txt_author">${dto.el_maker }</span>
															</div>
														</dt>
													</dl>
													<dl>
														<dd class="screen_out">가격</dd>
														<dt class="item_price">
															<em class="txt_price">${dto.el_price}</em>원
														</dt>
													</dl>
												</div>
												<div class="wrap_img">
													<img src=${dto.el_mainimg } class="thumb_img"
														alt="카카오 이모티콘">
												</div>
											</div>
										</div>
										<div class="box_order box_coupon">
											<strong class="tit_order">할인쿠폰</strong>
											<div class="item_order">
												<select class="sel_opt" id="sel_coupon_opt">
													<option value="0">쿠폰 선택 안함</option>
													<option value="1">6월, 전상품 20% 할인 (20%)</option>
													<option value="2" selected>항상 전상품 20% 할인 (20%)</option>
												</select>
												<div class="opt_order">
													<a class="link_opt" id="open_coupon_opt"><span
														class="txt_opt"> <span class="opt_percent">20%</span>
															<span class="opt_name">항상 전상품 20% 할인 (20%)</span> <span
															class="ico_comm ico_opt">펼치기</span></span></a>
													<div class="box_opt">
														<div class="inner_opt">
															<span class="screen_out">선택상자</span>
														</div>
													</div>
												</div>
											</div>
											<strong class="tit_order">결제금액</strong>
											<div class="item_price">
												<strong class="tit_price">판매금액</strong><span
													class="txt_price" id="sel_price">${dto.el_price }원</span>
											</div>
											<div class="item_price">
												<strong class="tit_price">할인금액</strong><span
													class="txt_price" id="des_price">500원 </span>
											</div>
											<div class="item_price item_result">
												<strong class="tit_price">최종 결제금액</strong><span
													class="txt_price" id="fin_price">2000원</span>
											</div>
										</div>
										<div class="box_order box_agree">
											<div class="item_order">
												<strong class="screen_out">결제동의</strong>
												<div class="item_agree">
													<div class="inp_agree">
														<div class="chk_agree">
															<input type="checkbox" id="inpAgree" name="agree"
																class="inp_check"><label for="inpAgree"
																class="lab_agree"><span
																class="ico_comm ico_orderagree"></span>아래 내용에 동의합니다.</label>
														</div>
														<ul class="info_agree">
															<li>쿠폰은 중복사용 불가하며, 일부 결제수단은 할인쿠폰 적용이 불가합니다.</li>
															<br />
															<li>주문취소 및 환불 시 이미 사용한 쿠폰은 재발급되지 않습니다.</li>
														</ul>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="layer_foot">
									<div class="wrap_btn">
										<button class="btn_g" disabled="disabled" id="btn_comp">구매하기</button>
									</div>
								</div>
								<button type="button" class="btn_close">
									<span class="ico_comm ico_orderclose" id="btn_order_close">닫기</span>
								</button>
						</c:forEach>
					</c:if>
				</div>
			</div>
			<!-- 선물하기 창 -->
			<div class="emoticon_layer order_layer" id="gift_layer">
				<c:if test="${  not empty eList }">
					<c:forEach items="${eList }" var="dto">
						<div class="inner_layer">
							<strong class="screen_out">이모티콘 주문하기 입력폼</strong>
							<div class="layer_head">
								<strong class="tit_layer">선물하기</strong>
							</div>
							<div class="layer_body">
								<div class="inner_body">
									<div></div>
									<div class="box_order">
										<div class="area_products">
											<div class="cont_thumb">
												<dl>
													<dd class="screen_out">상품명</dd>
													<dt>
														<div class="area_tit">
															<strong class="tit_product"><span
																class="area_icons"></span><span class="txt_tit">${dto.el_name }
															</span><br /></strong><span class="txt_author">${dto.el_maker }</span>
														</div>
													</dt>
												</dl>
												<dl>
													<dd class="screen_out">가격</dd>
													<dt class="item_price">
														<em class="txt_price">${dto.el_price}</em>원
													</dt>
												</dl>
											</div>
											<div class="wrap_img">
												<img src=${dto.el_mainimg } class="thumb_img" alt="카카오 이모티콘">
											</div>
										</div>
									</div>
									<div class="box_order box_coupon">
										<strong class="tit_order">할인쿠폰</strong>
										<div class="item_order">
											<select class="sel_opt" id="gift_sel_coupon_opt">
												<option value="0">쿠폰 선택 안함</option>
												<option value="1">6월, 전상품 20% 할인 (20%)</option>
												<option value="2" selected>항상 전상품 20% 할인 (20%)</option>
											</select>
											<div class="opt_order">
												<a class="link_opt" id="gift_open_coupon_opt"><span
													class="txt_opt"> <span class="opt_percent">20%</span>
														<span class="opt_name">항상 전상품 20% 할인 (20%)</span> <span
														class="ico_comm ico_opt">펼치기</span></span></a>
												<div class="box_opt">
													<div class="inner_opt">
														<span class="screen_out">선택상자</span>
													</div>
												</div>
											</div>
										</div>
										<strong class="tit_order">결제금액</strong>
										<div class="item_price">
											<strong class="tit_price">판매금액</strong><span
												class="txt_price" id="sel_price">${dto.el_price }원</span>
										</div>
										<div class="item_price">
											<strong class="tit_price">할인금액</strong><span
												class="txt_price" id="des_price">500원 </span>
										</div>
										<div class="item_price item_result">
											<strong class="tit_price">최종 결제금액</strong><span
												class="txt_price" id="fin_price">2000원</span>
										</div>
									</div>
									<div class="box_order box_agree">
										<div class="item_order">
											<strong class="screen_out">결제동의</strong>
											<div class="item_agree">
												<div class="inp_agree">
													<div class="chk_agree">
														<input type="checkbox" id="giftAgree" name="agree"
															class="inp_check" checked><label for="inpAgree"
															class="lab_agree"><span
															class="ico_comm ico_orderagree"></span>아래 내용에 동의합니다.</label>
													</div>
													<ul class="info_agree">
														<li>쿠폰은 중복사용 불가하며, 일부 결제수단은 할인쿠폰 적용이 불가합니다.</li>
														<br />
														<li>주문취소 및 환불 시 이미 사용한 쿠폰은 재발급되지 않습니다.</li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="layer_foot">
								<div class="wrap_btn">
									<button class="btn_g" id="gift_comp">선물하기</button>
								</div>
							</div>
							<button type="button" class="btn_close" id="btn_gift_close">
								<span class="ico_comm ico_orderclose">닫기</span>
							</button>
					</c:forEach>
				</c:if>
			</div>
		</div>
	</div>
	<!-- kakaoWrap -->
	</div>
	<!-- root -->

	<div id="footer"></div>

	<!-- 구매하기 모달창 -->
	<div id="dialog-form" align="center" title="구매"
		style="font-size: 15px;">
		<form action="<%=contextPath%>/kview/buy.do" method="post"
			id="buyForm">
			<br /> <span id="buy_emo_name" style="font-size: 18px;"></span> <br />
			<hr />
			<br /> <input type="text" name="bl_num"
				value="<%=request.getParameter("el_num")%>" style="display: none">
			<input type="text" name="bl_id" id="buy_id" style="display: none">
			<ul>
				<li><input type="radio" name="bl_payway" value="카카오페이머니"
					checked> 카카오페이머니<br /></li>
				<li><input type="radio" name="bl_payway" value="카카오페이카드" />
					카카오페이카드<br /></li>
				<li><input type="radio" name="bl_payway" value="일반 휴대폰" /> 일반
					휴대폰<br /></li>
				<li><input type="radio" name="bl_payway" value="일반 신용카드" /> 일반
					신용카드<br /></li>
				<li><input type="radio" name="bl_payway" value="상품권" /> 상품권</li>
			</ul>
			<br />
			<hr>
			<input type="text" name="bl_state" value="결제완료" style="display: none">
			<br /> 최종 결제 가격: <input type="text" name="bl_price" id="buy_price"
				readonly style="border: none;" size=7> <br /> <br /> <br />
			<br /> <input type="text" name="co_name" id="uesd_coupon"
				style="display: none" /> <input class="btn_g" id="btn_buy_comp"
				type="submit" value="결제" style="cursor: pointer;">
		</form>
	</div>


	<!-- 선물하기 모달 -->
	<div id="gift-form" align="center" title="구매" style="font-size: 15px;">
		<form action="<%=contextPath%>/kview/gift.do" method="post"
			id="giftForm">
			<br /> <span id="gift_emo_name" style="font-size: 18px;"></span> <br />
			<hr />
			<br /> <input type="text" name="gb_emnum" id="gift_emnum"
				value="<%=request.getParameter("el_num")%>" style="display: none">
			<input type="text" name="gb_sendid" id="gift_sendid"
				style="display: none">
			<ul>
				<li><input type="radio" name="gb_payway" value="카카오페이머니"
					checked> 카카오페이머니<br /></li>
				<li><input type="radio" name="gb_payway" value="카카오페이카드" />
					카카오페이카드<br /></li>
				<li><input type="radio" name="gb_payway" value="일반 휴대폰" /> 일반
					휴대폰<br /></li>
				<li><input type="radio" name="gb_payway" value="일반 신용카드" /> 일반
					신용카드<br /></li>
				<li><input type="radio" name="gb_payway" value="상품권" /> 상품권</li>
			</ul>
			<br />
			<hr>
			<input type="text" name="gb_state" value="결제완료" style="display: none">
			<input type="text" name="gb_getid" id="gift_getid"
				style="border: none;" size=20> 님께 선물합니다. <br /> 최종 결제 가격: <input
				type="text" name="gb_payprice" id="gift_price" readonly
				style="border: none;" size=7> <br /> <br /> <br /> <br />
			<input type="text" name="co_name" id="gift_uesd_coupon"
				style="display: none" /> <input class="btn_g"
				id="modal_btn_gift_comp" type="button" value="결제"
				style="cursor: pointer;" onclick="giftCheck()">
		</form>
	</div>

	<!-- 선물하기 친구목록 레이어 -->
	<div class="emoticon_layer friend_layer">
		<div class="inner_layer">
			<strong class="screen_out">이모티콘 주문하기 입력폼</strong>
			<div class="layer_head">
				<strong class="tit_layer">선물하기</strong>
			</div>
			<div class="layer_body">
				<div class="inner_body">
					<div></div>
					<div class="wrap_friend">
						<h2 id="kakaoBody" class="screen_out">카카오톡으로 친구에게 선물하기</h2>
						<div class="search_friend">
							<strong class="screen_out">친구목록</strong><strong
								class="tit_friend">친구</strong>
							<ul class="list_friend" id="ul_friend">

							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="layer_foot">
				<div class="wrap_btn">
					<button class="btn_g" disabled="disabled" id="btn_gift_comp">
						<span class="wrap_thumb"><span class="inner_thumb"><img
								class="thumb_user"
								src="https://t1.kakaocdn.net/estoreweb/images/20220421091219/profile_default.png"
								alt="사용자"></span></span>선물하기
					</button>
				</div>
			</div>
		</div>
		<button type="button" class="btn_close" id="btn_friendList_close">
			<span class="ico_comm ico_orderclose">닫기</span>
		</button>
	</div>

	<script>
		// 친구목록 가져오기
		function getFriendJsonAjax() {
			sendRequest("friend_json_lib.jsp", null, callbackJson, "GET");
		}

		var radioVal;
		function callbackJson() {
			if (httpRequest.readyState == 4) {
				if (httpRequest.status == 200) {
					// json 데이터 응답  == 문자열
					var friendListJSON = this.responseText;
					// json -> js object 변환
					var friendListJsObject = JSON.parse(friendListJSON);
					var friendArray = friendListJsObject.friendListJSON;

					var ulContent = "";

					for (var i = 0; i < friendArray.length; i++) {
						var friend = friendArray[i];

						ulContent += "<li>";
						ulContent += "<input type=\"radio\" name=\"gb_sendid\" value = \"" + friend.fr_add +"\"";
						ulContent += "class = \"inp_g\">";
						ulContent += "<label class = \"lab_g\" for="+friend.fr_add+">";
						ulContent += "<span class=\"wrap_thumb\">";
						ulContent += "<span class=\"inner_thumb\">";
						if (friend.m_pimg == null) {
							ulContent += "<img src=\"https:t1.kakaocdn.net/estoreweb/images/20220421091219/profile_default.png\" class=\"thumb_user\" alt=\"사용자\">";
						} else {
							ulContent += "<img src="+friend.m_pimg+ " class=\"thumb_user\" alt=\"사용자\">";
						}
						ulContent += "</span>";
						ulContent += "</span>";
						ulContent += "<span class=\"txt_name\">";
						ulContent += friend.m_nn;
						ulContent += "</span></label></li>";

					} // for
					ulContent += "</table>";
					document.getElementById("ul_friend").innerHTML = ulContent;

					//버튼 비활성화 해제
					$("input[name='gb_sendid']:radio").change(function() {
						radioVal = $(this).val();
						$("#btn_gift_comp").removeAttr("disabled");
					});

				} else {
					alert("> Ajax 요청 실패 : " + httpRequest.status);
				}
			}
		}
		//친구 선택 후 선물하기 버튼 클릭 시
		//같은 이모티콘 같은 친구에게 중복선물 검사
		//선물하기 누르고 중복 되면 알람 중복안되면 모달창

		$("#btn_gift_comp").click(function() {
			$("#gift_layer").css("display", "block");
			$(".emoticon_layer.friend_layer").css("display", "none");
		})

		$("#btn_gift_close").click(function() {
			$(".dimmed_layer").css("display", "none");
			$("#gift_layer").css("display", "none");
		});

		dialog2 = $("#gift-form").dialog({
			autoOpen : false,
			height : 450,
			width : 350,
			modal : true,
			buttons : {},
			close : function() {
				form[0].reset();
			}
		});

		form2 = dialog2.find("form");

		$("#gift_comp").click(
				function() {
					$("#gift_emo_name").html($("#emo_name").html()); //이모티콘 이름
					$("#gift_sendid").val("qkreks12@daum.net"); //구매자 아이디
					$("#gift_price").val($("#fin_price").html());
					$("#gift_uesd_coupon").val(
							$("#sel_coupon_opt option:selected").html());
					$("#gift_getid").val(radioVal);

					$(".dimmed_layer").css("display", "none");
					$(".emoticon_layer.order_layer").css("display", "none");
					dialog2.dialog("open");
				});

		/* 			$("#modal_btn_gift_comp").click(function() {
		 alert("선물 완료!!!");
		 }) */
	</script>

	<script>
		$("#btn_gift").click(function() {
			$(".dimmed_layer").css("display", "block");
			$(".emoticon_layer.friend_layer").css("display", "block");
		})

		$("#btn_friendList_close").click(function() {
			$(".dimmed_layer").css("display", "none");
			$(".emoticon_layer.friend_layer").css("display", "none");
			$("#btn_gift_comp").attr("disabled", "disabled");
		})
	</script>

	<script>
		function giftCheck() {
			var params2 = {
				gb_emnum : $("#gift_emnum").val(),
				gb_sendid : $("#gift_sendid").val(),
				gb_getid : $("#gift_getid").val()
			};

			$.ajax({
				url : "/jspPro/kivew/giftcheck.do",
				dataType : "json",
				type : "GET",
				data : params2,
				cache : false,
				success : function(data, textStatus, jqXHR) {
					if (data.count == 0) {
						$("#giftForm").submit();
						alert("선물하기 완료!!!");
					}

					else {
						alert("친구가 이미 보유한 상품입니다. 다른 친구를 선택해 보세요!!");
						dialog2.dialog("close");
						$(".dimmed_layer").css("display", "block");
						$(".emoticon_layer.friend_layer").css("display",
								"block");

					}

				},
				error : function() {
					alert("ajax 에러");
				}
			});
		}
	</script>

	<script>
		//쿠폰 선택	
		$("#sel_coupon_opt")
				.change(
						function(event) {
							if ($("#sel_coupon_opt option:selected").val() == 1) {
								$(
										".order_layer .box_coupon .txt_opt .opt_percent")
										.html("20%");
								$(".order_layer .box_coupon .txt_opt .opt_name")
										.html("6월, 전상품 20% 할인 (20%)");

								var selPrice = parseInt($("#sel_price").html());
								var desPrice = selPrice / 100 * 20;
								var finPrice = selPrice - desPrice;
								$("#des_price").html(desPrice + "원"); //할인 가격
								$("#fin_price").html(finPrice + "원"); //최종 가격
							} else if ($("#sel_coupon_opt option:selected")
									.val() == 2) {
								$(
										".order_layer .box_coupon .txt_opt .opt_percent")
										.html("20%");
								$(".order_layer .box_coupon .txt_opt .opt_name")
										.html("항상 전상품 20% 할인 (20%)");

								var selPrice = parseInt($("#sel_price").html());
								var desPrice = selPrice / 100 * 20;
								var finPrice = selPrice - desPrice;
								$("#des_price").html(desPrice + "원"); //할인 가격
								$("#fin_price").html(finPrice + "원"); //최종 가격

							} else {
								$(
										".order_layer .box_coupon .txt_opt .opt_percent")
										.html(" ");
								$(".order_layer .box_coupon .txt_opt .opt_name")
										.html("쿠폰 선택 안함");

								var selPrice = parseInt($("#sel_price").html());
								var desPrice = 0;
								var finPrice = selPrice - desPrice;
								$("#des_price").html(desPrice + "원");
								$("#fin_price").html(finPrice + "원");
							}
						});
	</script>


	<script>
		//공유창
		$("button.btn_grpshare:first-child()").click(function() {
			$(".social_comm_p").css("display", "block");
		});

		$("button.btn_close").click(function() {
			$(".social_comm_p").css("display", "none");
		});
	</script>

	<script>
		//상품, 해지 및 환불 토글

		var deg1 = 180;
		var deg2 = 180;
		$("#btn_guide1").click(function() {
			$("#guide1 dd").toggle();
			deg1 += 180;
			$("#guide_open1").css("transform", "rotate(" + deg1 + "deg)");

		})

		$("#btn_guide2").click(function() {
			$("#guide2 dd").toggle();
			deg2 += 180;
			$("#guide_open2").css("transform", "rotate(" + deg2 + "deg)");
		})
	</script>

	<script>
		//이모티콘 보내기 로그인 알람창

		$(".area_emoticon .list_emoticon .link_emoticon").click(function() {
			$(".dimmed_layer").css("display", "block");
			$("#alert_logon").css("display", "block");
		});

		$("#btn_layer_close").click(function() {
			$(".dimmed_layer").css("display", "none");
			$("#alert_logon").css("display", "none");
		});

		$("#alert_close").click(function() {
			$(".dimmed_layer").css("display", "none");
			$("#alert_logon").css("display", "none");
		});
	</script>

	<script>
		//구매 이력 확인 ajax
		$("#btn_buy").click(function(event) {
			var params = $("#buy_check").serialize();

			$.ajax({
				url : "/jspPro/kivew/buycheck.do",
				dataType : "json",
				type : "GET",
				data : params,
				cache : false,
				success : function(data, textStatus, jqXHR) {
					if (data.count == 0) { //구매 하지 않음
						$(".dimmed_layer").css("display", "block");
						$("#buy_layer").css("display", "block");
					} else {//이미 구매함
						$(".dimmed_layer").css("display", "block");
						$("#alert_buyCheck").css("display", "block");
					}
				},
				error : function() {
					alert("ajax 에러");
				}
			});

		});

		$("#btn_order_close").click(function() {
			$(".dimmed_layer").css("display", "none");
			$(".emoticon_layer.order_layer").css("display", "none");
		})
	</script>


	<script>
		//구매확인 창 닫기버튼		
		$("#btn_buyCheck_close").click(function() {
			$(".dimmed_layer").css("display", "none");
			$("#alert_buyCheck").css("display", "none");
		})

		$("#btn_buyCheck_ok").click(function() {
			$(".dimmed_layer").css("display", "none");
			$("#alert_buyCheck").css("display", "none");
		})
	</script>

	<script>
		$("#open_coupon_opt").click(function() {
			$(".order_layer .box_coupon .sel_opt").css("display", "block");
		});
	</script>

	<script>
		$("#inpAgree").change(function() {
			if ($("#inpAgree").is(":checked")) {
				$("#btn_comp").removeAttr("disabled");
			} else {
				$("#btn_comp").prop("disabled", true);
			}
		})
	</script>

	<script>
		//결제 모달창
		dialog = $("#dialog-form").dialog({
			autoOpen : false,
			height : 450,
			width : 350,
			modal : true,
			buttons : {},
			close : function() {
				form[0].reset();
			}
		});

		form = dialog.find("form");

		$("#btn_comp").click(function() {
			$("#buy_emo_name").html($("#emo_name").html()); //이모티콘 이름
			$("#buy_id").val("qkreks12@daum.net"); //구매자 아이디
			$("#buy_price").val($("#fin_price").html());
			$("#uesd_coupon").val($("#sel_coupon_opt option:selected").html());

			$(".dimmed_layer").css("display", "none");
			$(".emoticon_layer.order_layer").css("display", "none");
			dialog.dialog("open");
		});

		$("#btn_buy_comp").click(function() {
			alert("결제 완료!!!");
		})
	</script>

	<script>
		/* 검색 관련 */

		// 검색 버튼 클릭 
		$(".link_search").on("click", function() {
			$(".search_wrap").css("display", "block");
			$(".k_head").css("z-index", "10");
			$("#kakaoGnb").css("position", "relative");
			$("#kakaoGnb").css("z-index", "10");
			$(".link_search").css({
				"cursor" : "default",
				"display" : "none"
			});
			$(".btn_delete").css({
				"cursor" : "default",
				"display" : "none"
			});
		});

		//검색창 밖 클릭시 검색창 제거 + 입력했던 값 제거
		$(".dim_layer").on("click", function() {
			$(".search_wrap").css("display", "none");
			$(".link_search").css({
				"cursor" : "pointer",
				"display" : "block"
			});
			$(".tf_search").val("");
		});

		//검색 삭제 버튼
		$(".tf_search").on("keyup", function() {
			$(".btn_delete").css("display", "");
		});

		// 검색어 삭제 
		$(".btn_delete").on("click", function() {
			$(".tf_search").val("");
			$(".btn_delete").css("display", "none");
		});

		/* 여기서부터는 임시로 한 거임 */
		/* 쿠폰알림창 */
		$(".btn_close").on("click", function() {
			$(".tooltip_layer").css("display", "none");
		});

		/* 띠 배너 있는 경우 */
		//css 2123라인, 2138라인 필요
		$(".btn_close").on("click", function() {
			$(".kakaoTopbnr").css("display", "none");
			$(".emoticon_head").css("top", "0px");
		});

		/* 프로필 */
		$(".link_my").on("click", function() {
			$(".profile_layer").toggle();
		});
	</script>
</body>
</html>