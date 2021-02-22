$(document).ready(function() {

//showCategoryList("a");

    let query = SearchTerm;

    console.log("query:"+query);
    showAuthorResult(query);
    showSearchResult(query, "SalesPoint");

    $('#sortSelectBox').on('change', function () {
        let state = $(this).val();
        if (state === 'score') {
            showSearchResult(query, "SalesPoint");
        } else if (state === 'recent') {
            showSearchResult(query, "PublishTime");
        } else if (state === 'review_cnt') {
            showSearchResult(query, "MyReviewCount");
        } else if (state === 'similarity') {
            showSearchResult(query, "Accuracy");
        }
    });

});


function execSearch() {
    /**
     * 검색어 input id: query
     * 검색결과 목록: #search-result-box
     * 검색결과 HTML 만드는 함수: addHTML
     */
        // 1. 검색창의 입력값을 가져온다.
    let query = $('#searchQuery').val();

    // 2. 검색창 입력값을 검사하고, 입력하지 않았을 경우 focus.
    if (query == '') {
        $('#searchQuery').focus();
        return;
    }
    console.log("this is query");
    // 3. GET /api/search?query=${query} 요청
    showAuthorResult(query);
    showSearchResult(query, "SalesPoint");

}





function showSearchResult(terms,sortType){
    $.ajax({
        type: 'GET',
        url: `/search/Keyword&searchTerm=${terms}&sortType=${sortType}`,



        success: function (response){
            $('#css-SearchBookListContainer').empty();
            console.log(response);
            for(let i=0; i<response.length; i++){
                let temphtml = addBookHtml(response[i]);
                $('#css-SearchBookListContainer').append(temphtml);

            }
        }

    })
}

function showAuthorResult(terms){

    let responseLength =0;
    $.ajax({
        type: 'GET',
        url: `/search/Author&searchTerm=${terms}&sortType=Accuracy`,



        success: function (response){
            $('#css-AuthorList-defaultHoverStyle').empty();
            responseLength = response.length;
            for(let i=0; i<5; i++){
                let temphtml = addAuthorHtml(response[i]);
                console.log(response[i]);
                $('#css-AuthorList-defaultHoverStyle').append(temphtml);

            }
          //  $('#css-AuthorList-defaultHoverStyle').append(showMoreHtml(responseLength-5));
        }
    })


}

function showMoreHtml(responseLength){
   return ` <li>
                <button class="css-1hcepfe-ShowMoreAuthor e18e26n02">${responseLength}명 더 보기
                    <svg viewBox="0 0 20 16" class="css-conzdg-Arrow e18e26n04">
                        <path d="M17.88 2.88L10 10.76 2.12 2.88 0 5l10 10L20 5z"></path>
                    </svg>
                </button>
            </li>`;
}


function showCategoryList(terms){


    $( '#css-96p3ms-CategoryList').empty();
    $.ajax({
        type: 'GET',
        url: `/search/authorOrBook=Book&searchTerm=${terms}&sortType=Accuracy/category`,



        success: function (response){
            console.log(response);
            for(let i=0; i<response.length; i++){
                let temphtml = addAuthorHtml(response[i]);
                console.log(response[i]);
                $('#css-96p3ms-CategoryList').append(temphtml);

            }
            console.log("hi");
        }

    })

}

function numberWithCommas(x) {
    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}

function addAuthorHtml(book){
   return `<li class="css-AuthorItem"><a
        href="/author"
        class="css-AuthorAnchor">
        <div class="css-AuthorInfoWrapper"><span
            class="css-AuthorIconWrapper"><img
            src="https://books.ridicdn.net/_next/static/images/Author-8a6165105065ad9ec6212f3a5c33ad95.svg"
            alt="작가" class="css-AuthorIcon"></span><span
            class="css-AuthorName"><strong> ${book.book_Author}</strong> </span><span
            class="css-AuthorBooksInfo">&lt;${book.book_Title}&gt;</span></div>
    </a></li>`;
}




function addBookHtml(book){

    return `<ul class="css-SearchBookList">
            <li class="css-SearchBookItem">
            <div class="css-Wrapper"><a
                    href="detail/${book.book_Id}"
                    class="css-ThumbnailAnchor">
                <div class="css-ThumbnailWrapper"><img
                        class="ed08jkz1 css-Thumbnail-StyledThumbnailWithBadge"
                        src="${book.book_Cover}"
                        srcSet="${book.book_Cover} 50w,${book.book_Cover} 90w"
                        sizes="(min-width: 999px) 100px, 80px" alt="천마성의 막내아들"></div>
            </a>
                <div class="css-SearchBookMetaWrapper"><h3
                        class="css-SearchBookTitle"><a
                        href="detail/${book.book_Id}">[e북]
                    <strong>${book.book_Title}</strong></a></h3>
                    <ul class="css-SearchBookMetaList">
                        <li class="css-SearchBookMetaItem"><span type="author"
                                                                                      class="css-SearchBookMetaField-authorStyle"><a
                                href="/author">${book.book_Publisher}</a></span></li>
                        <div class="css-SearchBookMetaItemGroup">
                            <li class="css-SearchBookMetaItem"><span type="normal"
                                                                                          class="css-SearchBookMetaField-normalFieldStyle"><a
                                    href="detail/${book.book_Id}">책</a></span>
                            </li>
                            <li class="css-SearchBookMetaItem ed08jkz4"><span type="normal"
                                                                                          class="css-SearchBookMetaField-normalFieldStyle">${book.book_CategoryName}</span>
                            </li>
                        </div>
                    </ul>
                    <a href="detail/${book.book_Id}">
                        <p class="css-BookDesc">${book.book_Description}</p></a>
                    <dl class="css-PriceItem">
                        <dt class="css-PriceTitle-priceBase">가격</dt>
                        <dd><span class="css-Price-priceBase">${numberWithCommas(book.book_Price)}원</span></dd>
                    </dl>
                </div>
            </div>
        </li></ul>`;

}