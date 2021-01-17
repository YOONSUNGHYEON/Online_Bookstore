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


<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://kit.fontawesome.com/81816a43c2.js"
	crossorigin="anonymous"></script>
	<script type="text/javascript" src="${path}/resources/member/js/jquery.twbsPagination.js"></script>

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

                            <div id="pagination-div" ></div>
					</div>
				</div>
			</section>
		</div>
	</div>
</div>
</body>

<script type="text/javascript">
var session=${member.member_Num};
var count=0;
$.getJSON('/api/paymentcount/'+session,function(rdata){
			        if(rdata%5==0){
			        count=rdata/5;
			        }else{
			        count=rdata/5+1;
			        }
$('#pagination-div').twbsPagination({

		    totalPages: count,	// 총 페이지 번호 수
		    visiblePages: 5,	// 하단에서 한번에 보여지는 페이지 번호 수
		    startPage : 1, // 시작시 표시되는 현재 페이지
		    initiateStartPageClick: false,	// 플러그인이 시작시 페이지 버튼 클릭 여부 (default : true)
		    first : "첫 페이지",	// 페이지네이션 버튼중 처음으로 돌아가는 버튼에 쓰여 있는 텍스트
		    prev : "이전 페이지",	// 이전 페이지 버튼에 쓰여있는 텍스트
		    next : "다음 페이지",	// 다음 페이지 버튼에 쓰여있는 텍스트
		    last : "마지막 페이지",	// 페이지네이션 버튼중 마지막으로 가는 버튼에 쓰여있는 텍스트
		    nextClass : "page-item next",	// 이전 페이지 CSS class
		    prevClass : "page-item prev",	// 다음 페이지 CSS class
		    lastClass : "page-item last",	// 마지막 페이지 CSS calss
		    firstClass : "page-item first",	// 첫 페이지 CSS class
		    pageClass : "page-item",	// 페이지 버튼의 CSS class
		    activeClass : "active",	// 클릭된 페이지 버튼의 CSS class
		    disabledClass : "disabled",	// 클릭 안된 페이지 버튼의 CSS class
		    anchorClass : "page-link",	//버튼 안의 앵커에 대한 CSS class

		    onPageClick: function (event, page) {
		    	//클릭 이벤트
		    	$.getJSON('/api/myorders/'+session+'/'+page,function(rdata){
		    	alert(rdata)
		    	})

		    }
		});
		});

</script>
</html>
