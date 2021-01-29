package online_bookstore.Service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import online_bookstore.Entity.Review;
import online_bookstore.Repository.ReviewRepository;



@Service
public class ReviewService {
	@Autowired
	ReviewRepository reviewRepository;
	public void updateLike(long id, int like) {
		reviewRepository.updateLike(id, like);
	}


	public ArrayList<Review> findByBookIdOrderByIdDesc(String bookId) {
		return reviewRepository.findByBookIdOrderByIdDesc(bookId);
	}


	public void save(Review review) {

		reviewRepository.save(review);
	}


	public Review findOne(Long id) {
		return reviewRepository.findOne(id);
	}
}
