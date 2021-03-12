<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
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
									<span class="metadata_item author_item_wrapper"><a
										id="author" class="js_author_detail_link author_detail_link"
										href="/author/113027"></a> 저</span>
								<div id="translater"></div>

								</p>
								<p class="metadata file_info publisher_info">
									<a id="publisher" class="publisher_detail_link" href=""></a> 출판
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
									<li class="rui_button_item"><c:choose>
											<c:when test="${member.member_Num != null}">
												<a class="rui_button_blue_50 btn_buy" href="/order/${id}">
													구매하기 </a>
											</c:when>
											<c:when test="${member.member_Num == null}">
												<a class="rui_button_blue_50 btn_buy" href="/login">
													구매하기 </a>
											</c:when>
										</c:choose></li>
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
									<span class="score"></span> <span class="indent_hidden">점</span>
								</p>
								<p class="score_people_num"></p>
							</div>
							<div class="review_input_right">
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
									<li class="order_list"><a href="#a"
										class="js_select_tab_option active"  data-order="latest">최신순</a></li>
									<li class="order_list"><a href="#a"
										class="js_select_tab_option"  data-order="like">공감순</a></li>
									<li class="order_list"><a href="#a"
										class="js_select_tab_option" 
										data-order="highscore">별점 높은순</a></li>
									<li class="order_list"><a href="#a"
										class="js_select_tab_option" 
										data-order="lowscore">별점 낮은순</a></li>
								</ul>
							</div>
							<div id="review_list"
								class="review_list_wrapper js_review_list_wrapper active">
								<ul id="reviews">

								</ul>
								<div class="spinner_wrapper"></div>
								<div class="spin"></div>
							</div>
						</div>
					</article>
				</section>
			</div>
			<div class="detail_aside_wrap"></div>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>

<script type="text/javascript">


    
</script>


	
<%-- 리뷰리스트 개수 가져오기 --%>
<script type="text/javascript">
$.getJSON('/api/reviewlistcountbybook/'+${id},function(rdata){          
$('.score_people_num').html('<strong>'+rdata+'</strong>명이 평가함');
});
</script>
	
<%-- 리뷰 평균점수 가져오기 --%>
<script type="text/javascript">
var id = ${id}
$.getJSON('/api/avgscore/'+id,function(rdata){          
$('.score').append(rdata);
});
</script>

	
<%-- 리뷰 작성 부분 --%>
<script type="text/javascript">
var num=-1;
if(${member.member_Num!=null})
{
	num=${member.member_Num}-0;
}
var review_input='';
$.getJSON('/api/reviewlist/'+id+'/memNum/'+num,function(rdata){
console.log(rdata);
if(rdata==0)
{
review_input='<h4 class="indent_hidden">리뷰 작성 영역</h4>'+
			'<div class="star_rate_wrapper">'+
			'<div class="star_tip_wrapper">'+
			'<p class="tip_title">이 책을 평가해주세요!</p>'+
			'</div>'+
			'<div class="star_rate_touch_area">'+
			'<div class="review_rating">'+
			'<div class="rating">'+
			'<!-- 해당 별점을 클릭하면 해당 별과 그 왼쪽의 모든 별의 체크박스에 checked 적용 -->'+
			'<input type="checkbox" name="rating" id="rating1" value="1" '+
			'class="rate_radio" title="1점"> <label for="rating1"></label>'+
			'<input type="checkbox" name="rating" id="rating2" value="2" '+
			'class="rate_radio" title="2점"> <label for="rating2"></label>'+
			'<input type="checkbox" name="rating" id="rating3" value="3" '+
			'class="rate_radio" title="3점"> <label for="rating3"></label>'+
			'<input type="checkbox" name="rating" id="rating4" value="4" '+
			'class="rate_radio" title="4점"> <label for="rating4"></label>'+
			'<input type="checkbox" name="rating" id="rating5" value="5" '+
			'class="rate_radio" title="5점"> <label for="rating5"></label>'+
			'</div></div></div></div>'+
			'<form method="post">'+
			'<div class="review_textarea_wrapper">'+
			'<textarea class=".review_textarea review_input_textarea" id="content" title="리뷰 입력" '+
			'placeholder="리뷰 작성 시 광고 및 욕설, 비속어나 타인을 비방하는 문구를 사용하시면 비공개될 수 있습니다." '+
			'style="overflow: hidden; overflow-wrap: break-word; resize: none; height: 112px;"></textarea> '+
			'</div>'+
			'<div class="buttons_wrapper">'+
			'<div class="write_review_bottom">'+
			'<div class="write_button_wrapper">'+
			'<button type="button" id="btnSubmit" name="save" value="등록" '+
			'class="rui_button_blue_30">리뷰 남기기</button>'+
			'</div></div></div></form>'

}
else
{
review_input= '<h4 class="indent_hidden">리뷰 작성 영역</h4>'+
'<div class="review_input_wrapper js_review_input_wrapper written">'+
'<div class="star_rate_wrapper js_star_rate_wrapper">'+
'<input type="hidden" value="4" id="input_rating" class="js_input_rating">'+
'<div class="star_tip_wrapper">'+
'<div class="my_star_rate js_my_star_rate active">'+
'<p class="rate_title">내가 남긴 별점 <span class="rate_num js_rate_num">4.0</span></p>'+
'</div></div>'+
'</div>'+
'<p class="review_content js_review_content"><span class="visible">줄거리보고 제가 읽었던 소설 같아서 안읽을려고 했는뎁<br>재미있게 봤던 기억이 나서 구매해서 읽었어요!<br>근데 권수도 길고 제가 기억하던 것보다 내용이 길구 <br>마법사가 등장했던거 같은데 없어서 뭔가 했더니 <br>제가 읽은건 딴 소설이였더라구요ㅋㅋㅋㅋㅋㅋ<br>전 언제 그 소설을 읽었을까여ㅋㅋㅋㅋ<br>이런 소재는 항... <button type="button" class="review_read_more js_review_read_more">계속 읽기</button></span><span class="hidden">줄거리보고 제가 읽었던 소설 같아서 안읽을려고 했는뎁<br>재미있게 봤던 기억이 나서 구매해서 읽었어요!<br>근데 권수도 길고 제가 기억하던 것보다 내용이 길구 <br>마법사가 등장했던거 같은데 없어서 뭔가 했더니 <br>제가 읽은건 딴 소설이였더라구요ㅋㅋㅋㅋㅋㅋ<br>전 언제 그 소설을 읽었을까여ㅋㅋㅋㅋ<br>이런 소재는 항상 재미있네요</span></p>'+
'</div>'+
'<div class="review_status">'+
'<div class="review_recommend_count js_review_recommend_count" data-rating-id="18369999">'+
'<button type="button" class="rui_button_white_25 comment_toggle_button js_comment_toggle_button">'+
'<span class="rui_button_contents">'+
'<span class="rui_button_icon"></span>'+
'<span class="rui_button_text">댓글'+
'<span class="js_comment_count"></span>'+
'</span></span></button>'+
'<button type="button" class="rui_button_white_25 like_button js_like_button">'+
'<span class="rui_button_contents">'+
'<span class="rui_button_icon"></span>'+
'<span class="rui_button_text">'+
'<span class="indent_hidden">추천</span>'+
'<span class="like_count js_like_count">1</span>'+
'</span></span></button></div></div>'+
'<div class="comment_wrapper hidden js_comment_wrapper" data-rating-id="18369999">'+
'<ul class="comment_list_wrapper js_comment_list_wrapper">'+
'</ul>'+
'<div class="comment_textarea_wrapper">'+
'<form class="js_review_comment_register_form">'+
'<input type="hidden" name="rating_id" value="18369999">'+
'<input type="hidden" name="book_id" value="2183000004">'+
'<div class="textarea_left">'+
'<textarea name="content" class="comment_textarea js_comment_textarea" title="이곳에 댓글을 남겨주세요." placeholder="이곳에 댓글을 남겨주세요."></textarea>'+
'</div>'+
'<div class="textarea_right">'+
'<button type="submit" class="rui_button_blue_30 disabled comment_submit js_comment_write_btn">댓글 달기</button>'+
'</div></form></div></div></div></div></div>'
}
$('.review_input_right').append(review_input);
review_input
});




function Rating(){};
Rating.prototype.rate = 0;
Rating.prototype.setRate = function(newrate){
    //별점 마킹 - 클릭한 별 이하 모든 별 체크 처리
    this.rate = newrate;
    let items = document.querySelectorAll('.rate_radio');
    items.forEach(function(item, idx){
        if(idx < newrate){
            item.checked = true;
        }else{
            item.checked = false;
        }
    });
}
let rating = new Rating();//별점 인스턴스 생성

document.addEventListener('DOMContentLoaded', function(){
    //별점선택 이벤트 리스너
    document.querySelector('.rating').addEventListener('click',function(e){
        let elem = e.target;
        if(elem.classList.contains('rate_radio')){
            rating.setRate(parseInt(elem.value));
        }
    })
});

 document.querySelector('#btnSubmit').addEventListener('click', function(e){
        //별점 선택 안했으면 메시지 표시
        if(rating.rate == 0){
            alert("별점을 입력해주세요");
            return false;
        }
        //리뷰 5자 미만이면 메시지 표시
        if($('#content').val().length < 5){
            alert("5자 이상 글자를 입력해주세요");
            return false;
        }
        submit_review();
    });
</script>


	
<%-- id에 해당하는 책 상세 정보 데이터 뿌리기 --%>
<script type="text/javascript">
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

	
<%-- 페이지 처음 로딩 될때 리뷰 리스트 작성순으로 데이터 뿌리기--%>
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
			'</span></span></span>'+item.score+'</span>'+
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
			'<button data-url="like/'+item.id+'/'+item.like+'" onclick="like_click('+item.id+');" type="button" class="rui_button_white_25 like_button js_like_button">'+
			'<span class="rui_button_contents"> <span '+
			'class="rui_button_icon"></span> <span '+
			'class="rui_button_text"> <span '+
			'class="indent_hidden">추천</span> <span id="'+item.id+'" '+
			'class="like_count js_like_count">'+item.like+'</span>'+
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

<script type="text/javascript">
	
<%-- 리뷰 작성후 post로 보내기 --%> 
function submit_review() {
var id = '${member.member_Num}'; // 방법1
        if (id == '') {
            alert("로그인 후 글쓰기가 가능합니다.");
            return false;
        } else {       
			var review = {
				bookId : ${id},
				content : $("#content").val(),
				score: rating.rate

			};
			$.ajax({
				url : "/review",
				data : review,
				type : "post",
				dataType : "json",
				async : true,
				success : function(resp) {
					location.reload();
				},
				error : function() {
					location.reload();
				}
				
			});
			}
	
  }

</script>
<script src="${path}/resources/detail/detail.js"></script>

</html>