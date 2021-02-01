<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<head>
<meta charset="UTF-8">
<link href="${path}/resources/mypage/page_review.css" rel="stylesheet"
	type="text/css">
<link href="${path}/resources/mypage/page_base.css" rel="stylesheet"
	type="text/css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js?ver=2"></script>
</head>
<body id="ridi_books">
	<jsp:include page="../../mainBase.jsp" />
	<div id="books_contents">
		<div id="contents_wrap">
			<jsp:include page="myPageNav.jsp" />
			<div id="contents_page">

				<section id="page_review">
					<h2 class="module_pagetitle">
						<span class="pagetitle_text">내 리뷰 관리</span>
					</h2>
					<p class="review_num_noti">

					</p>
					<ul class="review_list_wrapper">

					</ul>
				</section>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript" src="${path}/resources/member/js/jquery.twbsPagination.js?ver=123"></script>
<script type="text/javascript">
var session=${member.member_Num};
var myreview="";
$.getJSON('/api/reviewlistcount/'+session,function(rdata){
 $('.review_num_noti').html('총 <strong class="review_num">'+rdata+'</strong>개의 리뷰를 등록하셨습니다.');
})

$.getJSON('/api/reviewlist/'+session,function(rdata){
 $.each(rdata,function(index,item){
 myreview+= '<li class="review_list">'+
            '<div class="review view" data-book-id="" data-prev-rating="">'+
            '<h3 class="title">'+
            '<a href="">'+item.book_name+'</a>'+
            '</h3>'+
            '<ul class="metadata">'+
            '<li class="meta_rate"><span class="RSGBookMetadata_StarRate"><span class="StarRate_IconBox">'+
            '<span class="StarRate_IconFill" style="width: 100%"></span></span></span></li>'+
            '<li class="edit_rate_text">별점 선택</li>'+
            '<li class="meta_date">'+item.time+'</li>'+
            '</ul>'+
            '<p class="review_content">'+item.content+'</p>'+
            '<div class="modify_buttons">'+
            '<button type="button" class="rui_button_white_30 js_review_modify_btn">수정</button>'+
            '<button type="button" class="rui_button_white_30 js_review_delete_btn">삭제</button>'+
            '</div>'+
            '</div>'+
            '</li>';
            });
 $('.review_list_wrapper').html(myreview);
});

</script>

</html>