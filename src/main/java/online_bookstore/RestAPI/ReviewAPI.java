package online_bookstore.RestAPI;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import online_bookstore.DTO.LiketoDTO;
import online_bookstore.DTO.MemberDTO;
import online_bookstore.DTO.ReviewDTO;
import online_bookstore.Entity.Member;
import online_bookstore.Entity.Review;
import online_bookstore.Service.LiketoService;
import online_bookstore.Service.MemberService;
import online_bookstore.Service.ReviewService;

@RestController
@RequestMapping("/api")
public class ReviewAPI {

	@Autowired
	LiketoService liketoService;
	@Autowired
	ReviewService reviewService;
	@Autowired
	MemberService memberService;


	@PostMapping(value = "/like")
	@ResponseBody
	public int like(@RequestBody Map<String, Integer> param, HttpSession session) {
		LiketoDTO liketoDTO=new LiketoDTO(memberService.login(((MemberDTO) session.getAttribute("member")).getMember_Id()),
							reviewService.findOne(param.get("reviewId").toString())
							,1);
		liketoDTO= liketoService.save(liketoDTO);
		return liketoService.countByReviewIdandLikeCheck(liketoDTO.getReview().getId());
	}

	public ReviewAPI(ReviewService reviewService) {
		this.reviewService = reviewService;
	}

	//리뷰 아이디당 좋아요 눌렀는지 안눌렀는지
	@GetMapping("liketo/{id}")
	public int checkliketoby(@PathVariable(name = "id") long id, HttpSession session){
		int memberNum = ((MemberDTO)session.getAttribute("member")).getMember_Num();
		return liketoService.findByMemberNumAndReviewID(memberNum, id);
	}

	//리뷰 아이디당 좋아요 카운트 가져오기
	@GetMapping("liketo/{id}/count")
	public int countByReviewIdandLikeCheck(@PathVariable(name = "id") long id){
		return liketoService.countByReviewIdandLikeCheck(id);
	}
	//내 리뷰 삭제하기
	@DeleteMapping("review/{id}")
	public boolean deleteReview(@PathVariable(name = "id") String bookId, HttpSession session){
		Member m = memberService.login(((MemberDTO) session.getAttribute("member")).getMember_Id());
		reviewService.deleteById(bookId, m);
		return true;
	}



	//id에 해당하는 책 리뷰 리스트에 해당 mem_num 있는지 없지여부
	@GetMapping("reviewlist/{id}/memNum/{num}")
	public Review existNumFromReviewlist(@PathVariable(name = "id") String id, @PathVariable(name = "num") int num){
		return reviewService.findByMemberNumAndBookId(num, id);
	}



	//id에 해당하는 책의 평균
	@GetMapping("avgscore/{id}")
	public String avgscore(@PathVariable(name = "id") String id){
		return reviewService.avgReviewScoreByBookId(id);
	}

	// num=book_id num에 해당하는 책 리뷰 목록 작성순,like순.평점높은순,평점낮은순으로 조회
	@GetMapping("reviewlist/{num}/sort/{sort}")
	public ArrayList<Review> reviewlist(@PathVariable(name = "num") String num, @PathVariable(name = "sort") String sort){
		ArrayList<Review> rlist = reviewService.findByBookIdOrderBySort(num, sort);
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
