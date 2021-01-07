<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<head>
<meta charset="UTF-8">

<link href="${path}/resources/main/main.css" rel="stylesheet"
	type="text/css">
<link href="${path}/resources/mypage/mypage.css" rel="stylesheet"
	type="text/css">
<link href="${path}/resources/detail/button.css" rel="stylesheet"
	type="text/css">
<link href="${path}/resources/mypage/orderHistory.css" rel="stylesheet"
	type="text/css">

<script src="https://code.jquery.c om/jquery-3.5.1.min.js"></script>

<script src="https://kit.fontawesome.com/81816a43c2.js"
	crossorigin="anonymous"></script>
</head>
<body>
<jsp:include page="../../mainBase.jsp" />
<div id="books_contents">
	<div id="contents_wrap">
		<jsp:include page="myPageNav.jsp" />
		<div id="contents_page">
			<section id="page_buy_history">
				<h2 class="module_pagetitle">
					<span class="pagetitle_text">결제 내역</span>
				</h2>
				<table class="rui_table buy_history_table">
					<colgroup>
						<col class="date">
						<col class="title">
						<col class="main_value">
						<col class="payment_type">
						<col class="detail_icon">
					</colgroup>
					<thead>
						<tr>
							<th class="default">구매일</th>
							<th class="title">결제 내역</th>
							<th class="main_value">주문금액</th>
							<th class="default payment_type">결제 수단</th>
							<th class="detail_icon"></th>
						</tr>
					</thead>
					<tbody>



						<tr class="detail_link js_rui_detail_link"
							data-href="">
							<td class="default">2020.12.23. 19:41</td>
							<td class="title">aaaa</td>
							<td class="main_value"><span class="museo_sans">5,600</span>원
							</td>
							<td class="default payment_type">네이버페이</td>
							<td class="detail_icon"><a
								href=""><span
									class="indent_hidden">상세보기</span><span class="arrow_icon"></span></a>
							</td>
						</tr>
						<tr class="detail_link js_rui_detail_link"
							data-href="">
							<td class="default">2020.12.23. 12:58</td>
							<td class="title">ccccc</td>
							<td class="main_value"><span class="museo_sans">5,600</span>원
							</td>
							<td class="default payment_type">네이버페이</td>
							<td class="detail_icon"><a
								href=""><span
									class="indent_hidden">상세보기</span><span class="arrow_icon"></span></a>
							</td>
						</tr>
						<tr class="detail_link js_rui_detail_link"
							data-href="">
							<td class="default">2020.12.21. 05:00</td>
							<td class="title">dddddd</td>
							<td class="main_value"><span class="museo_sans">3,200</span>원
							</td>
							<td class="default payment_type">네이버페이</td>
							<td class="detail_icon"><a
								href=""><span
									class="indent_hidden">상세보기</span><span class="arrow_icon"></span></a>
							</td>
						</tr>
						<tr class="detail_link js_rui_detail_link"
							data-href="">
							<td class="default">2020.12.20. 01:14</td>
							<td class="title">yyyyyyyyyyyyyyyy</td>
							<td class="main_value"><span class="museo_sans">3,200</span>원
							</td>
							<td class="default payment_type">네이버페이</td>
							<td class="detail_icon"><a
								href=""><span
									class="indent_hidden">상세보기</span><span class="arrow_icon"></span></a>
							</td>
						</tr>
						<tr class="detail_link js_rui_detail_link"
							data-href="">
							<td class="default">2020.12.11. 23:43</td>
							<td class="title">lililililil</td>
							<td class="main_value"><span class="museo_sans">3,400</span>원
							</td>
							<td class="default payment_type">네이버페이</td>
							<td class="detail_icon"><a
								href=""><span
									class="indent_hidden">상세보기</span><span class="arrow_icon"></span></a>
							</td>
						</tr>
					</tbody>
				</table>

				<div class="paging_wrapper">
					<div class="module_paging">
						<ul class="paging_wrap">
							<li class="page_list page_list_first page_this"><a
								class="museo_sans" href="#">1</a></li>
							<li class="page_list"><a class="museo_sans"
								href="/order/history?page=2">2</a></li>
							<li class="page_list"><a class="museo_sans"
								href="/order/history?page=3">3</a></li>
							<li class="page_list"><a class="museo_sans"
								href="/order/history?page=4">4</a></li>
							<li class="page_list page_list_last"><a class="museo_sans"
								href="/order/history?page=5">5</a></li>
							<li class="btn_next"><a href="/order/history?page=2"
								title="2 페이지"><span class="indent_hidden">다음으로</span><span
									class="icon-arrow_8_right"></span></a></li>
						</ul>
					</div>
				</div>
			</section>
		</div>
	</div>
</div>
</body>
</html>