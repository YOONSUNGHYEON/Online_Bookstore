package online_bookstore.RestAPI;

import java.util.ArrayList;

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

    public ReviewAPI(ReviewService reviewService) {
        this.reviewService = reviewService;
    }

	 @GetMapping("reviewlist/{num}/latest")
	    public ArrayList<Review> reviewlist(@PathVariable(name = "num") String num){
	        return reviewService.findByBookIdOrderByIdDesc(num);
	    }
}
