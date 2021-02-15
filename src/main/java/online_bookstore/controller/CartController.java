package online_bookstore.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import lombok.RequiredArgsConstructor;
import online_bookstore.Entity.Cart;
import online_bookstore.Entity.Member;
import online_bookstore.Repository.CartRepository;
import online_bookstore.Service.MemberService;

@RequiredArgsConstructor
@RestController
public class CartController {

	private final CartRepository cartRepository;

	@Autowired
	MemberService memberService;

	@RequestMapping("/cart/?type=buy")
	public String CartBuy() {
		return "cartMember/cartBuyPossible";
	}

	@RequestMapping("/cart/?type=rent")

	public String CartRent() {
		return "CartMember/CartRentPossible";
	}

	@PostMapping("/api/cart")
	@ResponseBody
	public Cart createCart(@RequestBody Map<String, String> param) {
		Member m =memberService.login(param.get("member_id"));
		Cart cart = new Cart(param.get("book_id"), m);
		return cartRepository.save(cart);
	}

	@GetMapping("/api/cart")
	public List<Cart> getCart() {
		return cartRepository.findAll();
	}

	@DeleteMapping("/api/cart/{id}")
	public Long deleteCart(@PathVariable Long id) {
		cartRepository.deleteById(id);
		return id;
	}

}
