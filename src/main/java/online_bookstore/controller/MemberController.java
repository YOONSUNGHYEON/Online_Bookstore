package online_bookstore.controller;

import java.util.ArrayList;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import online_bookstore.DTO.BookDTO;
import online_bookstore.DTO.MemberDTO;
import online_bookstore.Entity.Member;
import online_bookstore.Service.BookInfoService;
import online_bookstore.Service.MemberService;

@Controller
public class MemberController {

	@Autowired
	MemberService memberService;
	@Autowired
	BookInfoService bookInfoService;

	// 회원가입 화면 이동
	@RequestMapping("/join")
	public String join() {
		return "member/join";
	}

	// 로그인 화면 이동
	@RequestMapping("/login")
	public String login(HttpServletRequest request, Model model) {
		String referer = request.getHeader("Referer");
		model.addAttribute("referer", referer);
		return "member/login";
	}

	// 로그아웃
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}

	// 마이페이지(메인)
	@RequestMapping("/my")
	public String my(HttpServletRequest request, Model model) {
		Cookie[] cookies = request.getCookies();
		ArrayList<BookDTO> arrayList = new ArrayList<BookDTO>();
		if (cookies.length > 1) {
			for (int i = 2; i < cookies.length; i++) {
				BookDTO bookDTO = new BookDTO();
				bookDTO = bookInfoService.booksearchById1(cookies[i].getValue());
				arrayList.add(bookDTO);
			}
			if (arrayList != null) {
				model.addAttribute("RecentlyViewedProducts", arrayList);
			}
			System.out.println(arrayList.toString());
		}
		return "member/myPage/myPageHome";
	}

	// 마이페이지(주문조회)
	@RequestMapping("/my/order")
	public String OrderHistory() {
		return "member/myPage/orderHistory";
	}

	// 마이페이지(리뷰)
	@RequestMapping("/my/review")
	public String Review() {
		return "member/myPage/review";
	}

	// 마이페이지(회원정보변경 접근)
	@RequestMapping("/my/modify")
	public String Modify() {
		return "member/myPage/accountModify";
	}

	// 회원가입 처리
	@PostMapping("/join")
	public String Joinpost(MemberDTO memberDTO) {
		memberService.join(memberDTO);
		return "redirect:/login";
	}

	// 로그인 처리
	@PostMapping("/login")
	public String Loginpost(MemberDTO memberDTO, Model model, HttpSession session) {
		MemberDTO result = memberService.login(memberDTO);
		String referer = memberDTO.getReferer();
		if (referer.contains("join")) {
			referer = "/";
		}
		if (result != null) {
			System.out.println(result.toString());
			System.out.println("not null");
			session.setAttribute("member", result);

			session.setAttribute("userId", result.getMember_Id());
			return "redirect:" + referer;

		} else {
			model.addAttribute("msg", "입력하신 내용틀립니다");
			System.out.println("null");
			return "member/msg";
		}
	}

	// 회원정보변경 접근 처리
	@PostMapping("/accountmodify")
	public String accountModify(Member member) {
		System.out.println(member.getMember_Pass());
		return "redirect:/";
	}

	@RequestMapping("/cart")
	public String Cart() {

		return "member/cart";
	}

	@PostMapping("/cart")
	public String cart(RedirectAttributes redirectAttributes, HttpServletRequest httpServletRequest) {
		 String checkbook = httpServletRequest.getParameter("checkbook");
		 redirectAttributes.addFlashAttribute("checkbook",checkbook);
		return "redirect:/order";
	}

	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String Search(@RequestParam("searchTerm") String searchTerm, Model model) {
		model.addAttribute("searchTerm", searchTerm);
		return "search/searchPage";
	}

	@RequestMapping("/author")
	public String Author() {
		return "search/authorDetail";
	}

}