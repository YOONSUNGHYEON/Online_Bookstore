package online_bookstore.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	@RequestMapping("/Join")
	public String Join() {
		return "Member/Join";
	}

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
	@RequestMapping("/cart")
	public String Cart() {return "Member/Cart";}

}
