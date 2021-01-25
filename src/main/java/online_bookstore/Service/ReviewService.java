package online_bookstore.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import online_bookstore.Entity.Review;
import online_bookstore.Repository.ReviewRepository;



@Service
public class ReviewService {
	@Autowired
	ReviewRepository reviewRepository;


	public List<Review> findByBookId(String bookId) {
		return reviewRepository.findByBookId(bookId);
	}
}
