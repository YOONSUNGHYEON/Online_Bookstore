package online_bookstore.controller;

import java.util.Date;

import javax.servlet.http.HttpSession;

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
import online_bookstore.DTO.KakaoPayApprovalVO;
import online_bookstore.DTO.MemberDTO;
import online_bookstore.DTO.OrdersDTO;
import online_bookstore.DTO.PaymentDTO;
import online_bookstore.Entity.Member;
import online_bookstore.Repository.CartRepository;
import online_bookstore.Repository.MemberRepository;
import online_bookstore.Service.BookInfoService;
import online_bookstore.Service.KakaoPay;
import online_bookstore.Service.MemberService;
import online_bookstore.Service.OrdersService;
import online_bookstore.Service.PaymentService;

@RequiredArgsConstructor
@Controller
public class PayController {
	private final PaymentService paymentService;
	private final MemberRepository memberRepository;
	private final CartRepository cartRepository;


	@Autowired
	BookInfoService bookInfoService;

	@Autowired
	OrdersService ordersService;


	@Setter(onMethod_ = @Autowired)
	private KakaoPay kakaopay;

	@Autowired
	MemberService memberService;

	@GetMapping("/order")
	public String order(Model model, String checkbook) {
		checkbook = (String) model.asMap().get("checkbook");
		model.addAttribute(checkbook, checkbook);
		return "member/order";
	}

	@GetMapping("/order/{id}")
	public String orderByTd(@PathVariable("id") String id) {
		return "member/order";
	}

	@PostMapping("/kakaoPay/{id}/totalprice/{totalprice}")
	public String kakaoPay(@PathVariable("id") String id, @PathVariable("totalprice") String totalprice) {
		String[] array = id.split("&");
		BookDTO firstbook = bookInfoService.booksearchById1(array[0]);
		PaymentDTO paymentDTO  = new PaymentDTO(new Member(), "결제중",new Date(),"카카오페이",Integer.parseInt(totalprice),firstbook.getBook_Title().concat(" 외 "+(array.length-1)+"권"));
		return "redirect:" + kakaopay.kakaoPayReady(paymentDTO, id);
	}

	@GetMapping("/kakaoPaySuccess")
	public String kakaoPaySuccess(@RequestParam("pg_token") String pg_token, HttpSession session, Model model) {
		KakaoPayApprovalVO kakao = kakaopay.kakaoPayInfo(pg_token);
		Member member = new Member((MemberDTO)session.getAttribute("member"));
		PaymentDTO paymentDTO  = new PaymentDTO(member, "결제완료",new Date(),"카카오페이",kakao.getAmount().getTotal(),kakao.getItem_name());
		String[] array = kakao.getItem_code().toString().split("&");
		PaymentDTO tempPaymentDTO = paymentService.save(paymentDTO);
    	for(int i=0;i<array.length;i++) {
    		ordersService.save(new OrdersDTO(array[i],tempPaymentDTO));
    	}
		return "kakaoPaySuccess";
	}
}
