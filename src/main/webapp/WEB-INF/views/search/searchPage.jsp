<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>category list</title>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/search/js/search.js"></script>
    <link href="${pageContext.request.contextPath}/resources/search/css/search.css" rel="stylesheet" type="text/css">


</head>

<body>
<jsp:include page="../mainBase.jsp"/>
<main class="css-10ux3qq-Contents eqnynw70">
    <section class="css-SearchResultSection"><h2 class="css-i1sryg-SearchTitle e1d8ahie1">'hi'
        저자 검색 결과<span class="css-4256oc-TotalAuthor e1d8ahie3">총 5명</span></h2>
        <ul class="css-AuthorList">
            <div id="css-AuthorList-defaultHoverStyle">
            </div>
            <li>
                <button id="more" class="css-1hcepfe-ShowMoreAuthor">더 보기
                    <svg viewBox="0 0 20 16" class="css-conzdg-Arrow e18e26n04">
                        <path d="M17.88 2.88L10 10.76 2.12 2.88 0 5l10 10L20 5z"></path>
                    </svg>
                </button>
            </li>
        </ul>


        <div class="css-nn7pxq-SearchTitleWrapper e1d8ahie2"><h2 class="css-i1sryg-SearchTitle e1d8ahie1">‘hi’ 도서
            검색 결과</h2><label class="css-85gfqx-AdultExcludeButton ewdg9eo0">
            <div class="css-xiz74j-ScaledSmall ewdg9eo1">
                <div class="css-1by8lqc-Container e1ot9nnq0"><input type="checkbox" class="css-1eq49lg-Input e1ot9nnq1">
                </div>
            </div>
        </label></div>
        <div class="css-1kp8mto-ControllerContainer-containerStyle epsecci0">
            <div class="css-l2bgk4-SlidingContainer-scrollBarHidden epsecci1">
                <div class="css-147ezuq-Marker epsecci2"></div>
                <div class="css-18uhw82-Content epsecci3">
                    <ul id="css-96p3ms-CategoryList">

                    </ul>
                </div>
                <div class="css-147ezuq-Marker epsecci2"></div>
            </div>
            <div class="css-govncf-SliderControllerContainer-displayNoneForTouchDevice-arrowStyle epsecci4">
                <button type="button"
                        class="css-wup6kn-Arrow-clearOutline-defaultOpacity-baseArrowStyle-arrowHiddenStyle-Arrow">
                    <svg width="10" height="12" fill="transparent" class="css-hheinx-leftRotate-mergedStyle">
                        <path d="M1.8 1.272L6.725 6 1.8 10.728 3.125 12l6.25-6-6.25-6L1.8 1.272z"></path>
                    </svg>
                    <span class="a11y" aria-label="이전">이전</span></button>
                <button type="button"
                        class="css-wup6kn-Arrow-clearOutline-defaultOpacity-baseArrowStyle-arrowHiddenStyle-Arrow">
                    <svg width="10" height="12" fill="transparent" class="css-p8s1pl-mergedStyle">
                        <path d="M1.8 1.272L6.725 6 1.8 10.728 3.125 12l6.25-6-6.25-6L1.8 1.272z"></path>
                    </svg>
                    <span class="a11y" aria-label="다음">다음</span></button>
            </div>
        </div>
        <div color="#D1D5D9" class="css-19v6vho-Border er5puow5"></div>
        <div class="css-fjc0p6-Filters e1d8ahie6"><select id="sortSelectBox" aria-label="검색 정렬 순서" class="css-7jf6if-Select e1oiqoxs0">
            <option value="score">인기순</option>
            <option value="recent">최신순</option>
            <option value="review_cnt">리뷰 많은순</option>
            <option value="similarity">정확도순</option>
        </select>
            <div><label class="css-1jiu14l-Label-defaultHoverStyle e1dcpc171"><input id="isRental" type="checkbox"
                                                                                     name="isRental"
                                                                                     class="css-1pfyy4p-Input e1dcpc170">대여</label>
            </div>
        </div>
        <div id="css-SearchBookListContainer">

        </div>
        <div class="css-tdw7ny-EmptyBlock e1d8ahie7"></div>
    </section>
</main>
<jsp:include page="../footer.jsp"/>
</body>
</html>