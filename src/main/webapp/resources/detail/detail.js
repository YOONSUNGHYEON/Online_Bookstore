

$(document).ready(function() {
	reviewTextarea();
	get_review_list();
	$(".js_select_tab_option").click(function() {
		$('#reviews').html('');
		var url = $(this).attr("data-order");
		$.getJSON('/api/reviewlist/' + id + '/sort/' + url, function(rdata) {
			$.each(rdata, function(index, item) {
				review_list(item);
			});
		})
	})
	$(".js_review_delete_btn").click(function() {
		var con_test = confirm("정말로 삭제하시겠습니까?");
		if (con_test == true) {
			$.ajax({
				url: '/api/review/' + id,
				method: "DELETE",
				success: function(result) {
					location.reload();
				}
			});
		}
	})
	$(".js_review_modfiy_btn").click(function() {
		document.getElementById("star_rate_touch_area").style.display = "block";//<% --별점 체크 숨기기-- %>
		$('.review_textarea_wrapper').show();//<% --리뷰 적는 input 숨기기-- %>
		$('.modify_review_bottom').show();
		$('.js_review_wrapper').hide();
	})
	$(".js_review_modify_cancel_btn").click(function() {
		reviewTextarea();
	})

	$(".js_review_modify_complete_btn").click(function() {
		reviewTextarea();
	})
})

function get_review_list() {
	$.getJSON('/api/reviewlist/' + id + '/sort/latest', function(rdata) {
		$.each(rdata, function(index, item) {
			review_list(item);

		})
	});
}


function review_list(item) {
	
	var reviews = '<li class="review_list">' +
		'<div class="list_left js_review_info_wrapper">' +
		'<div class="left_contents">' +
		'<p>' +
		'<span class="star_rate">' +
		'<span class="RSGBookMetadata_StarRate">' +
		'<span class="StarRate_IconBox">' +
		'<span class="StarRate_IconFill" style="width: 100%">' +
		'</span></span></span>' + item.score + '</span>' +
		'<span class="reviewer_id">' + item.member.member_Id + '</span>' +
		'<span class="buy_check">' +
		'<span class="svg_badge_buyer_1">구매자</span></span>' +
		'</p>' +
		'<ul class="review_date_and_report_wrapper">' +
		'<li class="review_date">' + item.time + '</li>' +
		'<li class="meta_list report">' +
		'<button class="report_button js_report_button" type="button" data-rating-id="18334902">신고</button>' +
		'</li></ul></div></div>' +
		'<div class="list_right js_review_wrapper">' +
		'<p class="review_content js_review_content">' + item.content + '</p>' +
		'<div class="review_status">' +
		'<div class="review_recommend_count js_review_recommend_count">' +
		'<button id="' + item.id + '" data-url="like/' + item.id + '/' + item.like + '" onclick="like_click(' + item.id + ');" type="button"  class="rui_button_white_25 like_button js_like_button">' +
		'<span class="rui_button_contents"> <span ' +
		'class="rui_button_icon"></span> <span ' +
		'class="rui_button_text"> <span ' +
		'class="indent_hidden">추천</span> <span class="' + item.id + ' like_count js_like_count"></span>' +
		'</span>' +
		'</span>' +
		'</button>' +
		'</div>' +
		'</div>' +
		'</div></li>'

	$('#reviews').append(reviews);
	get_liketo_count(item.id);

}

function like_click(reviewId) {
	var rID = {
		reviewId: reviewId,
	};

	$.ajax({
		url: "/api/like",
		type: "post",
		dataType: "json",
		data: JSON.stringify(rID),
		contentType: "application/json",
		async: true,
		success: function(response) {
			get_liketo_count(reviewId);
			$("#" + reviewId).addClass("active");
		}

	});
}


//리뷰 id 당 like count 데이터 가져오기
function get_liketo_count(reviewId) {
	$.getJSON('/api/liketo/' + reviewId, function(rdata) {
		$("." + reviewId).replaceWith('<span class="' + reviewId + ' like_count js_like_count">' + rdata + '</span>');
	});
}
//리뷰 id에 좋아요를 눌렀는지 안눌렀는지
function check_liketo(reviewId) {
	$.getJSON('/api/liketo/' + reviewId, function(rdata) {
		$("." + reviewId).replaceWith('<span class="' + reviewId + ' like_count js_like_count">' + rdata + '</span>');
	});
}





