<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<head>
<meta charset="UTF-8">

<link href="${path}/resources/main/main.css" rel="stylesheet"
	type="text/css">
<link href="${path}/resources/detail/detail.css" rel="stylesheet"
	type="text/css">
<link href="${path}/resources/mypage/mypage.css" rel="stylesheet"
	type="text/css">
<link href="${path}/resources/detail/button.css" rel="stylesheet"
	type="text/css">
<!-- include libraries(jQuery, bootstrap) -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"
	rel="stylesheet">
<script src="https://code.jquery.c om/jquery-3.5.1.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="https://kit.fontawesome.com/81816a43c2.js"
	crossorigin="anonymous"></script>
</head>

<jsp:include page="../../mainBase.jsp" />
<div id="books_contents">
	<div id="contents_wrap">
		<jsp:include page="myPageNav.jsp" />
		<section id="page_myridi">
			<h2 class="indent_hidden">마이리디 홈</h2>
			<article class="myridi_header">
				<div class="account_info_wrapper">
					<div class="info_id_email">
						<h3 class="info_id museo_sans">qead753951</h3>
						<p class="info_email museo_sans">qead753951@naver.com</p>
					</div>
					<a href="/account/logout" class="btn_logout">로그아웃</a>
				</div>
				<div class="asset_info_wrapper">
					<ul class="table_wrapper">
						<li class="table_cell">
							<div class="info_wrapper">
								<h4 class="info_title">
									<span class="icon-coin_2"></span><span class="text">리디캐시</span>
								</h4>
								<p class="info_amount">
									<span class="amount museo_sans">0</span>원
								</p>
								<a class="info_link" href="/order/history_cash">리디캐시 더보기</a>
							</div>
							<p class="more_info">
								<a class="checkout_link" href="/order/checkout/cash">리디캐시 충전
									<span class="icon-arrow_9_right"></span>
								</a>
							</p>
						</li>
						<li class="table_cell">
							<div class="info_wrapper">
								<h4 class="info_title">
									<span class="icon-point_1"></span><span class="text">리디포인트</span>
								</h4>
								<p class="info_amount">
									<span class="amount museo_sans">0</span>원
								</p>
								<a class="info_link" href="/order/history_point">리디포인트 더보기</a>
							</div>
							<p class="more_info">
								소멸 예정 <strong class="period_point_sum"><span
									class="point_num museo_sans">0</span>원</strong>
							</p>
						</li>
						<li class="table_cell">
							<div class="info_wrapper">
								<h4 class="info_title">
									<span class="icon-coupon_1"></span><span class="text">쿠폰</span>
								</h4>
								<p class="info_amount">
									<span class="amount museo_sans">0</span>개
								</p>
								<a class="info_link" href="/coupon/">쿠폰 더보기</a>
							</div>
							<p class="more_info">
								<button type="button"
									class="checkout_link js_open_register_popup_button">
									쿠폰 등록 <span class="icon-arrow_9_right"></span>
								</button>
							</p>


						</li>
					</ul>
				</div>
			</article>
			<article class="myridi_option_info_box"></article>

			<article class="myridi_recents">
				<div class="rui_title_1">
					<h3 class="title_text">최근 본 책</h3>
					<div class="more_button_wrapper">
						<a class="more_button" href="/library/recents"><span
							class="title">전체 보기</span> <span class="right_arrow_icon"></span></a>
					</div>
				</div>
				

				<div class="book_macro_110 book_macro_portrait book_macro_column_5">
					<div class="book_thumbnail_wrapper"
						data-book_id_for_tracking="505001532">
						<div class="book_thumbnail">
							<div class="thumbnail_image">
								<img class="thumbnail lazyloaded"
									src="${path}/resources/detail/xxlarge.jpg" alt="진격의 거인 1권"
									data-src="//img.ridicdn.net/cover/505022801/large"
									data-original-cover="//img.ridicdn.net/cover/505022801/large">
								<span class="border"></span>
							</div>
							<a class="thumbnail_btn " href="/books/505001532"
								data-track-params="" data-track-type=""> <span
								class="indent_hidden">상세페이지 바로가기</span>
							</a>


						</div>
					</div>

					<div class="book_metadata_wrapper">

						<h3 class="book_metadata meta_title ">
							<a class="title_link " href="/books/505001532"
								data-track-params="" data-track-type=""> <span
								class="title_text js_highlight_helper"> 진격의 거인 </span>
							</a>
						</h3>

						<p class="book_metadata author ">
							<a class="js_author_detail_link author_detail_link"
								href="/author/10248">이사야마 하지메</a>
						</p>

					</div>

				</div>
				
				<div class="book_macro_110 book_macro_portrait book_macro_column_5">




					<div class="book_thumbnail_wrapper"
						data-book_id_for_tracking="1019018215">
						<div class="book_thumbnail">
							<div class="thumbnail_image">
								<img class="thumbnail lazyloaded"
									src="${path}/resources/detail/xxlarge.jpg" alt="체인소 맨 1권"
									data-src="//img.ridicdn.net/cover/1019026665/large"
									data-original-cover="//img.ridicdn.net/cover/1019026665/large">
								<span class="border"></span>
							</div>

							<a class="thumbnail_btn " href="/books/1019018215"
								data-track-params="" data-track-type=""> <span
								class="indent_hidden">상세페이지 바로가기</span>
							</a>


						</div>
					</div>

					<div class="book_metadata_wrapper">

						<h3 class="book_metadata meta_title ">
							<a class="title_link " href="/books/1019018215"
								data-track-params="" data-track-type=""> <span
								class="title_text js_highlight_helper"> 체인소 맨 </span>
							</a>
						</h3>




						<p class="book_metadata author ">
							<a class="js_author_detail_link author_detail_link"
								href="/author/90000">후지모토 타츠키</a>
						</p>
		</div>

				</div>
				
				<div class="book_macro_110 book_macro_portrait book_macro_column_5">




					<div class="book_thumbnail_wrapper"
						data-book_id_for_tracking="2127000085">
						<div class="book_thumbnail">
							<div class="thumbnail_image">
								<img class="thumbnail lazyloaded"
									src="${path}/resources/detail/xxlarge.jpg" alt="관종의 조건"
									data-src="//img.ridicdn.net/cover/2127000085/large"
									data-original-cover="//img.ridicdn.net/cover/2127000085/large">
								<span class="border"></span>
							</div>
							<a class="thumbnail_btn " href="/books/2127000085"
								data-track-params="" data-track-type=""> <span
								class="indent_hidden">상세페이지 바로가기</span>
							</a>


						</div>
					</div>
					<div class="book_metadata_wrapper">

						<h3 class="book_metadata meta_title ">
							<a class="title_link " href="/books/2127000085"
								data-track-params="" data-track-type=""> <span
								class="title_text js_highlight_helper"> 관종의 조건 </span>
							</a>
						</h3>
						<p class="book_metadata author ">
							<a class="js_author_detail_link author_detail_link"
								href="/author/7189">임홍택</a>
						</p>
					</div>

				</div>
				<hr class="clear_both">
			</article>
		</section>
	</div>

</div>

<body>

</body>
</html>