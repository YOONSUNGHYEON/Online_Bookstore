package online_bookstore.controller;

import java.util.Date;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import online_bookstore.DTO.MemberDTO;
import online_bookstore.Repository.Review;
import online_bookstore.Repository.ReviewRepository;
import online_bookstore.Service.BookInfoService;
@RequiredArgsConstructor
@Controller
public class DetailController {

	@Autowired
	ReviewRepository reviewRepository;
	@Autowired
	BookInfoService bookInfoService;

	@GetMapping("detail/{id}")
	public String detail(Model model, @PathVariable("id") String id) {
		model.addAttribute("bookInfo", bookInfoService.booksearchById(id));
		model.addAttribute("reviewModel", new Review());
		return "detail";
	}

	@PostMapping("detail/{id}" )
	@ResponseBody
	public String insert(@Valid Review r, @PathVariable("id") String id) {
		System.out.println(r.getReview_content().toString());
		Date time = new Date();

		r.setReview_score(4);
		r.setReview_time(time);
		r.setBook_id(id);
		r.setMember(new MemberDTO());
		reviewRepository.save(r);
		return "redirect:detail/"+id;
	}
}
