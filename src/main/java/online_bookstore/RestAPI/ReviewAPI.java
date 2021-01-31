package online_bookstore.RestAPI;

import java.util.ArrayList;
import java.util.List;

import online_bookstore.DTO.ReviewDTO;
import online_bookstore.Repository.ReviewRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import online_bookstore.Entity.Review;
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

	 @GetMapping("reviewlist/{num}/latest")
	    public ArrayList<Review> reviewlist(@PathVariable(name = "num") String num){
	        return reviewService.findByBookIdOrderByIdDesc(num);
	    }
    //회원 리뷰 조회  num= 회원고유 번호
	 @GetMapping("/reviewlist/{num}")
        public ArrayList<ReviewDTO> myreviewlist(@PathVariable (name ="num") int num) {
        return reviewService.myreviewlist(num);
     }
    //회원 리뷰 갯수조회  num= 회원고유 번호
     @GetMapping("/reviewlistcount/{num}")
    public Long reviewlistcount(@PathVariable (name ="num") int num){
        return reviewService.reviewlistcount(num);
     }

}
