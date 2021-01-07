package online_bookstore.controller;

import lombok.RequiredArgsConstructor;
import online_bookstore.Repository.Cart;
import online_bookstore.Repository.CartRepository;
import online_bookstore.DTO.BookDTO;
import online_bookstore.DTO.MemberDTO;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RequiredArgsConstructor
@RestController
public class CartController {

    private final CartRepository cartRepository;

    @RequestMapping("/cart/?type=buy")
    public String CartBuy() {return "cartMember/cartBuyPossible";}

    @RequestMapping("/cart/?type=rent")

    public String CartRent() {return "CartMember/CartRentPossible";}

    @PostMapping("/api/cart")
    public Cart createCart(@RequestBody MemberDTO memberdto, @RequestBody BookDTO bookdto){
        Cart cart = new Cart( bookdto , memberdto);
        return cartRepository.save(cart);
    }

    @GetMapping("/api/cart")
    public List<Cart> getCart(){
        return cartRepository.findAll();
    }

     @DeleteMapping("/api/cart/{id}")
     public Long deleteCart(@PathVariable Long id){
        cartRepository.deleteById(id);
        return id;
     }

}
