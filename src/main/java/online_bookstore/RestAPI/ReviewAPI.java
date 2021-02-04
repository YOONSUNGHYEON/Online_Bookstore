package online_bookstore.RestAPI;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import online_bookstore.DTO.ReviewDTO;
import online_bookstore.Entity.Review;
import online_bookstore.Repository.ReviewRepository;
import online_bookstore.Service.ReviewService;

@RestController
@RequestMapping("/api")
public class ReviewAPI {

	@Autowired
	ReviewService reviewService;

	@Autowired
	ReviewRepository reviewRepository;

	public ReviewAPI(ReviewService reviewService) {
		this.reviewService = reviewService;
	}

	//id에 해당하는 책 리뷰 리스트에 해당 mem_num 있는지 없지여부
	@GetMapping("reviewlist/{id}/memNum/{num}")
	public int existNumFromReviewlist(@PathVariable(name = "id") String id, @PathVariable(name = "num") int num){
		return reviewService.countByMemberNumAndBookId(num, id);
	}



	//id에 해당하는 책의 평균
	@GetMapping("avgscore/{id}")
	public String avgscore(@PathVariable(name = "id") String id){
		float avg = reviewService.avgReviewScoreByBookId(Long.parseLong(id));
		return String.format("%.1f", avg);
	}

	// num=book_id num에 해당하는 책 리뷰 목록 작성순으로 조회
	@GetMapping("reviewlist/{num}/latest")
	public ArrayList<Review> reviewlist(@PathVariable(name = "num") String num){
		ArrayList<Review> rlist = reviewService.findByBookIdOrderByIdDesc(num);
		return rlist;
	}

	// num=book_id num에 해당하는 책 리뷰 목록 like순으로 조회
	@GetMapping("reviewlist/{num}/like")
	public ArrayList<Review> reviewlistbylike(@PathVariable(name = "num") String num){
		ArrayList<Review> rlist = reviewService.findByBookIdOrderByLikeDesc(num);
		return rlist;
	}
	// num=book_id num에 해당하는 책 리뷰 목록 평점높은순으로 조회
	@GetMapping("reviewlist/{num}/highscore")
	public ArrayList<Review> reviewlistbylowscore(@PathVariable(name = "num") String num){
		ArrayList<Review> rlist = reviewService.findByBookIdOrderByScoreDesc(num);
		return rlist;
	}
	// num=book_id num에 해당하는 책 리뷰 목록 평점낮은순으로 조회
	@GetMapping("reviewlist/{num}/lowscore")
	public ArrayList<Review> reviewlistbyhightscore(@PathVariable(name = "num") String num){
		ArrayList<Review> rlist = reviewService.findByBookIdOrderByScoreAsc(num);
		return rlist;
	}

	// 회원 리뷰 조회 num= 회원고유 번호
	@GetMapping("/reviewlist/{num}")
	public ArrayList<ReviewDTO> myreviewlist(@PathVariable(name = "num") int num) {
		return reviewService.myreviewlist(num);
	}

	// 회원 리뷰 갯수조회 num= 회원고유 번호
	@GetMapping("/reviewlistcount/{num}")
	public Long reviewlistcount(@PathVariable(name = "num") int num) {
		return reviewService.reviewlistcount(num);
	}

	@GetMapping("/reviewlistcountbybook/{id}")
	public Long reviewlistcountbybook(@PathVariable(name = "id") String id) {
		return reviewService.reviewlistcountbybook(id);
	}

}
