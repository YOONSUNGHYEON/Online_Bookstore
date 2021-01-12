package online_bookstore.controller;

import lombok.RequiredArgsConstructor;
import online_bookstore.Repository.Cart;
import online_bookstore.Repository.CartRepository;
import online_bookstore.DTO.BookDTO;
import online_bookstore.DTO.MemberDTO;
import online_bookstore.Repository.MemberDAOImp;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RequiredArgsConstructor
@RestController
public class CartController {

    private final CartRepository cartRepository;
    private final MemberDAOImp memberRepository;

    @RequestMapping("/cart/?type=buy")
    public String CartBuy() {return "cartMember/cartBuyPossible";}

    @RequestMapping("/cart/?type=rent")

    public String CartRent() {return "CartMember/CartRentPossible";}

    @PostMapping("/api/cart")
    public Cart createCart(@RequestBody MemberDTO memberdto, @RequestBody BookDTO bookdto){
        Cart cart = new Cart( bookdto , memberdto);
        return cartRepository.save(cart);
    }

    @GetMapping("/api/cart/{member_Num}")
    public List<BookDTO> getCart(@PathVariable int member_Num){
        MemberDTO member = memberRepository.getMemberDTObyMemberNum(member_Num);

        List<Cart> cartList = cartRepository.findCartByMemberMember_NumIsOrderByIdAsc(member);
        List<BookDTO> cartBookList = null;
        for(int i=0; i<cartList.size();i++ ){
            BookDTO bookDTO = cartList.get(i).getBook();
            cartBookList.set(i,bookDTO);
        }
        return cartBookList;
    }

     @DeleteMapping("/api/cart/{id}")
     public Long deleteCart(@PathVariable Long id){
        cartRepository.deleteById(id);
        return id;
     }

}
