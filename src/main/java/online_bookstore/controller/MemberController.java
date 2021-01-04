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
	@RequestMapping("/Join")
	public String Join() { return "Member/Join"; }

	//로그인 화면 이동

	@RequestMapping("/Login")
	public String Longin() {
		return "Member/Login";
	}

	@RequestMapping("/my")
	public String my() {
		return "Member/myPage/myPageHome";
	}
	@RequestMapping("/my/order")
	public String OrderHistory() {
		return "Member/myPage/orderHistory";
	}
	@RequestMapping("/my/review")
	public String Review() {
		return "Member/myPage/review";
	}
	@RequestMapping("/my/modify")
	public String Modify() {
		return "Member/myPage/accountModify";
	}

	//회원가입 등록
	@PostMapping("/Join")
	public String Joinpost(MemberDTO memberDTO) {
		memberService.Join(memberDTO);
		System.out.println("Joinpost");
		return "redirect:/Login";
	}

	//로그인 처리
	@PostMapping("/Login")
	public String Loginpost(MemberDTO memberDTO, Model model) {
		List<MemberDTO> result = memberService.Login(memberDTO);

		if(result.size()>0){
			return "redirect:/";
		}else{
			model.addAttribute("msg","입력하신 내용틀립니다");
			return "Member/msg";
		}
	}

 master
	@RequestMapping("/cart")
	public String Cart() {
		return "Member/Cart";
	}

}
