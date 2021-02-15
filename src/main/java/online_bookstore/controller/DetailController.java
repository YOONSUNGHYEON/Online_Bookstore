package online_bookstore.controller;

import lombok.RequiredArgsConstructor;
import online_bookstore.DTO.MemberDTO;
import online_bookstore.Entity.Review;
import online_bookstore.Repository.LiketoRepository;
import online_bookstore.Service.BookInfoService;
import online_bookstore.Service.MemberService;
import online_bookstore.Service.ReviewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;

@RequiredArgsConstructor
@Controller
public class DetailController {

	@Autowired
	ReviewService reviewService;
	@Autowired
	BookInfoService bookInfoService;
	@Autowired
	MemberService memberService;
	@Autowired
	LiketoRepository liketoRepository;

	@GetMapping("detail/{id}")
	public String detail(Model model, @PathVariable("id") String id , HttpServletResponse response) {
		Cookie cookie=new Cookie(id,id);
		cookie.setMaxAge(-1);
		cookie.setPath("/");
		response.addCookie(cookie);
		return "detail";
	}


	@PostMapping(value = "/review")
	@ResponseBody
	public String home(Review review, HttpSession session) {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date time = new Date();
		review.setTime(format.format(time));
		review.setMember(memberService.login(((MemberDTO)session.getAttribute("member")).getMember_Id()));
		reviewService.save(review);
		return "redirect:/";
	}

	@PostMapping(value = "/like")
	@ResponseBody
	public int like(Review review) {
		Review r = new Review();
		//Liketo l=new Liketo(review.getId(), review.getMember().getMember_Id());
		//l = liketoRepository.save(null);
		r=reviewService.findOne(review.getId());
		reviewService.updateLike(r.getId(), r.getLike()+1);
		return r.getLike()+1;
	}


}
