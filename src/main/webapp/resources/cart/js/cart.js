$(document).ready(function () {

    showCart();
    $('cartbtn2').on('click', function(){
        deleteFromcart()
    })

})


function showCart(){
    let targetId = 1;
    $.ajax({
        type: 'GET',
        url: `/api/cart/${targetId}`,


        success: function (response){
            for(let i=0; i<response.length; i++){
                let bookdto = response[i];
                let tempHtml = addcartItem( bookdto );
                $('#booklist-container').append(tempHtml);
            }
        }
    })
    console.log("cart.js done");
}

function addHTML(){

}

function deleteFromcart(cartlistId){


    $('#booklist-container').deleteCell(cartlistId);

}

function addcartItem(bookDTO){

    return `<div class="row">
            <div class="col-xs-1"><input type="checkbox"></div>
            <div class="col-xs-2"><img style="width:60px; height:auto;" src=${bookDTO.book_Cover}>
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

