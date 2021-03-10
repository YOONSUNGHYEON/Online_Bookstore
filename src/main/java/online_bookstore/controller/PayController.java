package online_bookstore.controller;

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
import online_bookstore.Service.PaymentService;

@RequiredArgsConstructor
@Controller
public class PayController {
	private final PaymentService paymentService;
	private final MemberRepository memberRepository;
	private final CartRepository cartRepository;
	@Autowired
	BookInfoService bookInfoService;

	@Setter(onMethod_ = @Autowired)
	private KakaoPay kakaopay;

	@Autowired
	MemberService memberService;

	@GetMapping("/order")
	public String order(Model model, String checkbook) {
		checkbook =(String)model.asMap().get("checkbook");
		model.addAttribute(checkbook, checkbook);
		return "member/order";
	}

	@GetMapping("/pay/checkout/{id}")
	public String checkout(Model model, @PathVariable("id") String id, HttpSession session) {
		System.out.println(id);
		String[] array = id.split("&");
		//Member member = memberRepository
				//.getMemberbyMemberNum(((MemberDTO) session.getAttribute("member")).getMember_Num());
		//List<Cart> cartList = cartRepository.findCartByMemberIsOrderByIdAsc(member);
		//Long cart_id = cartList.get(cartlistId).getId();
		//model.addAttribute("board", boardRepository.findById(pagination.getBd()).get());
		return "member/order";
	}

	@PostMapping("/kakaoPay/{id}")
	public String kakaoPay(@PathVariable("id") String id) {
		BookDTO book = bookInfoService.booksearchById(id);
		return "redirect:" + kakaopay.kakaoPayReady(book);
	}

	@GetMapping("/kakaoPaySuccess")
	public String kakaoPaySuccess(@RequestParam("pg_token") String pg_token, HttpSession session) {
		Member member = new Member((MemberDTO)session.getAttribute("member"));
		KakaoPayApprovalVO kakao = kakaopay.kakaoPayInfo(pg_token);
		OrdersDTO ordersDTO = new OrdersDTO(kakao.getItem_code(),member);
		PaymentDTO paymentDTO  = new PaymentDTO(member,"결제완료",kakao.getApproved_at(),"카카오페이",kakao.getAmount().getTotal(),kakao.getItem_name());
		paymentService.save(paymentDTO, ordersDTO);
		return "kakaoPaySuccess";
	}
}
