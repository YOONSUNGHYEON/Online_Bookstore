<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<link href="${path}/resources/main/main.css" rel="stylesheet"
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
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<link href="${path}/resources/mypage/pageBaseRenewal.css"
	rel="stylesheet" type="text/css">
<link href="${path}/resources/member/css/order.css" rel="stylesheet"
	type="text/css">
</head>
<jsp:include page="../mainBase.jsp" />
<body id="ridi_books">
	<div id="books_contents">
		<div>
			<h2 class="indent_hidden">주문/결제</h2>
			<section class="page_checkout">
				<div class="order_list_wrapper">

					<article class="order_list">
						<h3 class="order_list_title">
							주문 목록 <span class="list_count">1</span>
						</h3>
						<ul class="book_order_list_wrapper">
							<li class="book_order_list js_order_list" data-id="754030246">
								<div
									class="book_macro_60 book_macro_landscape book_macro_metadata_portrait">
									<div class="book_thumbnail_wrapper"
										data-book_id_for_tracking="754030246">
										<div class="book_thumbnail">
											<div class="thumbnail_image" id="image"></div>
											<a class="thumbnail_btn " href="/books/754030246"
												data-track-params="" data-track-type=""> <span
												class="indent_hidden">상세페이지 바로가기</span>
											</a>
										</div>
									</div>
									<div class="table_cell_wrapper">
										<div class="table_wrapper">
											<div class="book_metadata_wrapper">
												<h3 class="book_metadata meta_title ">
													<a class="title_link " href="/books/754030246"
														data-track-params="" data-track-type=""> <span
														id="title" class="title title_text js_highlight_helper"></span>
													</a>
												</h3>
												<p class="book_metadata author ">
													<a class="js_author_detail_link author_detail_link"
														id="author" href="  /search?q=%EA%B9%80%EC%86%8C%EC%98%81"></a>
												</p>
											</div>

											<div class="js_book_price_wrapper book_price_wrapper"
												data-book-id="754030246">
												<ul class="js_book_price">
													<li class="ebook_price"><span
														class="discount_percent js_discount_rate"> <span
															class="discount_none">-</span>
													</span> <strong><span id="" class="price pricemuseo_sans"></span>원</strong></li>

													<li class="coupon_price"><span
														class="js_coupon_discount_percent_value discount_percent coupon_discount_percent_value">-</span>
														<strong><span
															class="js_discount_amount_value discount_amount_value museo_sans">0</span>원</strong>
													</li>
												</ul>
											</div>

										</div>
										<div class="alert_wrapper"></div>
									</div>
								</div>
								<hr>
							</li>
						</ul>
					</article>


				</div>
				<div class="order_receipt_wrapper">
					<form id="order_form"  action="/kakaoPay/${id}"  method="post">
						<div class="hidden_input_wrapper">
							<input type="hidden" name="_token"
								value="an_jBCo3pbStxoAyNV1aBufs_b5I2PmtIaJdXymE4rvK2TO1rQLYWRdoQAMVzHJX">
							<input type="hidden" name="return_url" value=""> <input
								type="hidden" name="return_url_at_fail"
								value="https://ridibooks.com"> <input type="hidden"
								name="object" value="2"> <input type="hidden"
								name="b_ids[]" value="754030246"> <input type="hidden"
								class="order_items" data-id="754030246" data-price="10500"
								data-regular-price="10500">
						</div>

						<article class="order_info_article js_order_info_article">
							<div class="order_info_article_inner_wrapper">
								<h3 class="order_info_article_title">결제 정보</h3>
								<div class="order_info_wrapper">
									<ul>
										<li class="info_list">
											<div class="section_title">
												<h4 class="title">총 주문 금액</h4>
											</div>
											<div class="total_order_price_wrapper">
												<p class="total_regular_price">
													<span class="price museo_sans"></span>원
												</p>
											</div>
										</li>

										<li class="info_list js_discount_coupon_wrapper">



											<div class="section_title">
												<h4 class="title">할인 쿠폰</h4>
											</div>

											<p class="none_coupon js_none_coupon">
												<span class="indent_hidden">보유한 쿠폰 </span>0개
											</p>

										</li>
										<li class="info_list js_point_coupon_wrapper">



											<div class="section_title">
												<h4 class="title">포인트 상품권</h4>
											</div>

											<p class="none_coupon js_none_coupon">
												<span class="indent_hidden">보유한 쿠폰 </span>0개
											</p>

										</li>

										<li class="info_list js_point_wrapper">
											<div class="section_title">
												<h4 class="title">리디포인트</h4>
											</div>
											<p class="none_asset">0원</p>

										</li>
										<li class="info_list js_cash_wrapper">
											<div class="section_title">
												<h4 class="title">리디캐시</h4>
												<a class="what_is_ridi_cash_link" href="#whatis_ridicash">
													<span class="indent_hidden">리디캐시란</span>?
												</a>
											</div>
											<p class="none_asset">0원</p>

										</li>

										<li>
											<p class="current_price_wrapper">
												<strong class="current_price"> 총 결제 금액 <span
													class="price museo_sans price_num js_total_payment_price"></span>원
												</strong>

											</p>
										</li>
									</ul>
								</div>
								<div class="wrapper_for_paper_bottom_fixed">
									<div class="Payments jsPayments active">
										<h4 class="Payments_Title">결제 수단</h4>
										<div class="PaymentSections">
											<section
												class="PaymentSection PaymentSection-type-other jsPaymentsSection jsPayments-type-other active">
												<article class="PaymentWrapper">
													<ul class="Payment_List Payment_List-column-0">
														<li class="Payment_Item"><input id="pay_type_0"
															class="rui_radio_input" title="NaverPay 선택" type="radio"
															name="pay_type" value="401" checked=""><label
															for="pay_type_0" class="rui_radio_label"><span
																class="easy_payments naver_pay_icon">네이버페이</span></label><span
															class="Payment_TaxDeduction">소득공제</span></li>
														<li class="Payment_Item"><input id="pay_type_1"
															class="rui_radio_input" title="KakaoPay 선택" type="radio"
															name="pay_type" value="404"><label
															for="pay_type_1" class="rui_radio_label"><span
																class="easy_payments kakao_pay_icon">카카오페이</span></label><span
															class="Payment_TaxDeduction">소득공제</span></li>
														<li class="Payment_Item"><input id="pay_type_2"
															class="rui_radio_input" title="삼성페이 선택" type="radio"
															name="pay_type" value="406"><label
															for="pay_type_2" class="rui_radio_label"><span
																class="easy_payments samsung_pay_icon">삼성페이</span></label><span
															class="Payment_TaxDeduction">소득공제</span></li>
														<li class="Payment_Item"><input id="pay_type_3"
															class="rui_radio_input" title="PAYCO 선택" type="radio"
															name="pay_type" value="405"><label
															for="pay_type_3" class="rui_radio_label"><span
																class="easy_payments payco_icon">PAYCO</span></label><span
															class="Payment_TaxDeduction">소득공제</span></li>
														<li class="Payment_Item"><input id="pay_type_4"
															class="rui_radio_input" title="Paynow 선택" type="radio"
															name="pay_type" value="17"><label
															for="pay_type_4" class="rui_radio_label"><span
																class="easy_payments paynow_icon">페이나우</span></label></li>
														<li class="Payment_Item"><input id="pay_type_5"
															class="rui_radio_input" title="신용카드 선택" type="radio"
															name="pay_type" value="4"><label for="pay_type_5"
															class="rui_radio_label"> 신용카드 </label><span
															class="Payment_TaxDeduction">소득공제</span></li>
														<li class="Payment_Item"><input id="pay_type_6"
															class="rui_radio_input" title="휴대폰 선택" type="radio"
															name="pay_type" value="3"><label for="pay_type_6"
															class="rui_radio_label"> 휴대폰 </label><span
															class="Payment_TaxDeduction">소득공제</span></li>
														<li class="Payment_Item"><input id="pay_type_7"
															class="rui_radio_input" title="유선전화 선택" type="radio"
															name="pay_type" value="11"><label
															for="pay_type_7" class="rui_radio_label"> 유선전화 </label></li>
														<li class="Payment_Item"><input id="pay_type_8"
															class="rui_radio_input" title="계좌이체 선택" type="radio"
															name="pay_type" value="5"><label for="pay_type_8"
															class="rui_radio_label"> 계좌이체 </label><span
															class="Payment_TaxDeduction">소득공제</span></li>
														<li class="Payment_Item"><input id="pay_type_9"
															class="rui_radio_input" title="컬쳐랜드문화상품권 선택" type="radio"
															name="pay_type" value="6"><label for="pay_type_9"
															class="rui_radio_label"> 컬쳐랜드문화상품권 </label></li>
														<li class="Payment_Item"><input id="pay_type_10"
															class="rui_radio_input" title="도서문화상품권 선택" type="radio"
															name="pay_type" value="12"><label
															for="pay_type_10" class="rui_radio_label">
																도서문화상품권 </label></li>
														<li class="Payment_Item"><input id="pay_type_11"
															class="rui_radio_input" title="해피머니(모바일팝) 선택"
															type="radio" name="pay_type" value="20"><label
															for="pay_type_11" class="rui_radio_label">
																해피머니(모바일팝) </label></li>
														<li class="Payment_Item"><input id="pay_type_12"
															class="rui_radio_input" title="해외 발행 신용카드 선택"
															type="radio" name="pay_type" value="32"><label
															for="pay_type_12" class="rui_radio_label"> 해외 발행
																신용카드 </label></li>
													</ul>
												</article>
											</section>
										</div>
									</div>

									<div
										class="deduction_unavailable_info js_deduction_info active">
										<p class="warning">
											<span class="deduction_label">소득공제</span> 표시된 결제 수단으로 결제 시
											문화비 소득공제를 받을 수 있습니다.
										</p>
									</div>

									<div class="agreement_wrapper">
										<h4 class="agreement_area_title">구매 동의</h4>
										<div class="agreement_checkbox">
											<input type="checkbox" id="checkout_agreement_checkbox"
												class="rui_checkbox_input js_checkout_agreement_checkbox">
											<label for="checkout_agreement_checkbox"
												class="rui_checkbox_label"> <span
												class="js_agreement_checkbox_message_normal"> 상품, 가격,
													할인 정보, 유의 사항 등을 확인하였으며 구매에 동의합니다. </span> <span
												class="js_agreement_checkbox_message_payco"
												style="display: none;"> 상품, 가격, 할인 정보, 유의 사항, PAYCO
													이용 약관 등을 확인하였으며 구매에 동의합니다. </span>
											</label>
											<button type="button" class="terms_toggle js_terms_toggle"
												style="display: none;">
												<span class="hidden">약관 보기</span>
											</button>
										</div>
										<div class="payco_agreement_terms js_payco_agreement_terms"
											style="display: none;">
											<a
												href="https://plugin.inicis.com/html60/main/01_Information.html"
												target="_blank" class="term_link"> 전자 금융 거래 이용 약관 <span
												class="more">자세히 보기</span>
											</a> <a
												href="https://plugin.inicis.com/html60/main/02_Information.html"
												target="_blank" class="term_link"> 고유 식별 정보 수집 및 이용 안내 <span
												class="more">자세히 보기</span>
											</a> <a
												href="https://plugin.inicis.com/html60/main/03_Information.html"
												target="_blank" class="term_link"> 개인 정보의 수집 및 이용 안내 <span
												class="more">자세히 보기</span>
											</a> <a
												href="https://plugin.inicis.com/html60/main/04_Information.html"
												target="_blank" class="term_link"> 개인 정보 제공 및 위탁 안내 <span
												class="more">자세히 보기</span>
											</a>
										</div>
									</div>

									<div class="checkout_button_wrapper">
										<button   id="btnSubmit"
											class="rui_button_blue_50 rui_button_eink_black_50 checkout_button js_checkout_button"
											style="visibility: visible;">결제하기</button>
									</div>
								</div>
							</div>
							<ul class="checkout_warnings_wrapper">
								<li class="warning js_cancel_deadline_warning_normal">결제
									취소는 결제일로부터 7일 이내에만 할 수 있습니다.</li>
								<li class="warning js_cancel_deadline_warning_cellphone"
									style="display: none;">휴대폰 결제 취소는 결제 후 7일 이내, 결제 당월에 한하여 할
									수 있습니다.</li>
								<li class="warning">다운로드하거나 (다운로드 시작 포함) 스트리밍으로 이용한 책은 구매
									취소하거나 환불받을 수 없습니다.</li>
								<li class="warning">문화비 소득공제는 주문 도서와 결제 수단에 따라 적용됩니다. <a
									href="https://help.ridibooks.com/hc/ko/sections/360002014333"
									target="_blank" class="detail_link">자세히 알아보기 <span
										class="arrow_5_right"></span></a>
								</li>
							</ul>
						</article>
					</form>
					<div id="whatis_ridicash">
						<div class="cash_info">
							<div class="cash_info_text">
								<h4 class="info_title">
									<span class="icon-coin_1"></span> 리디캐시 보너스 포인트가 두 배!
								</h4>
								<p class="info_desc">
									월 1 ~ 3일, 리디캐시 충전 금액에 따라 <br>최대 10%까지 두 배의 보너스 포인트를<br>
									적립해드립니다.
								</p>
							</div>
							<div class="cash_info_table">
								<table>
									<colgroup>
										<col style="width: 50%">
										<col style="width: 50%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">리디캐시 충전 금액</th>
											<th scope="col" class="info_point">보너스 리디포인트</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td><span class="museo_sans">2,000</span>원 ~ <span
												class="museo_sans">20,000</span>원</td>
											<td><del class="museo_sans"> 3%</del> <span
												class="icon-arrow_10_right arrow"></span> <span
												class="after_percent museo_sans">6%</span></td>
										</tr>
										<tr>
											<td><span class="museo_sans">30,000</span>원 ~ <span
												class="museo_sans">70,000</span>원</td>
											<td><del class="museo_sans"> 4%</del> <span
												class="icon-arrow_10_right arrow"></span> <span
												class="after_percent museo_sans">8%</span></td>
										</tr>
										<tr>
											<td><span class="museo_sans">100,000</span>원 ~ <span
												class="museo_sans">500,000</span>원</td>
											<td><del class="museo_sans"> 5%</del> <span
												class="icon-arrow_10_right arrow"></span> <span
												class="after_percent museo_sans">10%</span></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<a class="rui_button_white_40 cash_charge_button"
							href="/order/checkout/cash">리디캐시 충전</a>
					</div>
				</div>
			</section>
		</div>
	</div>
</body>


<script type="text/javascript">
		function pay(){  
			var orders = {
				book_Id : ${id}
			};
			console.log(orders);
			$.ajax({
				url : "/kakaoPay",
				data : orders,
				type : "post",
				dataType : "json",
				async : true
				
			});
		}


		$("#btnSubmit111").click(function() {    			
          var radioVal = $('input[name="pay_type"]:checked').val();
          if(radioVal==404)
          {
          	pay();
          }
          else
          {
          	alert("카카오페이 결제 시스템을 이용해주세요.");
          }
          
		});
	</script>


<script type="text/javascript">

var id = ${id}

$.getJSON('/api/detailbook/'+id,function(rdata){
 $.each(rdata,function(index,item){              

var cover='<img class="thumbnails lazyloaded" src='+item.book_Cover+'>'

			
$('#title').append(item.book_Title);
$('.price').append(item.book_PriceSales);
$('#image').append(cover);
$('#author').append(item.book_Author);
 })
});


</script>

</html>