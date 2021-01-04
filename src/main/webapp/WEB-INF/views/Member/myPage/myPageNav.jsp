<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="${path}/resources/mypage/mypageNav.css" rel="stylesheet"
	type="text/css">
<div id="ridi_left_menu" class="myridi_left_menu">
  <h3 class="menu_title">마이리디</h3>
  <nav class="menu_wrapper">
    <div class="menu_section">
      <a class="section_title myridi_home_link active" href="/account/myridi">
        <span class="icon-home_1 myridi_left_icon"></span>마이리디 홈
      </a>
    </div>
    <div class="menu_section">
      <h4 class="section_title"><span class="icon-book_1 myridi_left_icon"></span>책</h4>
      <ul class="section_list">
        <li class="section_list_element"><a class="section_link" href="/library/recents">최근 본 책</a></li>
        <li class="section_list_element"><a class="section_link" href="/wishlist">위시리스트</a></li>
              </ul>
    </div>
    <div class="menu_section">
      <h4 class="section_title"><span class="icon-payment_2 myridi_left_icon"></span>구매/혜택</h4>
      <ul class="section_list">
        <li class="section_list_element"><a class="section_link" href="/order/history">결제 내역</a></li>
        <li class="section_list_element"><a class="section_link" href="/order/checkout/cash">리디캐시</a></li>
        <li class="section_list_element"><a class="section_link" href="/order/history_point">리디포인트</a></li>
        <li class="section_list_element"><a class="section_link" href="/coupon/">쿠폰</a></li>
      </ul>
    </div>
    <div class="menu_section">
      <h4 class="section_title"><span class="icon-user_1 myridi_left_icon"></span>개인</h4>
      <ul class="section_list">
        <li class="section_list_element"><a class="section_link" href="https://help.ridibooks.com/hc/ko/requests/new" target="_blank">1:1 문의</a></li>
        <li class="section_list_element"><a class="section_link" href="https://account.ridibooks.com/devices">내 기기 관리</a></li>
        <li class="section_list_element"><a class="section_link" href="/review/">내 리뷰 관리</a></li>
        <li class="section_list_element"><a class="section_link" href="/account/modify">정보 변경</a></li>
      </ul>
    </div>
  </nav>
</div>
