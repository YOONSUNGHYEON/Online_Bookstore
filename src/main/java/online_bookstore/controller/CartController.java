package online_bookstore.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import lombok.RequiredArgsConstructor;
import online_bookstore.DTO.BookDTO;
import online_bookstore.DTO.MemberDTO;
import online_bookstore.Entity.Cart;
import online_bookstore.Entity.Member;
import online_bookstore.Repository.CartRepository;
import online_bookstore.Repository.MemberRepository;
import online_bookstore.Service.BookInfoServiceImp;
import online_bookstore.Service.MemberService;
import online_bookstore.Service.MemberServiceImp;

@RequiredArgsConstructor
@RestController
public class CartController {

    private final CartRepository cartRepository;
    private final MemberRepository memberRepository;
    private final BookInfoServiceImp bookInfoServiceImp;
    private final MemberServiceImp memberServiceImp;
    private final MemberService memberService;

    @RequestMapping("/cart/?type=buy")
    public String CartBuy() {return "cartMember/cartBuyPossible";}

    @RequestMapping("/cart/?type=rent")

    public String CartRent() {return "CartMember/CartRentPossible";}

	@PostMapping("/api/cart")
	@ResponseBody
	public Cart createCart(@RequestBody Map<String, String> param) {
		Member m =memberService.login(param.get("member_id"));
		Cart cart = new Cart(param.get("book_id"), m);
		return cartRepository.save(cart);
	}

    @GetMapping("/api/cart/{member_Num}")
    public ArrayList<BookDTO> getCart(@PathVariable int member_Num, HttpSession session){
        Member member = memberRepository.getMemberbyMemberNum(((MemberDTO)session.getAttribute("member")).getMember_Num());
        List<Cart> cartList = cartRepository.findCartByMemberIsOrderByIdAsc(member);
        ArrayList<BookDTO> cartBookList = new ArrayList<>();
        for(int i=0; i<cartList.size();i++ ){
            String book_Id = cartList.get(i).getBook_Id();
            ArrayList<BookDTO> bookDTOList = bookInfoServiceImp.bookSearchbyId(book_Id);
            cartBookList.add(bookDTOList.get(0));
        }
      return cartBookList;
}


    @DeleteMapping("/api/cart/{cartlistId}/{member_Num}")
    public int deleteCart(@PathVariable int cartlistId ,@PathVariable  int member_Num, HttpSession session){
        Member member = memberRepository.getMemberbyMemberNum(((MemberDTO)session.getAttribute("member")).getMember_Num());
        List<Cart> cartList = cartRepository.findCartByMemberIsOrderByIdAsc(member);
        Long cart_id = cartList.get(cartlistId).getId();
        cartRepository.deleteById(cart_id);
        return cartlistId;
    }




}
