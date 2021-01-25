package online_bookstore.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import lombok.RequiredArgsConstructor;
import online_bookstore.Entity.Member;
import online_bookstore.Entity.Review;
import online_bookstore.Repository.ReviewRepository;
import online_bookstore.Service.BookInfoService;
@RequiredArgsConstructor
@Controller
public class DetailController {

	@Autowired
	ReviewRepository reviewService;
	@Autowired
	BookInfoService bookInfoService;

	@GetMapping("detail/{id}")
	public String detail(Model model, @PathVariable("id") String id) {
		List<Review> list = reviewService.findByBookId(id);
		model.addAttribute("bookInfo", bookInfoService.booksearchById(id));
		model.addAttribute("reviewModel", new Review());
		model.addAttribute("reviews", list);
		return "detail";
	}

	@PostMapping("detail/{id}" )
	public String detail(@Valid Review r, @PathVariable("id") String id, HttpSession session) {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		r.setMember((Member)session.getAttribute("member"));
		Date time = new Date();
		r.setScore(4);
		r.setTime(format.format(time));
		r.setBookId(id);
		reviewService.save(r);
		return "redirect:"+id;
	}
}
