$(document).ready(function() {


})



function order_list(item) {
	var order = `<li class="book_order_list js_order_list" data-id="${item.book_Id}">
					 	<div class="book_macro_60 book_macro_landscape book_macro_metadata_portrait">
							<div class="book_thumbnail_wrapper">
								<div class="book_thumbnail">
									<div class="thumbnail_image">
                                        <img class="thumbnail lazyloaded" src="${item.book_Cover}">
        								<span class="border"></span>
      								</div>
									<a class="thumbnail_btn " href="/detail/${item.book_Id}">
										<span class="indent_hidden">상세페이지 바로가기</span>
									</a>
								</div>
							</div > 
							<div class="table_cell_wrapper">
								<div class="table_wrapper">
									<div class="book_metadata_wrapper">
										<h3 class="book_metadata meta_title ">
											<a class="/detail/${item.book_Title} " href="/detail/${item.book_Id}"> 
												<span id="title" class="title title_text js_highlight_helper">${item.book_Title}</span>
											</a>
										</h3>
										<p class="book_metadata author ">
											<a class="js_author_detail_link author_detail_link" d="author" href="">${item.book_Author}</a>
										</p>
									</div>
									<div class="js_book_price_wrapper book_price_wrapper" data-book-id="${item.book_Id}">
										<ul class="js_book_price">
											<li class="ebook_price">
												<strong><span id="" class="price pricemuseo_sans">${item.book_Price}</span>원</strong>
											</li>
											<li class="coupon_price">
												<span class="js_coupon_discount_percent_value discount_percent coupon_discount_percent_value">
												</span>
												<strong>
												<span class="js_discount_amount_value discount_amount_value museo_sans">0</span>원</strong>
											</li>
										</ul>
									</div>
								</div>
								<div  cl ass="alert_wrapper">
								</div>
	</div>
						<hr>
					</li>`;
	$('#orders').append(order);

}
