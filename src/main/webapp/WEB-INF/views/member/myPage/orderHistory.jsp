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


<script src="https://code.jquery.com/jquery-3.5.1.min.js?ver=2"></script>
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
					<tbody id="myorders">

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
<script type="text/javascript" src="${path}/resources/member/js/jquery.twbsPagination.js?ver=123"></script>
<script type="text/javascript">
var session=${member.member_Num};
var count=0;
var myorders="";
var book_Title="";

$.getJSON('/api/myorders/'+session+'/1',function(rdata){
 $.each(rdata,function(index,item){
 console.log(item);
 $.getJSON('/api/booksearchById/'+item.orders.book_Id,function(bookinfo){
 book_Title=bookinfo.book_Title;

 })
 myorders+='<tr class="detail_link js_rui_detail_link" data-href="">'+
              '<td class="default">'+item.payment_time+'</td>'+
              '<td class="title">'+item.book_name+'</td>'+
              '<td class="main_value"><span class="museo_sans">'+item.total_price+'</span>원'+
              '</td>'+
              '<td class="default payment_type">'+item.payment_type+'</td>'+
              '<td class="detail_icon"><a href=""><span class="indent_hidden">상세보기</span><span class="arrow_icon"></span></a>'+
              '</td>'+
              '</tr>';
 })
 $('#myorders').html(myorders);
});
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

                var newhtml="";
		    	$.each(rdata,function(index,item){

                newhtml+='<tr class="detail_link js_rui_detail_link" data-href="">'+
                              '<td class="default">'+item.payment_time+'</td>'+
                              '<td class="title">'+item.book_name+'</td>'+
                              '<td class="main_value"><span class="museo_sans">'+item.total_price+'</span>원'+
                              '</td>'+
                              '<td class="default payment_type">'+item.payment_type+'</td>'+
                              '<td class="detail_icon"><a href=""><span class="indent_hidden">상세보기</span><span class="arrow_icon"></span></a>'+
                              '</td>'+
                              '</tr>';
                 })
                    $('#myorders').html(newhtml);

		    	})

		    }
		});
		});

</script>
</html>
