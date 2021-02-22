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
    <script src="${pageContext.request.contextPath}/resources/search/js/search.js"></script>
    <link href="${pageContext.request.contextPath}/resources/search/css/search.css" rel="stylesheet" type="text/css">


</head>

<body>
<jsp:include page="../mainBase.jsp"/>

<main class="css-Contents">
    <section class="css-SearchResultSection"><h2 class="css-SearchTitle">'${searchTerm}'
        저자 검색 결과<span class="css-TotalAuthor"></span></h2>
        <ul class="css-AuthorList">
            <div id="css-AuthorList-defaultHoverStyle">
            </div>
            <li>
                <button id="more" class="css-ShowMoreAuthor">더 보기
                    <svg viewBox="0 0 20 16" class="css-Arrow">
                        <path d="M17.88 2.88L10 10.76 2.12 2.88 0 5l10 10L20 5z"></path>
                    </svg>
                </button>
            </li>
        </ul>


        <div class="css-SearchTitleWrapper "><h2 class="css-SearchTitle e1d8ahie1" id="bookResult">'${searchTerm}' 도서
            검색 결과</h2>
        </div>



       

        <div color="#D1D5D9" class="css-Border"></div>
        <div class="css-Filters"><select id="sortSelectBox" aria-label="검색 정렬 순서" class="css-Select">
            <option value="score">인기순</option>
            <option value="recent">최신순</option>
            <option value="review_cnt">리뷰 많은순</option>
            <option value="similarity">정확도순</option>
        </select>
            <div><label class="css-Label-defaultHoverStyle"></label>
            </div>
        </div>
        <div id="css-SearchBookListContainer">

        </div>
        <div class="css-EmptyBlock e1d8ahie7"></div>
    </section>
</main>
<jsp:include page="../footer.jsp"/>
</body>
</html>