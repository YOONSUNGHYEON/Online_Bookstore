package online_bookstore.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import online_bookstore.DTO.MemberDTO;
import online_bookstore.Entity.Member;
import online_bookstore.Service.MemberService;



@Controller
public class MemberController {

	@Autowired
	MemberService memberService;

	//회원가입 화면 이동
	@RequestMapping("/join")
	public String join() {
		return "member/join";
	}

	//로그인 화면 이동
	@RequestMapping("/login")
	public String login() {
		return "member/login";
	}
	//로그아웃
	@RequestMapping("/logout")
	public String logout(HttpSession session){
		session.invalidate();
		return "redirect:/";
	}
	//마이페이지(메인)
	@RequestMapping("/my")
	public String my() {
		return "member/myPage/myPageHome";
	}
	//마이페이지(주문조회)
	@RequestMapping("/my/order")
	public String OrderHistory() {
		return "member/myPage/orderHistory";
	}
	//마이페이지(리뷰)
	@RequestMapping("/my/review")
	public String Review() {
		return "member/myPage/review";
	}
	//마이페이지(회원정보변경 접근)
	@RequestMapping("/my/modify")
	public String Modify() {
		return "member/myPage/accountModify";
	}

	//회원가입 처리
	@PostMapping("/join")
	public String Joinpost(MemberDTO memberDTO) {
		memberService.join(memberDTO);
		return "redirect:/login";
	}

	//로그인 처리
	@PostMapping("/login")
	public String Loginpost(MemberDTO memberDTO, Model model, HttpSession session, HttpServletRequest request) {
		MemberDTO result = memberService.login(memberDTO);
		String referer=request.getHeader("Referer");
		if(result!=null){
			System.out.println(result.toString());
			System.out.println("not null");
			session.setAttribute("member",result);
			return "redirect:"+referer;
		}else{
			model.addAttribute("msg","입력하신 내용틀립니다");
			System.out.println("null");
			return "member/msg";
		}
	}
	//회원정보변경 접근 처리
	@PostMapping("/accountmodify")
	public String accountModify(Member member){
		System.out.println(member.getMember_Pass());
		return "redirect:/";
	}

	@RequestMapping("/cart")
	public String Cart() {
		return "member/cart";
	}


}