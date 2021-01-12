
function addHTML(){

}

function deleteFromcart(){

}

function addcartItem(bookDTO){

    return `<div class="row">
            <div class="col-xs-1"><input type="checkbox"></div>
            <div class="col-xs-2"><img style="width:60px; height:auto;" src="${path}/resources/main/book.jpg"/>
            </div>
            <div class="col-xs-9">
                <div class="book-title">${bookDTO.book_Title}</div>
                <div class="book-info">
                    <span class="book-author">${bookDTO.book_Author}</span>
                    <span class="book-price">${bookDTO.book_Price}</span>
                </div>
                <div class="book-button">
                    <input type="button" class="cartbtn2" value="위시리스트로 이동">
                        <input type="button" class="cartbtn2" value="삭제">
                </div>
            </div>
        </div>`;
}

function showCart(){
    let member_Num = 1;
    $.ajax({
        type: 'GET',
        url: `/api/cart?member=${member_Num}`
        success: function (response){
            for(let i=0; i<response.length; i++){
                let bookDTO = response[i];
                let tempHtml = addcartItem( bookDTO );
                $('#cartbooklist').append(tempHtml);
            }
        }

    })
}