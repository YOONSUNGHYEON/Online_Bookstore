package online_bookstore.Service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import online_bookstore.DTO.ReviewDTO;
import online_bookstore.Entity.Review;
import online_bookstore.Repository.MemberRepository;
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
	public Long reviewlistcountbybook(String id) {
		return reviewRepository.countByBookId(id);
	}


	public ArrayList<Review> findByBookIdOrderByLikeDesc(String bookId) {
		// TODO Auto-generated method stub
		return reviewRepository.findByBookIdOrderByLikeDesc(bookId);
	}


	public ArrayList<Review> findByBookIdOrderByScoreDesc(String bookId) {
		// TODO Auto-generated method stub
		return reviewRepository.findByBookIdOrderByScoreDesc(bookId);
	}


	public ArrayList<Review> findByBookIdOrderByScoreAsc(String bookId) {
		// TODO Auto-generated method stub
		return reviewRepository.findByBookIdOrderByScoreAsc(bookId);
	}
	public int countByMemberNumAndBookId(int num, String bookId) {
		// TODO Auto-generated method stub
		return reviewRepository.countByMemberNumAndBookId(num, bookId);
	}

	public float avgReviewScoreByBookId(long id) {
		// TODO Auto-generated method stub
		return reviewRepository.avgReviewScoreByBookId(id);
	}


}
