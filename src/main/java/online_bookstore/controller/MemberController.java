package online_bookstore.controller;

import online_bookstore.DTO.MemberDTO;
import online_bookstore.Service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class MemberController {

	@Autowired
	MemberService memberService;

	//회원가입 화면 이동
	@RequestMapping("/join")
	public String join() { return "member/join"; }

	//로그인 화면 이동

	@RequestMapping("/login")
	public String login() {
		return "member/login";
	}

	@RequestMapping("/my")
	public String my() {
		return "member/myPage/myPageHome";
	}
	@RequestMapping("/my/order")
	public String OrderHistory() {
		return "member/myPage/orderHistory";
	}
	@RequestMapping("/my/review")
	public String Review() {
		return "member/myPage/review";
	}
	@RequestMapping("/my/modify")
	public String Modify() {
		return "member/myPage/accountModify";
	}

	//회원가입 등록
	@PostMapping("/join")
	public String Joinpost(MemberDTO memberDTO) {
		memberService.join(memberDTO);
		System.out.println("Joinpost");
		return "redirect:/login";
	}

	//로그인 처리
	@PostMapping("/login")
	public String Loginpost(MemberDTO memberDTO, Model model) {
		List<MemberDTO> result = memberService.login(memberDTO);

		if(result.size()>0){
			return "redirect:/";
		}else{
			model.addAttribute("msg","입력하신 내용틀립니다");
			return "member/msg";
		}
	}

	@RequestMapping("/cart")
	public String Cart() {
		return "member/cart";
	}

}
