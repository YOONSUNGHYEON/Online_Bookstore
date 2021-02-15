

$(document).ready(function() {
	$(".js_select_tab_option").click(function() {
		$('#reviews').html('');
		var url = $(this).attr("data-order");
		$.getJSON('/api/reviewlist/' + id + '/' + url, function(rdata) {
			$.each(rdata, function(index, item) {
				review_list(item);
			});
		})
	})



})

function review_list(item) {

	var reviews = '<li class="review_list">' +
		'<div class="list_left js_review_info_wrapper">' +
		'<div class="left_contents">' +
		'<p>' +
		'<span class="star_rate">' +
		'<span class="RSGBookMetadata_StarRate">' +
		'<span class="StarRate_IconBox">' +
		'<span class="StarRate_IconFill" style="width: 100%">' +
		'</span></span></span>'+item.score+'</span>' +
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
		'<button type="button" class="rui_button_white_25 comment_toggle_button js_comment_toggle_button">' +
		'<span class="rui_button_contents">' +
		'<span class="rui_button_icon"></span> ' +
		'<span class="rui_button_text"> 댓글 ' +
		'<span class="js_comment_count"></span></span></span></button>' +
		'<button data-url="like/' + item.id + '/' + item.like + '" onclick="like_click(' + item.id + ');" type="button" class="rui_button_white_25 like_button js_like_button">' +
		'<span class="rui_button_contents"> <span ' +
		'class="rui_button_icon"></span> <span ' +
		'class="rui_button_text"> <span ' +
		'class="indent_hidden">추천</span> <span id="' + item.id + '" ' +
		'class="like_count js_like_count">' + item.like + '</span>' +
		'</span>' +
		'</span>' +
		'</button>' +
		'</div>' +
		'</div>' +
		'<div class="comment_wrapper hidden js_comment_wrapper"' +
		'data-rating-id="18334902">' +
		'<ul class="comment_list_wrapper js_comment_list_wrapper">' +
		'</ul>' +
		'<div class="comment_textarea_wrapper">' +
		'<form class="js_review_comment_register_form">' +
		'<input type="hidden" name="rating_id" value="18334902">' +
		'<input type="hidden" name="book_id" value="1691000080">' +
		'<div class="textarea_left">' +
		'<textarea name="content"' +
		'class="comment_textarea js_comment_textarea"' +
		'title="이곳에 댓글을 남겨주세요." placeholder="이곳에 댓글을 남겨주세요."></textarea>' +
		'</div>' +
		'<div class="textarea_right">' +
		'<button type="submit"' +
		'class="rui_button_blue_30 disabled comment_submit js_comment_write_btn">댓글' +
		'달기</button>' +
		'</div>' +
		'<hr class="clear_both">' +
		'</form></div></div></div></li>'

	$('#reviews').append(reviews);

}

function like_click(reviewId) {
	var rID = {
		id: reviewId
	};
	console.log(rID);
	$.ajax({
		url: "/like",
		data: rID,
		type: "post",
		dataType: "json",
		async: true,
		success: function(response) {
			$("#" + reviewId).replaceWith('<span id="' + reviewId + '">' + response + '</span>');
		}

	});


}





