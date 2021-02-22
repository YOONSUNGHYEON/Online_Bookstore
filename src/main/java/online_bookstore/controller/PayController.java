package online_bookstore.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.RequiredArgsConstructor;
import lombok.Setter;
import online_bookstore.DTO.BookDTO;
import online_bookstore.Entity.Orders;
import online_bookstore.Service.BookInfoService;
import online_bookstore.Service.KakaoPay;
import online_bookstore.Service.PaymentService;

@RequiredArgsConstructor
@Controller
public class PayController {
	private final PaymentService paymentService;
    @Autowired
    BookInfoService bookInfoService;

    @Setter(onMethod_ = @Autowired)
    private KakaoPay kakaopay;


	@GetMapping("/order/{id}")
	public String order(Model model, @PathVariable("id") String id) {
		return "member/order";
	}

	@PostMapping("/kakaoPay/{id}")
	public String kakaoPay(@PathVariable("id") String id) {
		System.out.println(id);
		BookDTO book = bookInfoService.booksearchById(id);
		return "redirect:" + kakaopay.kakaoPayReady(book);

	}

	@GetMapping("/kakaoPaySuccess")
	public void kakaoPaySuccess(@RequestParam("pg_token") String pg_token, Model model) {
		Orders orders = new Orders();
		//orders
		//PaymentDTO payment  = new PaymentDTO();
		//payment.setBook_name(pg_token);
		paymentService.save(null);
		model.addAttribute("info", kakaopay.kakaoPayInfo(pg_token));

	}
}
