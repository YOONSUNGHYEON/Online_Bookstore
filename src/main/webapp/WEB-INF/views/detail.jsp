<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<head>
<meta charset="UTF-8">
<title>detail page</title>
<link href="${path}/resources/main/main.css" rel="stylesheet"
	type="text/css">
<link href="${path}/resources/detail/detail.css" rel="stylesheet"
	type="text/css">
<link href="${path}/resources/detail/button.css" rel="stylesheet"
	type="text/css">
<link href="${path}/resources/mypage/page_base.css" rel="stylesheet"
	type="text/css">

<!-- include libraries(jQuery, bootstrap) -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="https://kit.fontawesome.com/81816a43c2.js"
	crossorigin="anonymous"></script>
<script type="text/javascript">
function show(num) { // <img>에 이미지 달기

	
	}
function hide(num) { // <img>에 이미지 제거
		
	}
function fun1(num){
	for( var x=0; x <=num; x++ ) {
 			document.getElementById("starimg"+x).src="${path}/resources/detail/yellow_star.png";
 		
	}
}
</script>
</head>
<jsp:include page="mainBase.jsp" />
<body>
	<div class="top-category">
		<div style="max-width: 1000px; margin: 0 auto;">
			<ul class="catenav nav nav-tabs">
				<li class="nav-item"><a class="nav-link" href="/"><i
						class="fas fa-bars"></i></a></li>
				<li class="nav-item"><a class="nav-link active" href="/">일반</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="#">로맨스</a></li>
				<li class="nav-item"><a class="nav-link" href="#">판타지</a></li>
				<li class="nav-item"><a class="nav-link" href="#">만화</a></li>
				<li class="nav-item"><a class="nav-link" href="#">BL</a></li>
			</ul>
		</div>
	</div>
	<div id="page_detail">
		<div class="detail_wrap">
			<div class="detail_body_wrap">
				<section class="detail_body">
					<h2 class="indent_hidden title"></h2>
					<article class="detail_header trackable">
						<div class="header_info_wrap">
							<p class="info_category_wrap">
								<a id="category" href="/category/200"></a> <span
									aria-hidden="true" class="icon-arrow_2_right"></span> <a
									href="/category/220"></a>
							</p>
							<div class="info_title_wrap">
								<h3 class="title info_title_wrap"></h3>
								<h4 id="subtitle" class="info_title_sub_wrap"></h4>
							</div>
							<div class="info_metadata_wrap">
								<p class="metadata_rate">
									<span class="RSGBookMetadata_StarRate"><span
										class="StarRate_IconBox"><span
											class="StarRate_IconFill" style="width: 100%"></span></span><span
										class="StarRate_Score">5점</span><span
										class="StarRate_ParticipantCount">1<span
											class="StarRate_ParticipantCount_Unit">명</span></span><span
										class="StarRate_HiddenElement">참여</span></span>
								</p>
							</div>
							<div class="info_metadata_wrap">
								<p class="metadata metadata_writer">
									<span class="metadata_item author_item_wrapper"><a id="author"
										class="js_author_detail_link author_detail_link"
										href="/author/113027"></a> 저</span>
										<div id="translater"></div>

								</p>
								<p class="metadata file_info publisher_info">
									<a id="publisher" class="publisher_detail_link" href=""></a>
									출판
								</p>
							</div>
							<div id="select_info_component"></div>
							<div id="notice_component">
								<ul class="NoticeWrapper"></ul>
							</div>
							<div class="info_price_wrap">
								<div class="info_price_table">
									<div>
										<table class="price_table normal_price_table">
											<tbody id="price">
												
											</tbody>
										</table>
									</div>
								</div>
							</div>
							<div class="info_buttons_wrap">
								<ul class="info_buttons rui_button_group_6">
									<li class="rui_button_item">
										<button type="button" class="rui_button_white_50 btn_wish">
											<img class="main_book_image"
												src="${path}/resources/detail/heart.png"> <span
												class="indent_hidden">위키리스트에 추가</span>
										</button>
									</li>
									<li class="rui_button_item">
										<button type="button" class="rui_button_white_50 btn_wish">
											<img class="main_book_image"
												src="${path}/resources/detail/cart.png"> <span
												class="indent_hidden">카트에 담기</span>
										</button>
									</li>
									<li class="rui_button_item"><a
										class="rui_button_white_50 btn_wish" href=""><img
											class="main_book_image"
											src="${path}/resources/detail/box.png"><span
											class="indent_hidden">선물하기</span> </a></li>
									<li class="rui_button_item"><a
										class="rui_button_blue_50 btn_buy" href=""> 구매하기 </a></li>
								</ul>
							</div>
						</div>
						<div class="header_thumbnail_wrap">
							<div
								class="header_thumbnail book_macro_200 detail_scalable_thumbnail">
								<div class="book_thumbnail_wrapper"
									data-book_id_for_tracking="1691000080">
									<div class="book_thumbnail">
										<div id="image" class="main_book_image_wrapper">
											
											<span class="border"></span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</article>
					<article class="detail_series detail_box_module">
						<div class="rsg_title01">
							<h3 class="title_text">책 소개</h3>
						</div>
						<div id="introduce_book"
							class="introduce_section js_introduce_section">
							<p id="description" class="introduce_paragraph folded"></p>
						</div>
					</article>
					<article class="detail_review detail_box_module">
						<div class="rsg_title01">
							<h3 class="title_text">리뷰</h3>
						</div>
						<div class="review_info_section">
							<div class="review_input_left">
								<h4 class="buyer_score_title">구매자 별점</h4>
								<p class="buyer_score">
									<span class="score">4.5</span> <span class="indent_hidden">점</span>
								</p>
								<p class="score_people_num">
									<strong>2</strong>명이 평가함
								</p>
							</div>
							<div class="review_input_right">
								<h4 class="indent_hidden">리뷰 작성 영역</h4>
								<div class="star_rate_wrapper">
									<div class="star_tip_wrapper">
										<p class="tip_title">이 책을 평가해주세요!</p>

									</div>
									<div class="star_rate_touch_area">
										<span class="separate_bar active"></span> <label for="star1"
											class="js_star" data-rating="1"> <img id="starimg1"
											src="${path}/resources/detail/gray_star.png"
											onclick="fun1(1);"><span class="indent_hidden">별
												1개</span>
										</label> <span class="separate_bar active"></span> <label for="star2"
											class="js_star" data-rating="2"><img id="starimg2"
											onclick="fun1(2);"
											src="${path}/resources/detail/gray_star.png"> <span
											class="indent_hidden">별 2개</span> </label> <span
											class="separate_bar active"></span> <label for="star3"
											class="js_star" data-rating="3"> <img id="starimg3"
											onclick="fun1(3);"
											src="${path}/resources/detail/gray_star.png"><span
											class="indent_hidden">별 3개</span>
										</label> <span class="separate_bar active"></span> <label for="star4"
											src="${path}/resources/detail/gray_star.png"><img
											id="starimg4" onclick="fun1(4);"
											src="${path}/resources/detail/gray_star.png"><span
											class="indent_hidden">별 4개</span> </label> <span
											class="separate_bar active"></span> <label for="star5"
											class="js_star" data-rating="5"> <img id="starimg5"
											onclick="fun1(5);"
											src="${path}/resources/detail/gray_star.png"><span
											class="indent_hidden">별 5개</span>
										</label>
									</div>
								</div>
								<form:form method="post" modelAttribute="reviewModel">
									<div class="review_textarea_wrapper">
										<textarea class="review_input_textarea" name="content"
											title="리뷰 입력"
											placeholder="리뷰 작성 시 광고 및 욕설, 비속어나 타인을 비방하는 문구를 사용하시면 비공개될 수 있습니다."
											style="overflow: hidden; overflow-wrap: break-word; resize: none; height: 112px;"></textarea>
									</div>
									<div class="buttons_wrapper">
										<div class="write_review_bottom">

											<div class="write_button_wrapper">
												<button type="submit" class="rui_button_blue_30">리뷰
													남기기</button>
											</div>
										</div>
									</div>
								</form:form>
							</div>
						</div>
						<div id="review_list_section">
							<div class="rui_tab_and_order">
								<ul class="rui_tab_2 js_review_list_filter_wrapper">
									<li class="tab_list"><a href="#"
										class="js_select_tab_option active" data-filter="buyer_only">
											구매자 </a></li>
									<li class="tab_list"><a href="#"
										class="js_select_tab_option" data-filter="all"> 전체 </a></li>
								</ul>
								<ul class="rui_order js_review_list_order_wrapper">
									<li class="order_list"><a href="#"
										class="js_select_tab_option active" data-order="latest">최신순</a></li>
									<li class="order_list"><a href="#"
										class="js_select_tab_option" data-order="like">공감순</a></li>
									<li class="order_list"><a href="#"
										class="js_select_tab_option" data-order="high_rating">별점
											높은순</a></li>
									<li class="order_list"><a href="#"
										class="js_select_tab_option" data-order="low_rating">별점
											낮은순</a></li>
								</ul>
							</div>
							<div class="review_list_wrapper js_review_list_wrapper active">
								<ul id="reviews">

								</ul>
								<div class="spinner_wrapper"></div>
								<div class="spin"></div>
							</div>
						</div>
					</article>
				</section>
			</div>
			<div class="detail_aside_wrap">
				<div class="aside_banner">
					<a href=""> <img src="${path}/resources/detail/aside_img.jpg"
						alt="리디셀렉트 12월 업데이트">
					</a>
				</div>
				<div class="aside_contents aside_best">
					<h2 class="aside_contents_title">경제일반 베스트셀러</h2>
					<ul>
						<li><a
							href="/books/754029826?_s=category_best&amp;_s_id=2127000085"
							class="trackable"
							data-track-params="{&quot;section&quot;:&quot;bestseller&quot;,&quot;idx&quot;:0,&quot;u_id&quot;:&quot;qead753951&quot;,&quot;type&quot;:&quot;impression&quot;,&quot;tags&quot;:{&quot;name&quot;:&quot;\ud2b8\ub80c\ub4dc \ucf54\ub9ac\uc544 2021&quot;,&quot;brand&quot;:&quot;\ubbf8\ub798\uc758 \ucc3d&quot;,&quot;genre&quot;:&quot;general&quot;,&quot;genre_kor&quot;:&quot;\uc77c\ubc18\ub3c4\uc11c&quot;,&quot;category&quot;:&quot;\uc77c\ubc18\ub3c4\uc11c\/\uacbd\uc81c\uc77c\ubc18&quot;,&quot;price&quot;:&quot;12600&quot;,&quot;quantity&quot;:1,&quot;rep_id&quot;:&quot;&quot;,&quot;rep_title&quot;:&quot;&quot;,&quot;rcmd_id&quot;:&quot;&quot;,&quot;is_checkpoint&quot;:false,&quot;is_last_item&quot;:false},&quot;obj_id&quot;:&quot;754029826&quot;}"
							data-track-type="beacon,ga"> <span class="best_rank">1위
							</span> <span class="best_title"> <span class="title"> 트렌드
										코리아 2021 </span> <span class="title_fadeout"></span>
							</span>
						</a></li>
						<li><a
							href="/books/4139000007?_s=category_best&amp;_s_id=2127000085"
							class="trackable"
							data-track-params="{&quot;section&quot;:&quot;bestseller&quot;,&quot;idx&quot;:1,&quot;u_id&quot;:&quot;qead753951&quot;,&quot;type&quot;:&quot;impression&quot;,&quot;tags&quot;:{&quot;name&quot;:&quot;\ubbf8\uc2a4\ud130 \ub9c8\ucf13 2021&quot;,&quot;brand&quot;:&quot;\ud398\uc774\uc9c02\ubd81\uc2a4&quot;,&quot;genre&quot;:&quot;general&quot;,&quot;genre_kor&quot;:&quot;\uc77c\ubc18\ub3c4\uc11c&quot;,&quot;category&quot;:&quot;\uc77c\ubc18\ub3c4\uc11c\/\uacbd\uc81c\uc77c\ubc18&quot;,&quot;price&quot;:&quot;10800&quot;,&quot;quantity&quot;:1,&quot;rep_id&quot;:&quot;&quot;,&quot;rep_title&quot;:&quot;&quot;,&quot;rcmd_id&quot;:&quot;&quot;,&quot;is_checkpoint&quot;:false,&quot;is_last_item&quot;:false},&quot;obj_id&quot;:&quot;4139000007&quot;}"
							data-track-type="beacon,ga"> <span class="best_rank">2위
							</span> <span class="best_title"> <span class="title"> 미스터
										마켓 2021 </span> <span class="title_fadeout"></span>
							</span>
						</a></li>
						<li><a
							href="/books/1691000076?_s=category_best&amp;_s_id=2127000085"
							class="trackable"
							data-track-params="{&quot;section&quot;:&quot;bestseller&quot;,&quot;idx&quot;:2,&quot;u_id&quot;:&quot;qead753951&quot;,&quot;type&quot;:&quot;impression&quot;,&quot;tags&quot;:{&quot;name&quot;:&quot;\ubc15\uacf0\ud76c \ud22c\uc790\ubc95&quot;,&quot;brand&quot;:&quot;\uc778\ud50c\ub8e8\uc5d4\uc15c&quot;,&quot;genre&quot;:&quot;general&quot;,&quot;genre_kor&quot;:&quot;\uc77c\ubc18\ub3c4\uc11c&quot;,&quot;category&quot;:&quot;\uc77c\ubc18\ub3c4\uc11c\/\uacbd\uc81c\uc77c\ubc18&quot;,&quot;price&quot;:&quot;11700&quot;,&quot;quantity&quot;:1,&quot;rep_id&quot;:&quot;&quot;,&quot;rep_title&quot;:&quot;&quot;,&quot;rcmd_id&quot;:&quot;&quot;,&quot;is_checkpoint&quot;:false,&quot;is_last_item&quot;:false},&quot;obj_id&quot;:&quot;1691000076&quot;}"
							data-track-type="beacon,ga"> <span class="best_rank">3위
							</span> <span class="best_title"> <span class="title"> 박곰희
										투자법 </span> <span class="title_fadeout"></span>
							</span>
						</a></li>
						<li><a
							href="/books/4139000005?_s=category_best&amp;_s_id=2127000085"
							class="trackable"
							data-track-params="{&quot;section&quot;:&quot;bestseller&quot;,&quot;idx&quot;:3,&quot;u_id&quot;:&quot;qead753951&quot;,&quot;type&quot;:&quot;impression&quot;,&quot;tags&quot;:{&quot;name&quot;:&quot;\ubd80\uc758 \ub300\uc774\ub3d9&quot;,&quot;brand&quot;:&quot;\ud398\uc774\uc9c02\ubd81\uc2a4&quot;,&quot;genre&quot;:&quot;general&quot;,&quot;genre_kor&quot;:&quot;\uc77c\ubc18\ub3c4\uc11c&quot;,&quot;category&quot;:&quot;\uc77c\ubc18\ub3c4\uc11c\/\uacbd\uc601\uc77c\ubc18&quot;,&quot;price&quot;:&quot;10800&quot;,&quot;quantity&quot;:1,&quot;rep_id&quot;:&quot;&quot;,&quot;rep_title&quot;:&quot;&quot;,&quot;rcmd_id&quot;:&quot;&quot;,&quot;is_checkpoint&quot;:false,&quot;is_last_item&quot;:false},&quot;obj_id&quot;:&quot;4139000005&quot;}"
							data-track-type="beacon,ga"> <span class="best_rank">4위
							</span> <span class="best_title"> <span class="title"> 부의
										대이동 </span> <span class="title_fadeout"></span>
							</span>
						</a></li>
						<li><a
							href="/books/1314000079?_s=category_best&amp;_s_id=2127000085"
							class="trackable"
							data-track-params="{&quot;section&quot;:&quot;bestseller&quot;,&quot;idx&quot;:4,&quot;u_id&quot;:&quot;qead753951&quot;,&quot;type&quot;:&quot;impression&quot;,&quot;tags&quot;:{&quot;name&quot;:&quot;\uc874\ub9ac\uc758 \uae08\uc735\ubb38\ub9f9 \ud0c8\ucd9c&quot;,&quot;brand&quot;:&quot;\ubca0\uac00\ubd81\uc2a4&quot;,&quot;genre&quot;:&quot;general&quot;,&quot;genre_kor&quot;:&quot;\uc77c\ubc18\ub3c4\uc11c&quot;,&quot;category&quot;:&quot;\uc77c\ubc18\ub3c4\uc11c\/\uacbd\uc81c\uc77c\ubc18&quot;,&quot;price&quot;:&quot;11200&quot;,&quot;quantity&quot;:1,&quot;rep_id&quot;:&quot;&quot;,&quot;rep_title&quot;:&quot;&quot;,&quot;rcmd_id&quot;:&quot;&quot;,&quot;is_checkpoint&quot;:false,&quot;is_last_item&quot;:false},&quot;obj_id&quot;:&quot;1314000079&quot;}"
							data-track-type="beacon,ga"> <span class="best_rank">5위
							</span> <span class="best_title"> <span class="title"> 존리의
										금융문맹 탈출 </span> <span class="title_fadeout"></span>
							</span>
						</a></li>
						<li><a
							href="/books/1811175533?_s=category_best&amp;_s_id=2127000085"
							class="trackable"
							data-track-params="{&quot;section&quot;:&quot;bestseller&quot;,&quot;idx&quot;:5,&quot;u_id&quot;:&quot;qead753951&quot;,&quot;type&quot;:&quot;impression&quot;,&quot;tags&quot;:{&quot;name&quot;:&quot;7\ub300 \uc774\uc288\ub85c \ubcf4\ub294 \ub3c8\uc758 \uc5ed\uc0ac 2&quot;,&quot;brand&quot;:&quot;\ub85c\ud06c\ubbf8\ub514\uc5b4&quot;,&quot;genre&quot;:&quot;general&quot;,&quot;genre_kor&quot;:&quot;\uc77c\ubc18\ub3c4\uc11c&quot;,&quot;category&quot;:&quot;\uc77c\ubc18\ub3c4\uc11c\/\uacbd\uc81c\uc77c\ubc18&quot;,&quot;price&quot;:&quot;9900&quot;,&quot;quantity&quot;:1,&quot;rep_id&quot;:&quot;&quot;,&quot;rep_title&quot;:&quot;&quot;,&quot;rcmd_id&quot;:&quot;&quot;,&quot;is_checkpoint&quot;:false,&quot;is_last_item&quot;:false},&quot;obj_id&quot;:&quot;1811175533&quot;}"
							data-track-type="beacon,ga"> <span class="best_rank">6위
							</span> <span class="best_title"> <span class="title"> 7대
										이슈로 보는 돈의 역사 2 </span> <span class="title_fadeout"></span>
							</span>
						</a></li>
						<li><a
							href="/books/1691000072?_s=category_best&amp;_s_id=2127000085"
							class="trackable"
							data-track-params="{&quot;section&quot;:&quot;bestseller&quot;,&quot;idx&quot;:6,&quot;u_id&quot;:&quot;qead753951&quot;,&quot;type&quot;:&quot;impression&quot;,&quot;tags&quot;:{&quot;name&quot;:&quot;\ubd80\uc758 \uace8\ub4e0\ud0c0\uc784&quot;,&quot;brand&quot;:&quot;\uc778\ud50c\ub8e8\uc5d4\uc15c&quot;,&quot;genre&quot;:&quot;general&quot;,&quot;genre_kor&quot;:&quot;\uc77c\ubc18\ub3c4\uc11c&quot;,&quot;category&quot;:&quot;\uc77c\ubc18\ub3c4\uc11c\/\uacbd\uc81c\uc77c\ubc18&quot;,&quot;price&quot;:&quot;12800&quot;,&quot;quantity&quot;:1,&quot;rep_id&quot;:&quot;&quot;,&quot;rep_title&quot;:&quot;&quot;,&quot;rcmd_id&quot;:&quot;&quot;,&quot;is_checkpoint&quot;:false,&quot;is_last_item&quot;:false},&quot;obj_id&quot;:&quot;1691000072&quot;}"
							data-track-type="beacon,ga"> <span class="best_rank">7위
							</span> <span class="best_title"> <span class="title"> 부의
										골든타임 </span> <span class="title_fadeout"></span>
							</span>
						</a></li>
						<li><a
							href="/books/2127000085?_s=category_best&amp;_s_id=2127000085"
							class="trackable"
							data-track-params="{&quot;section&quot;:&quot;bestseller&quot;,&quot;idx&quot;:7,&quot;u_id&quot;:&quot;qead753951&quot;,&quot;type&quot;:&quot;impression&quot;,&quot;tags&quot;:{&quot;name&quot;:&quot;\uad00\uc885\uc758 \uc870\uac74&quot;,&quot;brand&quot;:&quot;\uc6e8\uc77c\ubd81&quot;,&quot;genre&quot;:&quot;general&quot;,&quot;genre_kor&quot;:&quot;\uc77c\ubc18\ub3c4\uc11c&quot;,&quot;category&quot;:&quot;\uc77c\ubc18\ub3c4\uc11c\/\uacbd\uc81c\uc77c\ubc18&quot;,&quot;price&quot;:&quot;11340&quot;,&quot;quantity&quot;:1,&quot;rep_id&quot;:&quot;&quot;,&quot;rep_title&quot;:&quot;&quot;,&quot;rcmd_id&quot;:&quot;&quot;,&quot;is_checkpoint&quot;:false,&quot;is_last_item&quot;:false},&quot;obj_id&quot;:&quot;2127000085&quot;}"
							data-track-type="beacon,ga"> <span class="best_rank">8위
							</span> <span class="best_title"> <span class="title"> 관종의
										조건 </span> <span class="title_fadeout"></span>
							</span>
						</a></li>
						<li><a
							href="/books/1890000206?_s=category_best&amp;_s_id=2127000085"
							class="trackable"
							data-track-params="{&quot;section&quot;:&quot;bestseller&quot;,&quot;idx&quot;:8,&quot;u_id&quot;:&quot;qead753951&quot;,&quot;type&quot;:&quot;impression&quot;,&quot;tags&quot;:{&quot;name&quot;:&quot;\ucd9c\uadfc\uae38 \ubd80\uc790 \uc218\uc5c5: \ud2b8\ub80c\ub4dc \ud3b8&quot;,&quot;brand&quot;:&quot;\ud55c\ube5b\ube44\uc988&quot;,&quot;genre&quot;:&quot;general&quot;,&quot;genre_kor&quot;:&quot;\uc77c\ubc18\ub3c4\uc11c&quot;,&quot;category&quot;:&quot;\uc77c\ubc18\ub3c4\uc11c\/\uacbd\uc81c\uc77c\ubc18&quot;,&quot;price&quot;:&quot;11850&quot;,&quot;quantity&quot;:1,&quot;rep_id&quot;:&quot;&quot;,&quot;rep_title&quot;:&quot;&quot;,&quot;rcmd_id&quot;:&quot;&quot;,&quot;is_checkpoint&quot;:false,&quot;is_last_item&quot;:false},&quot;obj_id&quot;:&quot;1890000206&quot;}"
							data-track-type="beacon,ga"> <span class="best_rank">9위
							</span> <span class="best_title"> <span class="title"> 출근길
										부자 수업: 트렌드 편 </span> <span class="title_fadeout"></span>
							</span>
						</a></li>
						<li><a
							href="/books/372006655?_s=category_best&amp;_s_id=2127000085"
							class="trackable"
							data-track-params="{&quot;section&quot;:&quot;bestseller&quot;,&quot;idx&quot;:9,&quot;u_id&quot;:&quot;qead753951&quot;,&quot;type&quot;:&quot;impression&quot;,&quot;tags&quot;:{&quot;name&quot;:&quot;\uc8fc\uc2dd\ud558\ub294 \ub9c8\uc74c&quot;,&quot;brand&quot;:&quot;\uc720\uc601&quot;,&quot;genre&quot;:&quot;general&quot;,&quot;genre_kor&quot;:&quot;\uc77c\ubc18\ub3c4\uc11c&quot;,&quot;category&quot;:&quot;\uc77c\ubc18\ub3c4\uc11c\/\uc7ac\ud14c\ud06c_\uae08\uc735_\ubd80\ub3d9\uc0b0&quot;,&quot;price&quot;:&quot;12600&quot;,&quot;quantity&quot;:1,&quot;rep_id&quot;:&quot;&quot;,&quot;rep_title&quot;:&quot;&quot;,&quot;rcmd_id&quot;:&quot;&quot;,&quot;is_checkpoint&quot;:false,&quot;is_last_item&quot;:true},&quot;obj_id&quot;:&quot;372006655&quot;}"
							data-track-type="beacon,ga"> <span class="best_rank">10위
							</span> <span class="best_title"> <span class="title">
										주식하는 마음 </span> <span class="title_fadeout"></span>
							</span>
						</a></li>
					</ul>
					<a class="best_more_btn" href="/category/bestsellers/220">더보기<span
						class="icon-arrow_1_right"></span></a>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp" />

</body>
<script type="text/javascript">

var id = ${id}

$.getJSON('/api/detailbook/'+id,function(rdata){
 $.each(rdata,function(index,item){              
var price = '<tr>'+
			'<th class="price_title" rowspan="3">구매</th>'+
			'<td class="price_type">종이책 정가</td>'+
			'<td class="book_price"><span class="museo_sans">'+item.book_Price+'</span>원'+
			'</td>'+
			'</tr>'+
			'<tr class="selling_price_row">'+
			'<td class="price_type">판매가</td>'+
			'<td class="book_price"><span class="museo_sans">'+item.book_PriceSales+'</span>원'+
			'</td>'+
			'</tr>'
var cover='<img class="main_book_image" src='+item.book_Cover+'>'
var translater = '<c:if test="'+'${'+item.book_Translator+'!=null}">'+
				 '<span><a href="">'+item.book_Translator+'</a>역</span>'+
				 '</c:if>'
			
$('.title').append(item.book_Title);
$('#category').append(item.book_CategoryName);
$('#description').append(item.book_Description);
$('#subtitle').append(item.book_Subtitle);
$('#price').append(price);
$('#image').append(cover);
$('#translator').append(translater);
$('#author').append(item.book_Author);
$('#publisher').append(item.book_Publisher);
 })
});
</script>

<script type="text/javascript">
$.getJSON('/api/reviewlist/'+id+'/latest',function(rdata){
 $.each(rdata,function(index,item){              
var reviews = '<li class="review_list">'+
			'<div class="list_left js_review_info_wrapper">'+
			'<div class="left_contents">'+
			'<p>'+
			'<span class="star_rate">'+
			'<span class="RSGBookMetadata_StarRate">'+
			'<span class="StarRate_IconBox">'+
			'<span class="StarRate_IconFill" style="width: 100%">'+
			'</span></span></span></span>'+
			'<span class="reviewer_id">'+item.member.member_Id+'</span>'+
			'<span class="buy_check">'+
			'<span class="svg_badge_buyer_1">구매자</span></span>'+
			'</p>'+
			'<ul class="review_date_and_report_wrapper">'+
			'<li class="review_date">'+item.time+'</li>'+
			'<li class="meta_list report">'+
			'<button class="report_button js_report_button" type="button" data-rating-id="18334902">신고</button>'+
			'</li></ul></div></div>'+
			'<div class="list_right js_review_wrapper">'+
			'<p class="review_content js_review_content">'+item.content+'</p>'+
			'<div class="review_status">'+
			'<div class="review_recommend_count js_review_recommend_count">'+
			'<button type="button" class="rui_button_white_25 comment_toggle_button js_comment_toggle_button">'+
			'<span class="rui_button_contents">'+
			'<span class="rui_button_icon"></span> '+
			'<span class="rui_button_text"> 댓글 '+
			'<span class="js_comment_count"></span></span></span></button>'+
			'<button type="button"'+
			'class="rui_button_white_25 like_button js_like_button">'+
			'<span class="rui_button_contents"> <span'+
			'class="rui_button_icon"></span> <span'+
			'class="rui_button_text"> <span'+
			'class="indent_hidden">추천</span> <span'+
			'class="like_count js_like_count"></span>'+
			'</span>'+
			'</span>'+
			'</button>'+
			'</div>'+
			'</div>'+
			'<div class="comment_wrapper hidden js_comment_wrapper"'+
			'data-rating-id="18334902">'+
			'<ul class="comment_list_wrapper js_comment_list_wrapper">'+
			'</ul>'+
			'<div class="comment_textarea_wrapper">'+
			'<form class="js_review_comment_register_form">'+
			'<input type="hidden" name="rating_id" value="18334902">'+
			'<input type="hidden" name="book_id" value="1691000080">'+
			'<div class="textarea_left">'+
			'<textarea name="content"'+
			'class="comment_textarea js_comment_textarea"'+
			'title="이곳에 댓글을 남겨주세요." placeholder="이곳에 댓글을 남겨주세요."></textarea>'+
			'</div>'+
			'<div class="textarea_right">'+
			'<button type="submit"'+
			'class="rui_button_blue_30 disabled comment_submit js_comment_write_btn">댓글'+
			'달기</button>'+
			'</div>'+
			'<hr class="clear_both">'+
			'</form></div></div></div></li>'
										
$('#reviews').append(reviews);

 })
});

</script>
</html>