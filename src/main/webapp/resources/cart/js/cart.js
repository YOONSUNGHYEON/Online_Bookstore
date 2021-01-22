$(document).ready(function () {

    showCart();
    $('#all_select').click(function(){
        if($("input:checkbox[id='all_select']").prop("checked")){
            $("input[type=checkbox]").prop("checked", true);
        }else{
            $("input[type=checkbox]").prop("checked", false);
        }
    });

})


function showCart(){
    let targetId = 1;
    $('#booklist-container').empty();
    $.ajax({
        type: 'GET',
        url: `/api/cart/${targetId}`,


        success: function (response){
            for(let i=0; i<response.length; i++){
                let bookdto = response[i];
                let tempHtml = addcartItem( bookdto ,i);
                $('#booklist-container').append(tempHtml);
            }
            showtotalprice(response);
        }

    })
    console.log("cart.js done");
}

function addHTML(){

}

function numberWithCommas(x) {
    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}

function deleteFromcart(cartlistId){
    let memberNum = 1;


    $.ajax({
        type: "DELETE",
        url: `/api/cart/${cartlistId}/${memberNum}`,
        success: function (response) {
             $('#booklist-container').empty(cartlistId);
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

function showtotalprice (response){

    $('#cartallpirce_container').empty();
    let totalprice=0;
    for(let i=0; i<response.length; i++){
        let bookdto = response[i];
        totalprice += bookdto.book_Price;
 }
    let tempHtml = priceinfo(response.length,totalprice);
    $('#cartallpirce_container').append(tempHtml);

}

function priceinfo(bookcount, totalprice){
    return `<div class="cartallpirce"> 
            <div>${bookcount}권을 선택하셨습니다.</div>
            <div>
                <span>총 상품금액</span>
                <span class="price-right">${numberWithCommas(totalprice)}원</span>
            </div>
            <div>
                <span>할인금액</span>
                <span class="price-right">0원</span>
            </div>
                <div class="total-price">
                <span>합계</span>
                <span class="price-right total">${numberWithCommas(totalprice)}원</span>
            </div>
                </div>`;
}

function addcartItem(bookDTO,id){

    return `<div class = "cartbooklist">
          <div class="row">
            <div class="col-xs-1"><input type="checkbox" name="rowcheckbox" id="${id}"></div>
            <div class="col-xs-2"><img style="width:60px; height:auto;" src=${bookDTO.book_Cover}>
            </div>
            <div class="col-xs-9">
                <div class="book-title">${bookDTO.book_Title}</div>
                <div class="book-info">
                    <span class="book-author">${bookDTO.book_Author}</span>
                    <span class="book-price">${numberWithCommas(bookDTO.book_Price)}</span>
                </div>
                <div class="book-button">
                    <input type="button" id="${id}-move" class="cartbtn2" value="위시리스트로 이동">
                    <input type="button"  id="${id}-delete" class="cartbtn2" value="삭제" onclick="deleteFromcart('${id}')">

                </div>
            </div>
            </div>
        </div>`;
}

