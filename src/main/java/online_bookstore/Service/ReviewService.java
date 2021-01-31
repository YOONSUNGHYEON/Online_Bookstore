package online_bookstore.Service;

import java.util.ArrayList;
import java.util.List;

import online_bookstore.DTO.ReviewDTO;
import online_bookstore.Entity.Member;
import online_bookstore.Repository.MemberRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import online_bookstore.Entity.Review;
import online_bookstore.Repository.ReviewRepository;



@Service
public class ReviewService {
	@Autowired
	ReviewRepository reviewRepository;
	@Autowired
	MemberRepository memberRepository;
	@Autowired
	BookInfoService bookInfoService;
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

    public ArrayList<ReviewDTO> myreviewlist(int num) {
		ArrayList<ReviewDTO> arrayList=new ArrayList<ReviewDTO>();
		ArrayList<Review> reviews=reviewRepository.findByMember(memberRepository.getOne(num));
		for (int i = 0; i < reviews.size(); i++) {
			ReviewDTO reviewDTO=new ReviewDTO(reviews.get(i));
			reviewDTO.setBook_name(bookInfoService.booksearchById1(reviewDTO.getBookId()).getBook_Title());
			arrayList.add(reviewDTO);
		}
		return arrayList;

    }

	public Long reviewlistcount(int num) {
		return reviewRepository.countByMember(memberRepository.getOne(num));
	}
}
