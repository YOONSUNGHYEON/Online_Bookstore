<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<script>
    const SearchTerm = "${searchTerm}"
</script>
<head>
    <meta charset="UTF-8">
    <title>category list</title>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/search/js/authorDetail.js"></script>
    <link href="${pageContext.request.contextPath}/resources/search/css/authorDetail.css" rel="stylesheet" type="text/css">


</head>


<body>
<jsp:include page="../mainBase.jsp"/>

<div id="books_contents">
    <div>
        <section id="page_author">
            <div class="author_wrapper">
                <input type="hidden" value="6vvfpN9Ng_3CUwPhs2EdGUAaiPqVnEKz2xL8PYL6ifKMHcypZ6BdlMAIA9WzwRHq" id="notification_csrf_token">
                <div class="author_area_wrapper">
                    <div class="author_profile">
                        <div class="profile_right">
                            <div class="author_name_wrapper">
                                <h4 class="author_name">
                                    <a href="/author/4055">
                                        <span class="lang_kor">성귀수</span>
                                    </a>
                                </h4>
                                <button class="rui_button_blue_line_30 noti_toggle_button js_author_noti js_author_noti_register " type="button" data-id="4055">
                                    <span class="icon-plus_1 plus_icon"></span>
                                    작가 신간알림 <span class="icon-dot_1 dot_icon"></span> 소식
                                </button>
                                <button class="rui_button_white_30 noti_toggle_button active js_author_noti js_author_noti_unregister hidden" type="button" data-id="4055">
                                    <span class="icon-check_1 complete_icon"></span>
                                    작가 신간알림 <span class="icon-dot_1 dot_icon"></span> 소식 받는 중
                                </button>
                            </div>
                            <ul class="profile_list_wrapper">
                                <li class="profile_list list_nationality">
                                    <span class="list_title">국적</span>
                                    <span class="list_contents">대한민국</span>
                                </li>
                                <li class="profile_list list_education">
                                    <span class="list_title">학력</span>
                                    <span class="list_contents">
                       연세대학교 대학원 불어불문 박사<br>                       연세대학교 대학원 불어불문 석사<br>                       연세대학교 불어불문 학사                  </span>
                                </li>
                                <li class="profile_list list_debut">
                                    <span class="list_title">데뷔</span>
                                    <span class="list_contents">
          1991년 문학정신 시  등단
        </span>
                                </li>
                            </ul>

                        </div>
                    </div>

                    <p class="modify_request_wrapper">
      <span class="update_date">  2014.12.08.
 업데이트</span><a class="rui_button_white_21 modify_request_link" href="https://ospt.typeform.com/to/dINltm?name=%EC%84%B1%EA%B7%80%EC%88%98&amp;id=4055" target="_blank"><span class="icon-pencil_1"></span> 작가 프로필 수정 요청</a>    </p>

                    <div class="author_biography">
                        <p class="biography_paragraph ">
                            □ 폴린 레아주<br>
                            프랑스의 저널리스트이자로 여성작가인 폴린 레아주의 본명은 안느 데클로스이다.
                        </p>
                        <p class="alternative_intro">&lt;O 이야기&gt; 저자 소개</p>
                    </div>
                </div>

                <div class="author_books_wrapper" id="books">
                    <div class="header_wrapper">
                        <h4 class="header_title">총 36종</h4>
                        <ul class="books_filter">
                            <li><a class="active" href="?id=4055&amp;order=selling#books">인기순</a></li>
                            <li><a class="" href="?id=4055&amp;order=recent#books">최신순</a></li>
                            <li><a class="" href="?id=4055&amp;order=grade#books">평점순</a></li>
                        </ul>
                    </div>
                    <div class="book_macro_landscape book_macro_110">




                        <div class="book_thumbnail_wrapper" data-book_id_for_tracking="2606000010">
                            <div class="book_thumbnail">
                                <div class="thumbnail_image">
                                    <img class="thumbnail lazyloaded" src="//img.ridicdn.net/cover/2606000010/large" alt="세븐이브스 1권" data-src="//img.ridicdn.net/cover/2606000010/large" data-original-cover="//img.ridicdn.net/cover/2606000010/large">
                                    <span class="border"></span>
                                </div>







                                <a class="thumbnail_btn " href="/books/2606000010" data-track-params="" data-track-type="">
                                    <span class="indent_hidden">상세페이지 바로가기</span>
                                </a>


                            </div>
                        </div>






                        <div class="book_metadata_wrapper">

                            <h3 class="book_metadata meta_title ">
                                <a class="title_link " href="/books/2606000010" data-track-params="" data-track-type="">
        <span class="title_text js_highlight_helper">
                세븐이브스 1권
      </span>
                                </a>
                            </h3>



                            <p class="book_metadata star_rate hidden_for_portrait"><span class="RSGBookMetadata_StarRate"><span class="StarRate_IconBox"><span class="StarRate_IconFill" style="width: 78%"></span></span><span class="StarRate_Score">3.9점</span><span class="StarRate_ParticipantCount">29<span class="StarRate_ParticipantCount_Unit">명</span></span><span class="StarRate_HiddenElement">참여</span></span></p>

                            <p class="book_metadata author ">
                                <a class="js_author_detail_link author_detail_link" href="/author/94857">닐 스티븐슨</a>
                            </p>



                            <p class="book_metadata translator ">
                                <a class="js_author_detail_link author_detail_link" href="/author/4055">성귀수</a>           역
                            </p>





                            <p class="book_metadata publisher">
                                <a href="  /search?q=%EC%B6%9C%ED%8C%90%EC%82%AC%3A%EB%B6%81%EB%A0%88%EC%8B%9C%ED%94%BC
">
                                    북레시피
                                </a>
                            </p>


                            <p class="book_metadata genre">
                                SF 소설
                            </p>





                            <p class="book_metadata meta_description ">
                                <a class="" href="/books/2606000010" data-track-params="" data-track-type="">
                                    &lt;책소개&gt;





                                    오바마와 빌 게이츠가 휴가지에 가져간 책으로, 빌 게이츠가 권한 '반드시 읽어야 할 과학도서 11권' 중 유일한 소설이다. 닐 스티븐슨이 이 소설을 처음 착안한 것은 2004년 무렵 블루 오리진이라는 민간우주개발업체에서 일할 때였다. 당시 그곳 연구자들이 ...
                                </a>
                            </p>



                            <div class="book_metadata meta_price_info">
                                <h4 class="indent_hidden">상세 가격</h4>

                                <p class="buy_price_info">
                                    구매
                                    <span class="price">
                      <span class="museo_sans">10,500</span>원
                  </span>
                                </p>
                            </div>













                        </div>

                    </div><hr>
                    <div class="book_macro_landscape book_macro_110">




                        <div class="book_thumbnail_wrapper" data-book_id_for_tracking="2407000027">
                            <div class="book_thumbnail">
                                <div class="thumbnail_image">
                                    <img class="thumbnail lazyloaded" src="https://store.ridicdn.net/books/dist/images/book_cover/cover_adult.png" alt="O 이야기" data-src="https://store.ridicdn.net/books/dist/images/book_cover/cover_adult.png" data-original-cover="https://store.ridicdn.net/books/dist/images/book_cover/cover_adult.png">
                                    <span class="border"></span>
                                </div>

                                <span class="badge_adult">
          <span class="indent_hidden">19세 미만 구독불가</span>
        </span>






                                <a class="thumbnail_btn " href="/books/2407000027" data-track-params="" data-track-type="">
                                    <span class="indent_hidden">상세페이지 바로가기</span>
                                </a>


                            </div>
                        </div>






                        <div class="book_metadata_wrapper">

                            <h3 class="book_metadata meta_title ">
                                <a class="title_link " href="/books/2407000027" data-track-params="" data-track-type="">
        <span class="title_text js_highlight_helper">
                O 이야기
      </span>
                                </a>
                            </h3>



                            <p class="book_metadata star_rate hidden_for_portrait"><span class="RSGBookMetadata_StarRate"><span class="StarRate_IconBox"><span class="StarRate_IconFill" style="width: 60%"></span></span><span class="StarRate_Score">3.0점</span><span class="StarRate_ParticipantCount">2<span class="StarRate_ParticipantCount_Unit">명</span></span><span class="StarRate_HiddenElement">참여</span></span></p>

                            <p class="book_metadata author ">
                                <a class="js_author_detail_link author_detail_link" href="/author/88133">폴린 레아주</a>
                            </p>



                            <p class="book_metadata translator ">
                                <a class="js_author_detail_link author_detail_link" href="/author/4055">성귀수</a>           역
                            </p>





                            <p class="book_metadata publisher">
                                <a href="  /search?q=%EC%B6%9C%ED%8C%90%EC%82%AC%3A%EB%AC%B8%ED%95%99%EC%84%B8%EA%B3%84%EC%82%AC
">
                                    문학세계사
                                </a>
                            </p>


                            <p class="book_metadata genre">
                                프랑스 소설
                            </p>





                            <p class="book_metadata meta_description ">
                            </p>



                            <div class="book_metadata meta_price_info">
                                <h4 class="indent_hidden">상세 가격</h4>

                                <p class="buy_price_info">
                                    구매
                                    <span class="price">
                      <span class="museo_sans">9,000</span>원
                  </span>
                                </p>
                            </div>













                        </div>

                    </div><hr>
                    <div class="book_macro_landscape book_macro_110">




                        <div class="book_thumbnail_wrapper" data-book_id_for_tracking="1242000219">
                            <div class="book_thumbnail">
                                <div class="thumbnail_image">
                                    <img class="thumbnail lazyloaded" src="//img.ridicdn.net/cover/1242000219/large" alt="수상한 라트비아인" data-src="//img.ridicdn.net/cover/1242000219/large" data-original-cover="//img.ridicdn.net/cover/1242000219/large">
                                    <span class="border"></span>
                                </div>







                                <a class="thumbnail_btn " href="/books/1242000219" data-track-params="" data-track-type="">
                                    <span class="indent_hidden">상세페이지 바로가기</span>
                                </a>


                            </div>
                        </div>






                        <div class="book_metadata_wrapper">

                            <h3 class="book_metadata meta_title ">
                                <a class="title_link " href="/books/1242000219" data-track-params="" data-track-type="">
        <span class="title_text js_highlight_helper">
                수상한 라트비아인
      </span>
                                </a>
                            </h3>



                            <p class="book_metadata star_rate hidden_for_portrait"><span class="RSGBookMetadata_StarRate"><span class="StarRate_IconBox"><span class="StarRate_IconFill" style="width: 78%"></span></span><span class="StarRate_Score">3.9점</span><span class="StarRate_ParticipantCount">34<span class="StarRate_ParticipantCount_Unit">명</span></span><span class="StarRate_HiddenElement">참여</span></span></p>

                            <p class="book_metadata author ">
                                <a class="js_author_detail_link author_detail_link" href="/author/4039">조르주 심농</a>
                            </p>



                            <p class="book_metadata translator ">
                                <a class="js_author_detail_link author_detail_link" href="/author/4055">성귀수</a>           역
                            </p>





                            <p class="book_metadata publisher">
                                <a href="  /search?q=%EC%B6%9C%ED%8C%90%EC%82%AC%3A%EC%97%B4%EB%A6%B0%EC%B1%85%EB%93%A4
">
                                    열린책들
                                </a>
                            </p>


                            <p class="book_metadata genre">
                                추리/미스터리/스릴러
                            </p>





                            <p class="book_metadata meta_description ">
                                <a class="" href="/books/1242000219" data-track-params="" data-track-type="">
                                    &lt;책소개&gt;

                                    전 세계 독자를 열광케 한 형사 매그레 반장이 온다!

                                    대문호 헤밍웨이가 조르주 심농에게 보내는 찬사. "만약 아프리카 우림에서 비 때문에 꼼짝 못하게 되었다면, 심농을 읽는 것보다 더 좋은 대처법은 없다. 그와 함께라면 난 비가 얼마나 오래 오든 상관 안 할...
                                </a>
                            </p>



                            <div class="book_metadata meta_price_info">
                                <h4 class="indent_hidden">상세 가격</h4>

                                <p class="buy_price_info">
                                    구매
                                    <span class="price">
                      <span class="museo_sans">7,000</span>원
                  </span>
                                </p>
                            </div>













                        </div>

                    </div><hr>
                    <div class="book_macro_landscape book_macro_110">




                        <div class="book_thumbnail_wrapper" data-book_id_for_tracking="371001499">
                            <div class="book_thumbnail">
                                <div class="thumbnail_image">
                                    <img class="thumbnail lazyloaded" src="//img.ridicdn.net/cover/371001499/large" alt="창녀" data-src="//img.ridicdn.net/cover/371001499/large" data-original-cover="//img.ridicdn.net/cover/371001499/large">
                                    <span class="border"></span>
                                </div>







                                <a class="thumbnail_btn " href="/books/371001499" data-track-params="" data-track-type="">
                                    <span class="indent_hidden">상세페이지 바로가기</span>
                                </a>


                            </div>
                        </div>






                        <div class="book_metadata_wrapper">

                            <h3 class="book_metadata meta_title ">
                                <a class="title_link " href="/books/371001499" data-track-params="" data-track-type="">
        <span class="title_text js_highlight_helper">
                창녀
      </span>
                                </a>
                            </h3>



                            <p class="book_metadata star_rate hidden_for_portrait"><span class="RSGBookMetadata_StarRate"><span class="StarRate_IconBox"><span class="StarRate_IconFill" style="width: 66%"></span></span><span class="StarRate_Score">3.3점</span><span class="StarRate_ParticipantCount">3<span class="StarRate_ParticipantCount_Unit">명</span></span><span class="StarRate_HiddenElement">참여</span></span></p>

                            <p class="book_metadata author ">
                                <a class="js_author_detail_link author_detail_link" href="/author/84766">넬리 아르캉</a>
                            </p>



                            <p class="book_metadata translator ">
                                <a class="js_author_detail_link author_detail_link" href="/author/4055">성귀수</a>           역
                            </p>





                            <p class="book_metadata publisher">
                                <a href="  /search?q=%EC%B6%9C%ED%8C%90%EC%82%AC%3A%EB%AC%B8%ED%95%99%EB%8F%99%EB%84%A4
">
                                    문학동네
                                </a>
                            </p>


                            <p class="book_metadata genre">
                                영미소설
                            </p>





                            <p class="book_metadata meta_description ">
                                <a class="" href="/books/371001499" data-track-params="" data-track-type="">
                                    &lt;책소개&gt;

                                    여성의 섹스(性)를 파헤치는 급진적 고백소설. 발표 당시 스물여섯 살이던 작가가, 캐나다 몬트리올에서 5년간 매춘을 했던 체험을 바탕으로 쓴 자전적 소설이다. 스스로를 '섹스 노동자'라 칭하며 '창녀 노릇 한번 제대로 해보기 위해' 대학에 다니는 문학도인 넬리 아...
                                </a>
                            </p>



                            <div class="book_metadata meta_price_info">
                                <h4 class="indent_hidden">상세 가격</h4>

                                <p class="buy_price_info">
                                    구매
                                    <span class="price">
                      <span class="museo_sans">8,800</span>원
                  </span>
                                </p>
                            </div>













                        </div>

                    </div><hr>
                    <div class="book_macro_landscape book_macro_110">




                        <div class="book_thumbnail_wrapper" data-book_id_for_tracking="222001530">
                            <div class="book_thumbnail">
                                <div class="thumbnail_image">
                                    <img class="thumbnail lazyloaded" src="//img.ridicdn.net/cover/222001530/large" alt="침묵의 기술" data-src="//img.ridicdn.net/cover/222001530/large" data-original-cover="//img.ridicdn.net/cover/222001530/large">
                                    <span class="border"></span>
                                </div>







                                <a class="thumbnail_btn " href="/books/222001530" data-track-params="" data-track-type="">
                                    <span class="indent_hidden">상세페이지 바로가기</span>
                                </a>


                            </div>
                        </div>






                        <div class="book_metadata_wrapper">

                            <h3 class="book_metadata meta_title ">
                                <a class="title_link " href="/books/222001530" data-track-params="" data-track-type="">
        <span class="title_text js_highlight_helper">
                침묵의 기술
      </span>
                                </a>
                            </h3>



                            <p class="book_metadata star_rate hidden_for_portrait"><span class="RSGBookMetadata_StarRate"><span class="StarRate_IconBox"><span class="StarRate_IconFill" style="width: 52%"></span></span><span class="StarRate_Score">2.6점</span><span class="StarRate_ParticipantCount">16<span class="StarRate_ParticipantCount_Unit">명</span></span><span class="StarRate_HiddenElement">참여</span></span></p>

                            <p class="book_metadata author ">
                                <a class="js_author_detail_link author_detail_link" href="/author/62857">조제프 앙투안 투생 디누아르</a>
                            </p>



                            <p class="book_metadata translator ">
                                <a class="js_author_detail_link author_detail_link" href="/author/4055">성귀수</a>           역
                            </p>





                            <p class="book_metadata publisher">
                                <a href="  /search?q=%EC%B6%9C%ED%8C%90%EC%82%AC%3Aarte
">
                                    arte
                                </a>
                            </p>


                            <p class="book_metadata genre">
                                인문
                            </p>





                            <p class="book_metadata meta_description ">
                                <a class="" href="/books/222001530" data-track-params="" data-track-type="">
                                    &lt;책소개&gt;

                                    말과 글이 난무하는 시대
                                    침묵은 언제나 최상의 설득이다!



                                    ◎ 출판사 서평

                                    “침묵으로 말하라”
                                    250년이 지난 지금도 끊임없이 재해석되는‘침묵론(沈?論)’의 대표 고전



                                    『침묵의 기술』은 18세기 프랑스에서 설교가이자 문필가로...
                                </a>
                            </p>



                            <div class="book_metadata meta_price_info">
                                <h4 class="indent_hidden">상세 가격</h4>

                                <p class="buy_price_info">
                                    구매
                                    <span class="price">
                      <span class="museo_sans">12,000</span>원
                  </span>
                                </p>
                            </div>













                        </div>

                    </div><hr>
                    <div class="book_macro_landscape book_macro_110">




                        <div class="book_thumbnail_wrapper" data-book_id_for_tracking="222002105">
                            <div class="book_thumbnail">
                                <div class="thumbnail_image">
                                    <img class="thumbnail ls-is-cached lazyloaded" src="//img.ridicdn.net/cover/222002105/large" alt="결정판 아르센 뤼팽 전집 3권" data-src="//img.ridicdn.net/cover/222002105/large" data-original-cover="//img.ridicdn.net/cover/222002105/large">
                                    <span class="border"></span>
                                </div>



                                <span class="badge_rental">
            <span class="rental_text">대여</span>
          </span>



                                <a class="thumbnail_btn " href="/books/222002105" data-track-params="" data-track-type="">
                                    <span class="indent_hidden">상세페이지 바로가기</span>
                                </a>


                            </div>
                        </div>






                        <div class="book_metadata_wrapper">

                            <h3 class="book_metadata meta_title ">
                                <a class="title_link " href="/books/222002105" data-track-params="" data-track-type="">
        <span class="title_text js_highlight_helper">
                결정판 아르센 뤼팽 전집 3권
      </span>
                                </a>
                            </h3>



                            <p class="book_metadata star_rate hidden_for_portrait"><span class="RSGBookMetadata_StarRate"><span class="StarRate_IconBox"><span class="StarRate_IconFill" style="width: 0%"></span></span><span class="StarRate_HiddenElement">참여</span></span></p>

                            <p class="book_metadata author ">
                                <a class="js_author_detail_link author_detail_link" href="/author/6609">모리스 르블랑</a>
                            </p>



                            <p class="book_metadata translator ">
                                <a class="js_author_detail_link author_detail_link" href="/author/4055">성귀수</a>           역
                            </p>





                            <p class="book_metadata publisher">
                                <a href="  /search?q=%EC%B6%9C%ED%8C%90%EC%82%AC%3Aarte
">
                                    arte
                                </a>
                            </p>


                            <p class="book_metadata genre">
                                영미소설
                            </p>





                            <p class="book_metadata meta_description ">
                                <a class="" href="/books/222002105" data-track-params="" data-track-type="">
                                    &lt;책소개&gt;

                                    역사상 가장 매혹적인 도둑 아르센 뤼팽
                                    35년에 걸친 모험담과 오리지널 삽화를 빠짐없이 수록한
                                    세계 최초의 결정판 전집

                                    프랑스 뤼팽협회가 인정한 유일한 결정판, 최신 발굴 작품 6편 국내 최초 공개!
                                    원고 총 30,000매, 오리지널 삽화 370여 ...
                                </a>
                            </p>



                            <div class="book_metadata meta_price_info">
                                <h4 class="indent_hidden">상세 가격</h4>
                                <p class="rental_price_info">
                                    대여
                                    <span class="price">
                      <span class="museo_sans">12,000</span>원
                  </span>
                                </p>

                                <p class="buy_price_info">
                                    구매
                                    <span class="price">
                      <span class="museo_sans">21,600</span>원
                  </span>
                                    <span class="discount_info">
              <span class="discount"><span class="museo_sans">(10%<span class="icon-arrow_10_down"></span>)</span></span>
              <del class="additional_info"><span class="museo_sans">24,000</span>원</del>
            </span>
                                </p>
                            </div>













                        </div>

                    </div><hr>
                    <div class="book_macro_landscape book_macro_110">




                        <div class="book_thumbnail_wrapper" data-book_id_for_tracking="1242000237">
                            <div class="book_thumbnail">
                                <div class="thumbnail_image">
                                    <img class="thumbnail lazyloaded" src="//img.ridicdn.net/cover/1242000237/large" alt="매그레" data-src="//img.ridicdn.net/cover/1242000237/large" data-original-cover="//img.ridicdn.net/cover/1242000237/large">
                                    <span class="border"></span>
                                </div>







                                <a class="thumbnail_btn " href="/books/1242000237" data-track-params="" data-track-type="">
                                    <span class="indent_hidden">상세페이지 바로가기</span>
                                </a>


                            </div>
                        </div>






                        <div class="book_metadata_wrapper">

                            <h3 class="book_metadata meta_title ">
                                <a class="title_link " href="/books/1242000237" data-track-params="" data-track-type="">
        <span class="title_text js_highlight_helper">
                매그레
      </span>
                                </a>
                            </h3>



                            <p class="book_metadata star_rate hidden_for_portrait"><span class="RSGBookMetadata_StarRate"><span class="StarRate_IconBox"><span class="StarRate_IconFill" style="width: 90%"></span></span><span class="StarRate_Score">4.5점</span><span class="StarRate_ParticipantCount">8<span class="StarRate_ParticipantCount_Unit">명</span></span><span class="StarRate_HiddenElement">참여</span></span></p>

                            <p class="book_metadata author ">
                                <a class="js_author_detail_link author_detail_link" href="/author/4039">조르주 심농</a>
                            </p>



                            <p class="book_metadata translator ">
                                <a class="js_author_detail_link author_detail_link" href="/author/4055">성귀수</a>           역
                            </p>





                            <p class="book_metadata publisher">
                                <a href="  /search?q=%EC%B6%9C%ED%8C%90%EC%82%AC%3A%EC%97%B4%EB%A6%B0%EC%B1%85%EB%93%A4
">
                                    열린책들
                                </a>
                            </p>


                            <p class="book_metadata genre">
                                추리/미스터리/스릴러
                            </p>





                            <p class="book_metadata meta_description ">
                                <a class="" href="/books/1242000237" data-track-params="" data-track-type="">
                                    &lt;책소개&gt;

                                    전 세계 독자를 열광케 한 형사 매그레 반장이 온다!

                                    대문호 헤밍웨이가 조르주 심농에게 보내는 찬사. "만약 아프리카 우림에서 비 때문에 꼼짝 못하게 되었다면, 심농을 읽는 것보다 더 좋은 대처법은 없다. 그와 함께라면 난 비가 얼마나 오래 오든 상관 안 할...
                                </a>
                            </p>



                            <div class="book_metadata meta_price_info">
                                <h4 class="indent_hidden">상세 가격</h4>

                                <p class="buy_price_info">
                                    구매
                                    <span class="price">
                      <span class="museo_sans">7,000</span>원
                  </span>
                                </p>
                            </div>













                        </div>

                    </div><hr>
                    <div class="book_macro_landscape book_macro_110">




                        <div class="book_thumbnail_wrapper" data-book_id_for_tracking="222001769">
                            <div class="book_thumbnail">
                                <div class="thumbnail_image">
                                    <img class="thumbnail lazyloaded" src="//img.ridicdn.net/cover/222001769/large" alt="지혜와 운명" data-src="//img.ridicdn.net/cover/222001769/large" data-original-cover="//img.ridicdn.net/cover/222001769/large">
                                    <span class="border"></span>
                                </div>







                                <a class="thumbnail_btn " href="/books/222001769" data-track-params="" data-track-type="">
                                    <span class="indent_hidden">상세페이지 바로가기</span>
                                </a>


                            </div>
                        </div>






                        <div class="book_metadata_wrapper">

                            <h3 class="book_metadata meta_title ">
                                <a class="title_link " href="/books/222001769" data-track-params="" data-track-type="">
        <span class="title_text js_highlight_helper">
                지혜와 운명
      </span>
                                </a>
                            </h3>



                            <p class="book_metadata star_rate hidden_for_portrait"><span class="RSGBookMetadata_StarRate"><span class="StarRate_IconBox"><span class="StarRate_IconFill" style="width: 100%"></span></span><span class="StarRate_Score">5.0점</span><span class="StarRate_ParticipantCount">4<span class="StarRate_ParticipantCount_Unit">명</span></span><span class="StarRate_HiddenElement">참여</span></span></p>

                            <p class="book_metadata author ">
                                <a class="js_author_detail_link author_detail_link" href="/author/12584">모리스 마테를링크</a>
                            </p>



                            <p class="book_metadata translator ">
                                <a class="js_author_detail_link author_detail_link" href="/author/4055">성귀수</a>           역
                            </p>





                            <p class="book_metadata publisher">
                                <a href="  /search?q=%EC%B6%9C%ED%8C%90%EC%82%AC%3Aarte
">
                                    arte
                                </a>
                            </p>


                            <p class="book_metadata genre">
                                에세이
                            </p>





                            <p class="book_metadata meta_description ">
                                <a class="" href="/books/222001769" data-track-params="" data-track-type="">
                                    &lt;책소개&gt;

                                    “세상을 살아가는 동안 사랑을 멈추지 않는 사람은
                                    더 나은 존재로 거듭나기에 끊임없이 사랑하는 것입니다.”

                                    〈국내 초역 모리스 마테를링크 선집〉 『파랑새』작가 ․ 노벨문학상 수상자 ․ 벨기에 셰익스피어
                                    모리스 마테를링크의 경이를 비로소 만나다!
                                    ...
                                </a>
                            </p>



                            <div class="book_metadata meta_price_info">
                                <h4 class="indent_hidden">상세 가격</h4>

                                <p class="buy_price_info">
                                    구매
                                    <span class="price">
                      <span class="museo_sans">11,200</span>원
                  </span>
                                </p>
                            </div>













                        </div>

                    </div><hr>
                    <div class="book_macro_landscape book_macro_110">




                        <div class="book_thumbnail_wrapper" data-book_id_for_tracking="222002107">
                            <div class="book_thumbnail">
                                <div class="thumbnail_image">
                                    <img class="thumbnail lazyloaded" src="//img.ridicdn.net/cover/222002107/large" alt="결정판 아르센 뤼팽 전집 5권" data-src="//img.ridicdn.net/cover/222002107/large" data-original-cover="//img.ridicdn.net/cover/222002107/large">
                                    <span class="border"></span>
                                </div>



                                <span class="badge_rental">
            <span class="rental_text">대여</span>
          </span>



                                <a class="thumbnail_btn " href="/books/222002107" data-track-params="" data-track-type="">
                                    <span class="indent_hidden">상세페이지 바로가기</span>
                                </a>


                            </div>
                        </div>






                        <div class="book_metadata_wrapper">

                            <h3 class="book_metadata meta_title ">
                                <a class="title_link " href="/books/222002107" data-track-params="" data-track-type="">
        <span class="title_text js_highlight_helper">
                결정판 아르센 뤼팽 전집 5권
      </span>
                                </a>
                            </h3>



                            <p class="book_metadata star_rate hidden_for_portrait"><span class="RSGBookMetadata_StarRate"><span class="StarRate_IconBox"><span class="StarRate_IconFill" style="width: 0%"></span></span><span class="StarRate_HiddenElement">참여</span></span></p>

                            <p class="book_metadata author ">
                                <a class="js_author_detail_link author_detail_link" href="/author/6609">모리스 르블랑</a>
                            </p>



                            <p class="book_metadata translator ">
                                <a class="js_author_detail_link author_detail_link" href="/author/4055">성귀수</a>           역
                            </p>





                            <p class="book_metadata publisher">
                                <a href="  /search?q=%EC%B6%9C%ED%8C%90%EC%82%AC%3Aarte
">
                                    arte
                                </a>
                            </p>


                            <p class="book_metadata genre">
                                영미소설
                            </p>





                            <p class="book_metadata meta_description ">
                                <a class="" href="/books/222002107" data-track-params="" data-track-type="">
                                    &lt;책소개&gt;

                                    역사상 가장 매혹적인 도둑 아르센 뤼팽
                                    35년에 걸친 모험담과 오리지널 삽화를 빠짐없이 수록한
                                    세계 최초의 결정판 전집

                                    프랑스 뤼팽협회가 인정한 유일한 결정판, 최신 발굴 작품 6편 국내 최초 공개!
                                    원고 총 30,000매, 오리지널 삽화 370여 ...
                                </a>
                            </p>



                            <div class="book_metadata meta_price_info">
                                <h4 class="indent_hidden">상세 가격</h4>
                                <p class="rental_price_info">
                                    대여
                                    <span class="price">
                      <span class="museo_sans">13,200</span>원
                  </span>
                                </p>

                                <p class="buy_price_info">
                                    구매
                                    <span class="price">
                      <span class="museo_sans">23,760</span>원
                  </span>
                                    <span class="discount_info">
              <span class="discount"><span class="museo_sans">(10%<span class="icon-arrow_10_down"></span>)</span></span>
              <del class="additional_info"><span class="museo_sans">26,400</span>원</del>
            </span>
                                </p>
                            </div>













                        </div>

                    </div><hr>
                    <div class="book_macro_landscape book_macro_110">




                        <div class="book_thumbnail_wrapper" data-book_id_for_tracking="1519000736">
                            <div class="book_thumbnail">
                                <div class="thumbnail_image">
                                    <img class="thumbnail lazyloaded" src="//img.ridicdn.net/cover/1519000736/large" alt="적의 화장법" data-src="//img.ridicdn.net/cover/1519000736/large" data-original-cover="//img.ridicdn.net/cover/1519000736/large">
                                    <span class="border"></span>
                                </div>







                                <a class="thumbnail_btn " href="/books/1519000736" data-track-params="" data-track-type="">
                                    <span class="indent_hidden">상세페이지 바로가기</span>
                                </a>


                            </div>
                        </div>






                        <div class="book_metadata_wrapper">

                            <h3 class="book_metadata meta_title ">
                                <a class="title_link " href="/books/1519000736" data-track-params="" data-track-type="">
        <span class="title_text js_highlight_helper">
                적의 화장법
      </span>
                                </a>
                            </h3>



                            <p class="book_metadata star_rate hidden_for_portrait"><span class="RSGBookMetadata_StarRate"><span class="StarRate_IconBox"><span class="StarRate_IconFill" style="width: 80%"></span></span><span class="StarRate_Score">4.0점</span><span class="StarRate_ParticipantCount">186<span class="StarRate_ParticipantCount_Unit">명</span></span><span class="StarRate_HiddenElement">참여</span></span></p>

                            <p class="book_metadata author ">
                                <a class="js_author_detail_link author_detail_link" href="/author/22839">아멜리 노통브</a>
                            </p>



                            <p class="book_metadata translator ">
                                <a class="js_author_detail_link author_detail_link" href="/author/4055">성귀수</a>           역
                            </p>





                            <p class="book_metadata publisher">
                                <a href="  /search?q=%EC%B6%9C%ED%8C%90%EC%82%AC%3A%EB%AC%B8%ED%95%99%EC%84%B8%EA%B3%84%EC%82%AC
">
                                    문학세계사
                                </a>
                            </p>


                            <p class="book_metadata genre">
                                프랑스 소설
                            </p>





                            <p class="book_metadata meta_description ">
                                <a class="" href="/books/1519000736" data-track-params="" data-track-type="">
                                    &lt;책소개&gt;

                                    프랑스 최고의 베스트셀러 작가, 아멜리 노통

                                    대사의 딸로서 일본에서 태어나 아시아에서 성장한 아멜리 노통은 지난 10년 동안 매년 놀랄만한 작품을 발표했고 그때마다 어김없이 베스트셀러의 상단을 장식해 왔다. 그녀의 처녀작 『살인자의 건강법』은 단번에 10만 ...
                                </a>
                            </p>



                            <div class="book_metadata meta_price_info">
                                <h4 class="indent_hidden">상세 가격</h4>

                                <p class="buy_price_info">
                                    구매
                                    <span class="price">
                      <span class="museo_sans">7,000</span>원
                  </span>
                                </p>
                            </div>













                        </div>

                    </div><hr>
                    <div class="book_macro_landscape book_macro_110">




                        <div class="book_thumbnail_wrapper" data-book_id_for_tracking="222002103">
                            <div class="book_thumbnail">
                                <div class="thumbnail_image">
                                    <img class="thumbnail lazyloaded" src="//img.ridicdn.net/cover/222002103/large" alt="결정판 아르센 뤼팽 전집 1권" data-src="//img.ridicdn.net/cover/222002103/large" data-original-cover="//img.ridicdn.net/cover/222002103/large">
                                    <span class="border"></span>
                                </div>



                                <span class="badge_rental">
            <span class="rental_text">대여</span>
          </span>



                                <a class="thumbnail_btn " href="/books/222002103" data-track-params="" data-track-type="">
                                    <span class="indent_hidden">상세페이지 바로가기</span>
                                </a>


                            </div>
                        </div>






                        <div class="book_metadata_wrapper">

                            <h3 class="book_metadata meta_title ">
                                <a class="title_link " href="/books/222002103" data-track-params="" data-track-type="">
        <span class="title_text js_highlight_helper">
                결정판 아르센 뤼팽 전집 1권
      </span>
                                </a>
                            </h3>



                            <p class="book_metadata star_rate hidden_for_portrait"><span class="RSGBookMetadata_StarRate"><span class="StarRate_IconBox"><span class="StarRate_IconFill" style="width: 100%"></span></span><span class="StarRate_Score">5.0점</span><span class="StarRate_ParticipantCount">2<span class="StarRate_ParticipantCount_Unit">명</span></span><span class="StarRate_HiddenElement">참여</span></span></p>

                            <p class="book_metadata author ">
                                <a class="js_author_detail_link author_detail_link" href="/author/6609">모리스 르블랑</a>
                            </p>



                            <p class="book_metadata translator ">
                                <a class="js_author_detail_link author_detail_link" href="/author/4055">성귀수</a>           역
                            </p>





                            <p class="book_metadata publisher">
                                <a href="  /search?q=%EC%B6%9C%ED%8C%90%EC%82%AC%3Aarte
">
                                    arte
                                </a>
                            </p>


                            <p class="book_metadata genre">
                                영미소설
                            </p>





                            <p class="book_metadata meta_description ">
                                <a class="" href="/books/222002103" data-track-params="" data-track-type="">
                                    &lt;책소개&gt;

                                    역사상 가장 매혹적인 도둑 아르센 뤼팽
                                    35년에 걸친 모험담과 오리지널 삽화를 빠짐없이 수록한
                                    세계 최초의 결정판 전집

                                    프랑스 뤼팽협회가 인정한 유일한 결정판, 최신 발굴 작품 6편 국내 최초 공개!
                                    원고 총 30,000매, 오리지널 삽화 370여 ...
                                </a>
                            </p>



                            <div class="book_metadata meta_price_info">
                                <h4 class="indent_hidden">상세 가격</h4>
                                <p class="rental_price_info">
                                    대여
                                    <span class="price">
                      <span class="museo_sans">13,200</span>원
                  </span>
                                </p>

                                <p class="buy_price_info">
                                    구매
                                    <span class="price">
                      <span class="museo_sans">23,760</span>원
                  </span>
                                    <span class="discount_info">
              <span class="discount"><span class="museo_sans">(10%<span class="icon-arrow_10_down"></span>)</span></span>
              <del class="additional_info"><span class="museo_sans">26,400</span>원</del>
            </span>
                                </p>
                            </div>













                        </div>

                    </div><hr>
                    <div class="book_macro_landscape book_macro_110">




                        <div class="book_thumbnail_wrapper" data-book_id_for_tracking="1242000228">
                            <div class="book_thumbnail">
                                <div class="thumbnail_image">
                                    <img class="thumbnail ls-is-cached lazyloaded" src="//img.ridicdn.net/cover/1242000228/large" alt="게물랭의 댄서" data-src="//img.ridicdn.net/cover/1242000228/large" data-original-cover="//img.ridicdn.net/cover/1242000228/large">
                                    <span class="border"></span>
                                </div>







                                <a class="thumbnail_btn " href="/books/1242000228" data-track-params="" data-track-type="">
                                    <span class="indent_hidden">상세페이지 바로가기</span>
                                </a>


                            </div>
                        </div>






                        <div class="book_metadata_wrapper">

                            <h3 class="book_metadata meta_title ">
                                <a class="title_link " href="/books/1242000228" data-track-params="" data-track-type="">
        <span class="title_text js_highlight_helper">
                게물랭의 댄서
      </span>
                                </a>
                            </h3>



                            <p class="book_metadata star_rate hidden_for_portrait"><span class="RSGBookMetadata_StarRate"><span class="StarRate_IconBox"><span class="StarRate_IconFill" style="width: 96%"></span></span><span class="StarRate_Score">4.8점</span><span class="StarRate_ParticipantCount">8<span class="StarRate_ParticipantCount_Unit">명</span></span><span class="StarRate_HiddenElement">참여</span></span></p>

                            <p class="book_metadata author ">
                                <a class="js_author_detail_link author_detail_link" href="/author/4039">조르주 심농</a>
                            </p>



                            <p class="book_metadata translator ">
                                <a class="js_author_detail_link author_detail_link" href="/author/4055">성귀수</a>           역
                            </p>





                            <p class="book_metadata publisher">
                                <a href="  /search?q=%EC%B6%9C%ED%8C%90%EC%82%AC%3A%EC%97%B4%EB%A6%B0%EC%B1%85%EB%93%A4
">
                                    열린책들
                                </a>
                            </p>


                            <p class="book_metadata genre">
                                추리/미스터리/스릴러
                            </p>





                            <p class="book_metadata meta_description ">
                                <a class="" href="/books/1242000228" data-track-params="" data-track-type="">
                                    &lt;책소개&gt;

                                    전 세계 독자를 열광케 한 형사 매그레 반장이 온다!

                                    대문호 헤밍웨이가 조르주 심농에게 보내는 찬사. "만약 아프리카 우림에서 비 때문에 꼼짝 못하게 되었다면, 심농을 읽는 것보다 더 좋은 대처법은 없다. 그와 함께라면 난 비가 얼마나 오래 오든 상관 안 할...
                                </a>
                            </p>



                            <div class="book_metadata meta_price_info">
                                <h4 class="indent_hidden">상세 가격</h4>

                                <p class="buy_price_info">
                                    구매
                                    <span class="price">
                      <span class="museo_sans">7,000</span>원
                  </span>
                                </p>
                            </div>













                        </div>

                    </div><hr>
                    <div class="book_macro_landscape book_macro_110">




                        <div class="book_thumbnail_wrapper" data-book_id_for_tracking="1184000065">
                            <div class="book_thumbnail">
                                <div class="thumbnail_image">
                                    <img class="thumbnail ls-is-cached lazyloaded" src="//img.ridicdn.net/cover/1184000065/large" alt="내 이름은 꾸제트" data-src="//img.ridicdn.net/cover/1184000065/large" data-original-cover="//img.ridicdn.net/cover/1184000065/large">
                                    <span class="border"></span>
                                </div>







                                <a class="thumbnail_btn " href="/books/1184000065" data-track-params="" data-track-type="">
                                    <span class="indent_hidden">상세페이지 바로가기</span>
                                </a>


                            </div>
                        </div>






                        <div class="book_metadata_wrapper">

                            <h3 class="book_metadata meta_title ">
                                <a class="title_link " href="/books/1184000065" data-track-params="" data-track-type="">
        <span class="title_text js_highlight_helper">
                내 이름은 꾸제트
      </span>
                                </a>
                            </h3>



                            <p class="book_metadata star_rate hidden_for_portrait"><span class="RSGBookMetadata_StarRate"><span class="StarRate_IconBox"><span class="StarRate_IconFill" style="width: 0%"></span></span><span class="StarRate_HiddenElement">참여</span></span></p>

                            <p class="book_metadata author ">
                                <a class="js_author_detail_link author_detail_link" href="/author/78972">질 파리</a>
                            </p>



                            <p class="book_metadata translator ">
                                <a class="js_author_detail_link author_detail_link" href="/author/4055">성귀수</a>           역
                            </p>





                            <p class="book_metadata publisher">
                                <a href="  /search?q=%EC%B6%9C%ED%8C%90%EC%82%AC%3A%EC%97%B4%EB%A6%BC%EC%9B%90
">
                                    열림원
                                </a>
                            </p>


                            <p class="book_metadata genre">
                                프랑스 소설
                            </p>





                            <p class="book_metadata meta_description ">
                                <a class="" href="/books/1184000065" data-track-params="" data-track-type="">
                                    &lt;책소개&gt;

                                    2016년 안시 애니메이션 페스티벌 그랑프리 및 관객상 | 2016년 유러피안 필름 어워즈 최우수 애니메이션상
                                    2016년 칸 영화제 감독 주간 초청작 | 2017년 아카데미 장편 애니메이션 작품상 후보작
                                    2017년 골든 글로브 장편 애니메이션 후보작
                                    전...
                                </a>
                            </p>



                            <div class="book_metadata meta_price_info">
                                <h4 class="indent_hidden">상세 가격</h4>

                                <p class="buy_price_info">
                                    구매
                                    <span class="price">
                      <span class="museo_sans">9,800</span>원
                  </span>
                                </p>
                            </div>













                        </div>

                    </div><hr>
                    <div class="book_macro_landscape book_macro_110">




                        <div class="book_thumbnail_wrapper" data-book_id_for_tracking="222002111">
                            <div class="book_thumbnail">
                                <div class="thumbnail_image">
                                    <img class="thumbnail lazyloaded" src="//img.ridicdn.net/cover/222002111/large" alt="결정판 아르센 뤼팽 전집 9권" data-src="//img.ridicdn.net/cover/222002111/large" data-original-cover="//img.ridicdn.net/cover/222002111/large">
                                    <span class="border"></span>
                                </div>



                                <span class="badge_rental">
            <span class="rental_text">대여</span>
          </span>



                                <a class="thumbnail_btn " href="/books/222002111" data-track-params="" data-track-type="">
                                    <span class="indent_hidden">상세페이지 바로가기</span>
                                </a>


                            </div>
                        </div>






                        <div class="book_metadata_wrapper">

                            <h3 class="book_metadata meta_title ">
                                <a class="title_link " href="/books/222002111" data-track-params="" data-track-type="">
        <span class="title_text js_highlight_helper">
                결정판 아르센 뤼팽 전집 9권
      </span>
                                </a>
                            </h3>



                            <p class="book_metadata star_rate hidden_for_portrait"><span class="RSGBookMetadata_StarRate"><span class="StarRate_IconBox"><span class="StarRate_IconFill" style="width: 0%"></span></span><span class="StarRate_HiddenElement">참여</span></span></p>

                            <p class="book_metadata author ">
                                <a class="js_author_detail_link author_detail_link" href="/author/6609">모리스 르블랑</a>
                            </p>



                            <p class="book_metadata translator ">
                                <a class="js_author_detail_link author_detail_link" href="/author/4055">성귀수</a>           역
                            </p>





                            <p class="book_metadata publisher">
                                <a href="  /search?q=%EC%B6%9C%ED%8C%90%EC%82%AC%3Aarte
">
                                    arte
                                </a>
                            </p>


                            <p class="book_metadata genre">
                                영미소설
                            </p>





                            <p class="book_metadata meta_description ">
                                <a class="" href="/books/222002111" data-track-params="" data-track-type="">
                                    &lt;책소개&gt;

                                    역사상 가장 매혹적인 도둑 아르센 뤼팽
                                    35년에 걸친 모험담과 오리지널 삽화를 빠짐없이 수록한
                                    세계 최초의 결정판 전집

                                    프랑스 뤼팽협회가 인정한 유일한 결정판, 최신 발굴 작품 6편 국내 최초 공개!
                                    원고 총 30,000매, 오리지널 삽화 370여 ...
                                </a>
                            </p>



                            <div class="book_metadata meta_price_info">
                                <h4 class="indent_hidden">상세 가격</h4>
                                <p class="rental_price_info">
                                    대여
                                    <span class="price">
                      <span class="museo_sans">11,600</span>원
                  </span>
                                </p>

                                <p class="buy_price_info">
                                    구매
                                    <span class="price">
                      <span class="museo_sans">20,880</span>원
                  </span>
                                    <span class="discount_info">
              <span class="discount"><span class="museo_sans">(10%<span class="icon-arrow_10_down"></span>)</span></span>
              <del class="additional_info"><span class="museo_sans">23,200</span>원</del>
            </span>
                                </p>
                            </div>













                        </div>

                    </div><hr>
                    <div class="book_macro_landscape book_macro_110">




                        <div class="book_thumbnail_wrapper" data-book_id_for_tracking="754009592">
                            <div class="book_thumbnail">
                                <div class="thumbnail_image">
                                    <img class="thumbnail lazyloaded" src="//img.ridicdn.net/cover/754009592/large" alt="나는 어떻게 쓰는가" data-src="//img.ridicdn.net/cover/754009592/large" data-original-cover="//img.ridicdn.net/cover/754009592/large">
                                    <span class="border"></span>
                                </div>







                                <a class="thumbnail_btn " href="/books/754009592" data-track-params="" data-track-type="">
                                    <span class="indent_hidden">상세페이지 바로가기</span>
                                </a>


                            </div>
                        </div>






                        <div class="book_metadata_wrapper">

                            <h3 class="book_metadata meta_title ">
                                <a class="title_link " href="/books/754009592" data-track-params="" data-track-type="">
        <span class="title_text js_highlight_helper">
                나는 어떻게 쓰는가
      </span>
                                </a>
                            </h3>



                            <p class="book_metadata star_rate hidden_for_portrait"><span class="RSGBookMetadata_StarRate"><span class="StarRate_IconBox"><span class="StarRate_IconFill" style="width: 74%"></span></span><span class="StarRate_Score">3.7점</span><span class="StarRate_ParticipantCount">3<span class="StarRate_ParticipantCount_Unit">명</span></span><span class="StarRate_HiddenElement">참여</span></span></p>

                            <p class="book_metadata author ">
                                <a class="js_author_detail_link author_detail_link" href="/author/1266">김영진</a>,          <a class="js_author_detail_link author_detail_link" href="/author/3453">안수찬</a>              외 <span class="js_scroll_to_author_section_button scroll_to_author_section_button">11명</span>

                            </p>








                            <p class="book_metadata publisher">
                                <a href="  /search?q=%EC%B6%9C%ED%8C%90%EC%82%AC%3A%EC%94%A8%EB%84%A421%EB%B6%81%EC%8A%A4
">
                                    씨네21북스
                                </a>
                            </p>


                            <p class="book_metadata genre">
                                인문
                            </p>





                            <p class="book_metadata meta_description ">
                                <a class="" href="/books/754009592" data-track-params="" data-track-type="">
                                    &lt;책소개&gt;

                                    13인의 전문가에게 던진 질문,
                                    "당신은 어떻게 쓰고 있는가?"

                                    쓴다는 것의 괴로움, 직업적 ‘천형’으로서의 글쓰기

                                    나는 변호사가 된 뒤에, 이미 40대에 들어선 어느 고등법원 판사에게서 받은 문자메시지에 가슴이 아팠던 일을 잊지 못한다. 그 문...
                                </a>
                            </p>



                            <div class="book_metadata meta_price_info">
                                <h4 class="indent_hidden">상세 가격</h4>

                                <p class="buy_price_info">
                                    구매
                                    <span class="price">
                      <span class="museo_sans">8,400</span>원
                  </span>
                                </p>
                            </div>













                        </div>

                    </div><hr>
                    <div class="book_macro_landscape book_macro_110">




                        <div class="book_thumbnail_wrapper" data-book_id_for_tracking="120033058">
                            <div class="book_thumbnail">
                                <div class="thumbnail_image">
                                    <img class="thumbnail lazyloaded" src="//img.ridicdn.net/cover/120033058/large" alt="타마라" data-src="//img.ridicdn.net/cover/120033058/large" data-original-cover="//img.ridicdn.net/cover/120033058/large">
                                    <span class="border"></span>
                                </div>







                                <a class="thumbnail_btn " href="/books/120033058" data-track-params="" data-track-type="">
                                    <span class="indent_hidden">상세페이지 바로가기</span>
                                </a>


                            </div>
                        </div>






                        <div class="book_metadata_wrapper">

                            <h3 class="book_metadata meta_title ">
                                <a class="title_link " href="/books/120033058" data-track-params="" data-track-type="">
        <span class="title_text js_highlight_helper">
                타마라
      </span>
                                </a>
                            </h3>



                            <p class="book_metadata star_rate hidden_for_portrait"><span class="RSGBookMetadata_StarRate"><span class="StarRate_IconBox"><span class="StarRate_IconFill" style="width: 60%"></span></span><span class="StarRate_Score">3.0점</span><span class="StarRate_ParticipantCount">2<span class="StarRate_ParticipantCount_Unit">명</span></span><span class="StarRate_HiddenElement">참여</span></span></p>

                            <p class="book_metadata author ">
                                <a class="js_author_detail_link author_detail_link" href="/author/74471">에바 킬피</a>
                            </p>



                            <p class="book_metadata translator ">
                                <a class="js_author_detail_link author_detail_link" href="/author/4055">성귀수</a>           역
                            </p>





                            <p class="book_metadata publisher">
                                <a href="  /search?q=%EC%B6%9C%ED%8C%90%EC%82%AC%3A%EB%93%A4%EB%85%98
">
                                    들녘
                                </a>
                            </p>


                            <p class="book_metadata genre">
                                기타 국가 소설
                            </p>





                            <p class="book_metadata meta_description ">
                                <a class="" href="/books/120033058" data-track-params="" data-track-type="">
                                    &lt;책소개&gt;

                                    1972년에 출간된
                                    핀란드 최초의 에로티시즘 소설 국내 초역!
                                    세계문학의 천재 ‘에바 킬피’를 우리말로 만난다!

                                    에바 킬피는 시인이자 페미니스트이며, 핀란드의 대표 작가로 해외에 더 널리 알려졌으며 노벨문학상 수상자로도 거론된다. 『타마라』는 출간 ...
                                </a>
                            </p>



                            <div class="book_metadata meta_price_info">
                                <h4 class="indent_hidden">상세 가격</h4>

                                <p class="buy_price_info">
                                    구매
                                    <span class="price">
                      <span class="museo_sans">9,800</span>원
                  </span>
                                </p>
                            </div>













                        </div>

                    </div><hr>
                    <div class="book_macro_landscape book_macro_110">




                        <div class="book_thumbnail_wrapper" data-book_id_for_tracking="222002109">
                            <div class="book_thumbnail">
                                <div class="thumbnail_image">
                                    <img class="thumbnail ls-is-cached lazyloaded" src="//img.ridicdn.net/cover/222002109/large" alt="결정판 아르센 뤼팽 전집 7권" data-src="//img.ridicdn.net/cover/222002109/large" data-original-cover="//img.ridicdn.net/cover/222002109/large">
                                    <span class="border"></span>
                                </div>



                                <span class="badge_rental">
            <span class="rental_text">대여</span>
          </span>



                                <a class="thumbnail_btn " href="/books/222002109" data-track-params="" data-track-type="">
                                    <span class="indent_hidden">상세페이지 바로가기</span>
                                </a>


                            </div>
                        </div>






                        <div class="book_metadata_wrapper">

                            <h3 class="book_metadata meta_title ">
                                <a class="title_link " href="/books/222002109" data-track-params="" data-track-type="">
        <span class="title_text js_highlight_helper">
                결정판 아르센 뤼팽 전집 7권
      </span>
                                </a>
                            </h3>



                            <p class="book_metadata star_rate hidden_for_portrait"><span class="RSGBookMetadata_StarRate"><span class="StarRate_IconBox"><span class="StarRate_IconFill" style="width: 0%"></span></span><span class="StarRate_HiddenElement">참여</span></span></p>

                            <p class="book_metadata author ">
                                <a class="js_author_detail_link author_detail_link" href="/author/6609">모리스 르블랑</a>
                            </p>



                            <p class="book_metadata translator ">
                                <a class="js_author_detail_link author_detail_link" href="/author/4055">성귀수</a>           역
                            </p>





                            <p class="book_metadata publisher">
                                <a href="  /search?q=%EC%B6%9C%ED%8C%90%EC%82%AC%3Aarte
">
                                    arte
                                </a>
                            </p>


                            <p class="book_metadata genre">
                                영미소설
                            </p>





                            <p class="book_metadata meta_description ">
                                <a class="" href="/books/222002109" data-track-params="" data-track-type="">
                                    &lt;책소개&gt;

                                    역사상 가장 매혹적인 도둑 아르센 뤼팽
                                    35년에 걸친 모험담과 오리지널 삽화를 빠짐없이 수록한
                                    세계 최초의 결정판 전집

                                    프랑스 뤼팽협회가 인정한 유일한 결정판, 최신 발굴 작품 6편 국내 최초 공개!
                                    원고 총 30,000매, 오리지널 삽화 370여 ...
                                </a>
                            </p>



                            <div class="book_metadata meta_price_info">
                                <h4 class="indent_hidden">상세 가격</h4>
                                <p class="rental_price_info">
                                    대여
                                    <span class="price">
                      <span class="museo_sans">12,400</span>원
                  </span>
                                </p>

                                <p class="buy_price_info">
                                    구매
                                    <span class="price">
                      <span class="museo_sans">22,320</span>원
                  </span>
                                    <span class="discount_info">
              <span class="discount"><span class="museo_sans">(10%<span class="icon-arrow_10_down"></span>)</span></span>
              <del class="additional_info"><span class="museo_sans">24,800</span>원</del>
            </span>
                                </p>
                            </div>













                        </div>

                    </div><hr>
                    <div class="book_macro_landscape book_macro_110">




                        <div class="book_thumbnail_wrapper" data-book_id_for_tracking="1242000232">
                            <div class="book_thumbnail">
                                <div class="thumbnail_image">
                                    <img class="thumbnail lazyloaded" src="//img.ridicdn.net/cover/1242000232/large" alt="플랑드르인의 집" data-src="//img.ridicdn.net/cover/1242000232/large" data-original-cover="//img.ridicdn.net/cover/1242000232/large">
                                    <span class="border"></span>
                                </div>







                                <a class="thumbnail_btn " href="/books/1242000232" data-track-params="" data-track-type="">
                                    <span class="indent_hidden">상세페이지 바로가기</span>
                                </a>


                            </div>
                        </div>






                        <div class="book_metadata_wrapper">

                            <h3 class="book_metadata meta_title ">
                                <a class="title_link " href="/books/1242000232" data-track-params="" data-track-type="">
        <span class="title_text js_highlight_helper">
                플랑드르인의 집
      </span>
                                </a>
                            </h3>



                            <p class="book_metadata star_rate hidden_for_portrait"><span class="RSGBookMetadata_StarRate"><span class="StarRate_IconBox"><span class="StarRate_IconFill" style="width: 90%"></span></span><span class="StarRate_Score">4.5점</span><span class="StarRate_ParticipantCount">6<span class="StarRate_ParticipantCount_Unit">명</span></span><span class="StarRate_HiddenElement">참여</span></span></p>

                            <p class="book_metadata author ">
                                <a class="js_author_detail_link author_detail_link" href="/author/4039">조르주 심농</a>
                            </p>



                            <p class="book_metadata translator ">
                                <a class="js_author_detail_link author_detail_link" href="/author/4055">성귀수</a>           역
                            </p>





                            <p class="book_metadata publisher">
                                <a href="  /search?q=%EC%B6%9C%ED%8C%90%EC%82%AC%3A%EC%97%B4%EB%A6%B0%EC%B1%85%EB%93%A4
">
                                    열린책들
                                </a>
                            </p>


                            <p class="book_metadata genre">
                                추리/미스터리/스릴러
                            </p>





                            <p class="book_metadata meta_description ">
                                <a class="" href="/books/1242000232" data-track-params="" data-track-type="">
                                    &lt;책소개&gt;

                                    전 세계 독자를 열광케 한 형사 매그레 반장이 온다!

                                    대문호 헤밍웨이가 조르주 심농에게 보내는 찬사. "만약 아프리카 우림에서 비 때문에 꼼짝 못하게 되었다면, 심농을 읽는 것보다 더 좋은 대처법은 없다. 그와 함께라면 난 비가 얼마나 오래 오든 상관 안 할...
                                </a>
                            </p>



                            <div class="book_metadata meta_price_info">
                                <h4 class="indent_hidden">상세 가격</h4>

                                <p class="buy_price_info">
                                    구매
                                    <span class="price">
                      <span class="museo_sans">7,000</span>원
                  </span>
                                </p>
                            </div>













                        </div>

                    </div><hr>
                    <div class="book_macro_landscape book_macro_110">




                        <div class="book_thumbnail_wrapper" data-book_id_for_tracking="222001842">
                            <div class="book_thumbnail">
                                <div class="thumbnail_image">
                                    <img class="thumbnail ls-is-cached lazyloaded" src="//img.ridicdn.net/cover/222001842/large" alt="세 명의 사기꾼" data-src="//img.ridicdn.net/cover/222001842/large" data-original-cover="//img.ridicdn.net/cover/222001842/large">
                                    <span class="border"></span>
                                </div>







                                <a class="thumbnail_btn " href="/books/222001842" data-track-params="" data-track-type="">
                                    <span class="indent_hidden">상세페이지 바로가기</span>
                                </a>


                            </div>
                        </div>






                        <div class="book_metadata_wrapper">

                            <h3 class="book_metadata meta_title ">
                                <a class="title_link " href="/books/222001842" data-track-params="" data-track-type="">
        <span class="title_text js_highlight_helper">
                세 명의 사기꾼
      </span>
                                </a>
                            </h3>



                            <p class="book_metadata star_rate hidden_for_portrait"><span class="RSGBookMetadata_StarRate"><span class="StarRate_IconBox"><span class="StarRate_IconFill" style="width: 60%"></span></span><span class="StarRate_Score">3.0점</span><span class="StarRate_ParticipantCount">1<span class="StarRate_ParticipantCount_Unit">명</span></span><span class="StarRate_HiddenElement">참여</span></span></p>

                            <p class="book_metadata author ">
                                <a class="js_author_detail_link author_detail_link" href="/author/16597">스피노자의 정신</a>
                            </p>



                            <p class="book_metadata translator ">
                                <a class="js_author_detail_link author_detail_link" href="/author/4055">성귀수</a>           역
                            </p>





                            <p class="book_metadata publisher">
                                <a href="  /search?q=%EC%B6%9C%ED%8C%90%EC%82%AC%3Aarte
">
                                    arte
                                </a>
                            </p>


                            <p class="book_metadata genre">
                                인문
                            </p>





                            <p class="book_metadata meta_description ">
                                <a class="" href="/books/222001842" data-track-params="" data-track-type="">
                                    &lt;책소개&gt;

                                    세계 3대 종교에 직격탄을 날린 ‘17세기 비밀출판물’

                                    베일에 가려진 저자, 희대의 금서! 17세기 자유사상가들을 열광시킨 지하수사본

                                    종교는 사기술이다!

                                    “예수는 마호메트보다 나은 점이 없고, 마호메트는 모세보다 나은 점이 없고, 그 셋 모...
                                </a>
                            </p>



                            <div class="book_metadata meta_price_info">
                                <h4 class="indent_hidden">상세 가격</h4>

                                <p class="buy_price_info">
                                    구매
                                    <span class="price">
                      <span class="museo_sans">11,200</span>원
                  </span>
                                </p>
                            </div>













                        </div>

                    </div><hr>
                    <div class="book_macro_landscape book_macro_110">




                        <div class="book_thumbnail_wrapper" data-book_id_for_tracking="2368000002">
                            <div class="book_thumbnail">
                                <div class="thumbnail_image">
                                    <img class="thumbnail ls-is-cached lazyloaded" src="//img.ridicdn.net/cover/2368000002/large" alt="왜냐고 묻지 않는 삶" data-src="//img.ridicdn.net/cover/2368000002/large" data-original-cover="//img.ridicdn.net/cover/2368000002/large">
                                    <span class="border"></span>
                                </div>




                                <span class="badge_discount">
              <span class="discount_num museo_sans">
                <span class="num">10</span><span class="percent">%</span><span class="indent_hidden">할인</span>
              </span>
            </span>



                                <a class="thumbnail_btn " href="/books/2368000002" data-track-params="" data-track-type="">
                                    <span class="indent_hidden">상세페이지 바로가기</span>
                                </a>


                            </div>
                        </div>






                        <div class="book_metadata_wrapper">

                            <h3 class="book_metadata meta_title ">
                                <a class="title_link " href="/books/2368000002" data-track-params="" data-track-type="">
        <span class="title_text js_highlight_helper">
                왜냐고 묻지 않는 삶
      </span>
                                </a>
                            </h3>



                            <p class="book_metadata star_rate hidden_for_portrait"><span class="RSGBookMetadata_StarRate"><span class="StarRate_IconBox"><span class="StarRate_IconFill" style="width: 0%"></span></span><span class="StarRate_HiddenElement">참여</span></span></p>

                            <p class="book_metadata author ">
                                <a class="js_author_detail_link author_detail_link" href="/author/24841">알렉상드르 졸리앙</a>
                            </p>



                            <p class="book_metadata translator ">
                                <a class="js_author_detail_link author_detail_link" href="/author/4055">성귀수</a>           역
                            </p>





                            <p class="book_metadata publisher">
                                <a href="  /search?q=%EC%B6%9C%ED%8C%90%EC%82%AC%3A%EC%9D%B8%ED%84%B0%ED%95%98%EC%9A%B0%EC%8A%A4
">
                                    인터하우스
                                </a>
                            </p>


                            <p class="book_metadata genre">
                                인문
                            </p>





                            <p class="book_metadata meta_description ">
                                <a class="" href="/books/2368000002" data-track-params="" data-track-type="">
                                    &lt;책소개&gt;

                                    유럽에서 인간 승리의 아이콘으로 통하는 밀리언셀러 작가이자, 무수한 방송과 강연을 넘나들며 ‘행복전도사’로 왕성한 활동을 벌이는 유명 철학자 졸리앙. 그러던 그가 갑자기 ‘모두가 자신을 알아보는’ 그곳을 떠나 ‘아무도 자신을 알아보지 못하는’ 이곳 한국의 아파트에...
                                </a>
                            </p>



                            <div class="book_metadata meta_price_info">
                                <h4 class="indent_hidden">상세 가격</h4>

                                <p class="buy_price_info">
                                    구매
                                    <span class="price">
                      <span class="museo_sans">8,100</span>원
                  </span>
                                    <span class="discount_info">
              <span class="discount"><span class="museo_sans">(10%<span class="icon-arrow_10_down"></span>)</span></span>
              <del class="additional_info"><span class="museo_sans">9,000</span>원</del>
            </span>
                                </p>
                            </div>













                        </div>

                    </div><hr>
                    <div class="module_paging"><ul class="paging_wrap"><li class="page_list page_list_first page_this"><a class="museo_sans" href="#">1</a></li><li class="page_list page_list_last"><a class="museo_sans" href="/author/4055?id=4055&amp;order=selling&amp;page=2">2</a></li><li class="btn_next"><a href="/author/4055?id=4055&amp;order=selling&amp;page=2" title="2 페이지"><span class="indent_hidden">다음으로</span><span class="icon-arrow_8_right"></span></a></li></ul></div>
                </div>
            </div>
        </section>
    </div>
</div>

<jsp:include page="../footer.jsp"/>
</body>

</html>