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
                let tempHtml = addcartItem( bookdto ,i);
                $('#booklist-container').append(tempHtml);
            }
        }
    })
    console.log("cart.js done");
}

function addHTML(){

}

function deleteFromcart(cartlistId){
    let memberNum = 1;

    $('#booklist-container').empty(cartlistId);
    $.ajax({
        type: "DELETE",
        url: `/api/cart/${cartlistId}/${memberNum}`,
        success: function (response) {
                showCart();
        }
    })
}

function deleteSeveral(){
    let memberNum =1;
    var cnt = $("input[name='rowcheckbox']:checked").length;
    var arr = new Array();
    $("input[name='rowcheckbox']:checked").each(function(){
        let cartlistId = $(this).attr('id');
        if(cnt==0){
            alert("선택된 상품이 없습니다.");
            window.location.reload();
        }
        else{
            $.ajax({
                type: "DELETE",
                url: `/api/cart/${cartlistId}/${memberNum}`,
                success: function (response) {
                    showCart();
                }
            })
            $('#booklist-container').empty(cartlistId);
        }

    });

}

function deleteAll (){
    $('#booklist-container').empty();
}

function addcartItem(bookDTO,id){

    return `<div class="row">
            <div class="col-xs-1"><input type="checkbox" name="rowcheckbox" id="${id}"></div>
            <div class="col-xs-2"><img style="width:60px; height:auto;" src=${bookDTO.book_Cover}>
            </div>
            <div class="col-xs-9">
                <div class="book-title">${bookDTO.book_Title}</div>
                <div class="book-info">
                    <span class="book-author">${bookDTO.book_Author}</span>
                    <span class="book-price">${bookDTO.book_Price}</span>
                </div>
                <div class="book-button">
                    <input type="button" id="${id}-move" class="cartbtn2" value="위시리스트로 이동">
                    <input type="button"  id="${id}-delete" class="cartbtn2" value="삭제" onclick="deleteFromcart('${id}')">

                </div>
            </div>
        </div>`;
}

