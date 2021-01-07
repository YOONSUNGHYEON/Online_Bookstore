<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko" class=" overthrow-enabled"><head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# books: http://ogp.me/ns/books#">


    <title>내 카트 - 리디북스</title>

    <jsp:include page="../mainBase.jsp" />
    <link title="리디북스 검색" rel="search" type="application/opensearchdescription+xml" href="https://store.ridicdn.net/xml/open_search_description.xml?20201224151233">

    <link rel="stylesheet" href="https://store.ridicdn.net/books/dist/css/common/nanumgothic.css?150324">
    <link rel="stylesheet" href="https://store.ridicdn.net/books/dist/css/page_base_renewal.css?20201224151525">
    <link rel="stylesheet" href="https://store.ridicdn.net/books/dist/css/external_base/external_base.css?20201224151546">
    <link rel="stylesheet" href="https://store.ridicdn.net/store/dist/modal.css?20201224151505">
    <link rel="stylesheet" href="https://store.ridicdn.net/store/dist/base.css?20201224151502">
    <link rel="stylesheet" href="https://store.ridicdn.net/books/dist/css/page_cart_renewal.css?20201224151531">




<body id="ridi_books" class="pc_device">

<%--<div id="__next"><style><!-- GLOBAL_STYLE_RESET_START --></style><style><!-- GLOBAL_STYLE_RESET_END --></style><div class="new_gnb css-19fwgn3-GNBWrapper e3elb1j0" id="gnb"><header class="css-3rmz54-Header e3elb1j1"><nav class="css-1d1zvvo-Navigation e3elb1j2"><div class="css-1qs9hbd-LogoSearchBoxArea e3elb1j8"><ul class="css-r4dhpn-LogoWrapper e3elb1j3"><li class="css-2gzzpw-LogoItem e3elb1j4"><h1><a aria-label="리디북스 홈으로 이동" href="/"><img src="https://books.ridicdn.net/_next/static/images/RidiLogo-592c9ce0edd31ed74d39e630f19861b0.svg" alt="리디북스" class="css-1s1qgue-RidibooksLogo e3elb1j5"></a></h1></li><li class="css-2gzzpw-LogoItem e3elb1j4"><a href="https://select.ridibooks.com" aria-label="리디셀렉트 홈으로 이동"><img src="https://books.ridicdn.net/_next/static/images/RidiSelectLogo-3b930d873b3fcfba216b78134049283c.svg" alt="리디셀렉트" class="css-1fvbrwb-RidiSelectLogo e3elb1j6"></a></li></ul><ul class="css-1d6sw42-ButtonWrapper e3elb1j7"><li><a href="https://ridibooks.com/order/checkout/cash" aria-label="리디 캐시 충전"><button class="css-hzgyb8-StyledButton e1pge3rg0"><div class="css-alxaln-GNBButtons"><span class="css-133cs9z-GNBButtons">캐시<span class="css-1opm1mm-GNBButtons">충전</span></span><svg width="12" height="12" fill="none"><path fill-rule="evenodd" clip-rule="evenodd" d="M11.357 7.61c-.588.363-1.522.6-2.576.6a6.284 6.284 0 01-1.5-.174.805.805 0 01.164.466c0 .412-.36.785-.942 1.055.583.27 1.388.439 2.278.439 1.778 0 3.22-.67 3.22-1.494 0-.335-.242-.643-.644-.892zm-8.14-3.356C1.443 4.254 0 4.924 0 5.747c0 .825 1.442 1.494 3.218 1.494 1.778 0 3.22-.669 3.22-1.494 0-.822-1.442-1.493-3.22-1.493zm2.586 3.362c-.586.365-1.524.605-2.585.605-1.06 0-1.997-.24-2.583-.605C.237 7.864 0 8.17 0 8.502c0 .825 1.442 1.493 3.22 1.493 1.776 0 3.218-.668 3.218-1.493 0-.333-.237-.638-.635-.886zM8.78 1.5c-1.776 0-3.218.67-3.218 1.493 0 .825 1.442 1.494 3.218 1.494 1.779 0 3.22-.67 3.22-1.494C12 2.17 10.56 1.5 8.78 1.5zM12 5.747c0 .825-1.441 1.494-3.219 1.494-.89 0-1.695-.168-2.278-.438.582-.27.942-.643.942-1.056a.804.804 0 00-.164-.465c.449.11.957.173 1.5.173 1.054 0 1.988-.236 2.576-.6.402.25.643.557.643.892z" fill="#fff"></path></svg></div></button></a></li><li><a href="https://library.ridibooks.com" aria-label="내 서재 홈으로 이동"><button class="css-hzgyb8-StyledButton e1pge3rg0">내 서재</button></a></li></ul><form class="css-1cn4af9-WrapperForm e1m8c7ex0"><div tabindex="-1" class="css-1l2h10c-FocusTrap e1m8c7ex1"><div class="css-1dz7dy5-SearchBoxWrapper e1m8c7ex2"><label class="css-c9oc3e-SearchBoxShape e1m8c7ex3"><img alt="인스턴트 검색" src="https://books.ridicdn.net/_next/static/images/Lens-51d6b7e3ca3789dc0f05e906dfa2744a.svg" class="css-ckfcqf-StyledLens e1m8c7ex7"><input placeholder="제목, 저자, 출판사 검색" class="css-g7wjto-SearchBox e1m8c7ex8" value=""></label></div></div></form></div></nav><ul class="css-1blc6gj-Tabs e1a48czu1"><li class="css-3olj26-TabItemWrapper e1a48czu4"><a href="/" aria-label="홈" class="css-rsb4cf-StyledAnchor e1a48czu0"><button class="css-1ojv6a3-TabButton e1a48czu2"><svg viewBox="0 0 24 24" class="css-td2buc"><path d="M12 2a.997.997 0 00-.707.293l-8.854 8.853a1.504 1.504 0 00-.44 1.06v9.38a1 1 0 001 1h5.998a1 1 0 001-1v-6h4.007v6a1 1 0 001 1H21a1 1 0 001-1v-9.38c0-.396-.157-.778-.438-1.06l-8.854-8.853A1 1 0 0012 2m0 2.415l8 7.999v8.172h-3.996v-6a1 1 0 00-1-1H8.997a1 1 0 00-1 1v6H4v-8.172l8-8"></path></svg><span class="css-t3ykjb-a11y-labelStyle">홈</span></button><span class="css-9aoyjt-BottomLine e1a48czu3"></span></a></li><li class="css-3olj26-TabItemWrapper e1a48czu4"><a href="/notification" aria-label="알림" class="css-rsb4cf-StyledAnchor e1a48czu0"><button class="css-1ojv6a3-TabButton e1a48czu2"><svg viewBox="0 0 24 24" class="css-td2buc"><path d="M17.451 17.32H4.536c.846-1.413 1.93-3.774 1.93-7.522 0-2.693.963-4.447 2.944-5.36.06-.016.113-.036.16-.056l.27-.105c.067-.034.133-.074.126-.086l.392-.047c1.21-.174 2.01-.266 2.972.01l.198.03c.07.02.135.06.203.093l.211.105H14c.047.02.1.04.162.056 1.98.914 2.943 2.668 2.943 5.36 0 3.798 1.053 6.148 1.896 7.521h-1.549zm-5.762 4.308c-1.418 0-2.668-.922-3.275-2.309h6.551c-.608 1.387-1.858 2.31-3.276 2.31zm9.59-4.51c-.674-.927-2.175-3.048-2.175-7.32 0-4.439-2.303-6.384-4.235-7.235l-.193-.085h-.03a1.9 1.9 0 00-.138-.049 2.226 2.226 0 00-.738-.229c-.758-.2-1.409-.2-1.985-.2-.574 0-1.128.08-1.714.166l-.194.028a2.129 2.129 0 00-.816.236 1.727 1.727 0 00-.135.048l-.224.085c-1.933.85-4.236 2.796-4.236 7.235 0 4.063-1.402 6.16-2.155 7.286l-.038.056a1.292 1.292 0 00.092 1.695c.145.144.484.484 1.09.484h2.852c.737 2.537 2.878 4.31 5.382 4.31 2.504 0 4.646-1.773 5.382-4.31h3.044c.606 0 .945-.34 1.09-.484l.115-.115.072-.145c.36-.718.087-1.218-.114-1.457z"></path></svg><span class="css-t3ykjb-a11y-labelStyle">알림</span></button><span class="css-9aoyjt-BottomLine e1a48czu3"></span></a></li><li class="css-1y0z8rz-TabItemWrapper-TabItem e1a48czu4"><a href="/cart" aria-label="카트" class="css-rsb4cf-StyledAnchor e1a48czu0"><button class="css-1ojv6a3-TabButton e1a48czu2"><svg viewBox="0 0 24 24" class="css-td2buc"><path d="M21.45 21.028c0 1.101-.9 2-2 2s-2-.899-2-2c0-1.1.9-2 2-2s2 .9 2 2zm-9.7 0c0 1.101-.9 2-2 2s-2-.899-2-2c0-1.1.9-2 2-2s2 .9 2 2zM7.304 4.2l-.7-3.2H1a1 1 0 100 2h3.995l.518 2.366L7.685 15.9h13.829l2.414-11.7H7.304z"></path></svg><span class="css-t3ykjb-a11y-labelStyle">카트</span></button><span class="css-4b6dxz-BottomLine-currentTab e1a48czu3"></span></a></li><li class="css-3olj26-TabItemWrapper e1a48czu4"><a href="/account/myridi" aria-label="마이리디" class="css-rsb4cf-StyledAnchor e1a48czu0"><button class="css-1ojv6a3-TabButton e1a48czu2"><svg viewBox="0 0 24 24" class="css-td2buc"><path d="M15.729 23.033h-.821c-.223 0-.345-.125-.345-.354v-2.546l-.95 1.56a.316.316 0 01-.288.173.33.33 0 01-.295-.171l-.944-1.56v2.544c0 .225-.128.354-.352.354h-.82c-.224 0-.353-.13-.353-.354v-4.912c0-.224.129-.353.354-.353h.795c.168 0 .289.062.37.192l1.245 2.077 1.24-2.075c.069-.126.192-.194.367-.194h.797c.23 0 .36.125.36.353v4.912c0 .225-.131.354-.36.354zm3.717 0h-.864c-.226 0-.355-.13-.355-.354v-1.716l-1.711-3.078a.318.318 0 01-.01-.322.305.305 0 01.27-.15h.903c.243 0 .349.149.415.278l.72 1.443.199.453.196-.448.72-1.447c.07-.131.177-.278.419-.278h.9c.118 0 .218.057.27.149a.319.319 0 01-.01.325L19.8 20.963v1.716c0 .225-.13.354-.354.354zM8.56 21.039l-4.511.002c.875-3.845 3.505-5.794 7.818-5.794.692 0 1.323.068 1.926.167h4.833c-1.67-1.416-3.951-2.167-6.76-2.167-5.352 0-8.74 2.59-9.798 7.489a1.737 1.737 0 00.453 1.72c.39.389.838.577 1.37.577H8.56v-1.994zm3.307-18.04C9.97 3 8.595 4.537 8.595 6.653c0 .692 0 2.797 3.273 2.797 2.815 0 3.176-1.495 3.176-2.797 0-2.15-1.306-3.652-3.176-3.652zm0 8.45c-3.302 0-5.273-1.793-5.273-4.797C6.595 3.429 8.862 1 11.868 1c3 0 5.176 2.377 5.176 5.652 0 3.049-1.886 4.797-5.176 4.797z"></path></svg><span class="css-t3ykjb-a11y-labelStyle">마이리디</span></button><span class="css-9aoyjt-BottomLine e1a48czu3"></span></a></li></ul></header></div></div>--%>
<div id="base_contents_wrapper">
    <div id="books_contents">
        <div>
            <section id="page_cart">
                <h2 class="article_title">카트</h2>
                <div class="cart_wrapper js_cart_wrapper">
                    <ul class="cart_tab_wrapper">
                        <li class="cart_tab tab_buy js_buy_tab selected">
                            <a href="/cart/?type=buy">
                                구매 가능<span class="book_count js_buyable_book_count" data-book-count="0"></span>
                            </a>
                        </li>
                        <li class="cart_tab tab_rent js_rent_tab">
                            <a href="/cart/?type=rent">
                                대여 가능<span class="book_count js_rentable_book_count" data-book-count="0"></span>
                            </a>
                        </li>
                    </ul>
                    <form action="/order/checkout" method="post" id="form" class="checkout_form js_checkout_form">
                        <article class="cart_list_wrapper js_cart_list_wrapper">
                            <div class="cart_list_box">
                                <div class="rui_empty_1 js_empty">
                                    <span class="empty_mark icon-cart_2"></span>
                                    <p class="empty_description js_empty_description">
                                        카트에 담긴 책이 없습니다.
                                    </p>
                                </div>
                                <div class="spinner_wrapper"></div>
                                <div id="spinner"></div>
                            </div>
                        </article>
                    </form>
                </div>
                <div class="hidden">
                    <input type="hidden" id="cart_move_excess_books_to_wishlist_csrf_token" value="1y4DQdWvXtsRCePlp_YbQbBSAKkLblsNANiYstI1hSUkzXDfo-J0rdaoyloAeGZtiZ2_djorsYy18lcYXFuipfhZ4F3meGlUtmnKpobOB1s">
                    <input type="hidden" id="cart_move_to_wishlist_csrf_token" value="u47MLd4dpPJUBsz3YtOrUozJnR22x87oW51nxgJbITPThDHUXckPnGwK2ZVV7uBUArGh6HV_f8qhQOB4_d_RYQ">
                    <input type="hidden" id="cart_remove_csrf_token" value="jbE0AtFG1-wHGcktvfW2Tvl_ZPeppr7yRYm0mF8rGtgSE8bbEub5FgRKoAq51KtT">
                </div>

            </section>
        </div>
    </div><hr>



</div>


</body></html>