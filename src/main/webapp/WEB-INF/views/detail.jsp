<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	<div class="page-detail">
		<div class="page_detail_wrapper">
			<div class="detail_body_wrap">
				<article class="detail_header">
					<div class="main_book_image_wrapper">
						<img class="main_book_image"
							src="${path}/resources/detail/xxlarge.jpg">
					</div>
					<div class="book_info_wrapper">
						<p>소설 > 영미소설 , 소설 > 해외판타지소설</p>
						<h3 class="book_title">개정 번역판 | 해리 포터와 마법사의 돌</h3>
						<div class="info_metadata_wrap">
							<p class="metadata_rate">
								<span class="StarRate_Score">4.8점</span> <span
									class="StarRate_ParticipantCount">(185 <span
									class="StarRate_ParticipantCount_Unit">명)</span>
								</span>
							</p>

						</div>
						<div class="info_metadata_wrap">
							<p class="metadata metadata_writer">
								<span class="metadata_item author_item_wrapper"><a
									class="js_author_detail_link author_detail_link"
									href="/author/68726">조앤.K.롤링</a> 저</span><span
									class="metadata_item author_item_wrapper"><a
									class="js_author_detail_link author_detail_link"
									href="/author/54971">강동혁</a> 역</span>
							</p>

							<p class="metadata file_info publisher_info">
								<a class="publisher_detail_link"
									href="  /search?q=%EC%B6%9C%ED%8C%90%EC%82%AC%3APottermore
">Pottermore</a>
								출판
							</p>

						</div>
						<div id="notice_component">
							<ul class="NoticeWrapper">
								<li class="BookDetailNotice"><div
										class="BookDetailNotice_List">
										<h4
											class="BookDetailNotice_List_Header BookDetailNotice_List_Header-events">이벤트</h4>
										<ul class="BookDetailNotice_List_Group">
											<li
												class="BookDetailNotice_List_Item BookDetailNotice_List_Item-event BookDetailNotice_List_Item-hasPeriod"><a
												href="/event/26080"><h5
														class="BookDetailNotice_List_Item_Title">[EVENT] 겨울
														맞이 해리 포터 특별 세트 공개!</h5></a></li>
										</ul>
									</div></li>
							</ul>
						</div>
						<div class="info_buttons_wrap">
							<ul class="info_buttons rui_button_group_6">
								<li class="rui_button_item">
									<button type="button" class="rui_button_white_50 btn_wish">
										<span aria-hidden="true" class="icon-heart_1"></span> <span
											class="indent_hidden">위시리스트에 담기</span>
									</button>
								</li>
								<li class="rui_button_item">
									<button type="button" class="rui_button_white_50 btn_wish">
										<span aria-hidden="true" class="icon-cart_1"></span> <span
											class="indent_hidden">카트에 담기</span>
									</button>
								</li>
								<li class="rui_button_item"><a
									class="rui_button_white_50 btn_wish" href=""> <span
										class="icon-gift"></span> <span class="indent_hidden">선물하기</span>
								</a></li>
								<li class="rui_button_item"><a
									class="rui_button_blue_50 btn_all_buy" href=""> 구매하기 </a></li>
							</ul>
						</div>
					</div>
				</article>
				<article class="detail_box_module detail_info">
					<div class="rsg_title01">
						<h3 class="title_text">리디 info</h3>
					</div>

					<div id="introduce_book" class="introduce_section">
						<p>
							<strong>[안내]</strong> <br> 본 도서(새번역판 또는 개정번역판)는 2020년 4월 30일
							여백 조정이 불가하던 이슈가 수정되었습니다.<br> * 기존 구매자분들도 재다운로드 받으시면 수정된 파일로
							이용하실 수 있습니다. <br> (단, 재다운로드시 독서노트의 위치가 변경되거나 초기화될 수 있으니 유의
							부탁드립니다.)
						</p>
					</div>




				</article>
			</div>
			<div class="detail_aside_wrap">
				<div class="aside_banner">
					<a href=""> <img src="${path}/resources/detail/aside_img.jpg"
						alt="리디셀렉트 12월 업데이트">
					</a>
				</div>
				>
			</div>
		</div>
	</div>


</body>
</html>