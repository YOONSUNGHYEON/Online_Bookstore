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

	public void save(Review review) {
		reviewRepository.save(review);
	}


	public Review findOne(String id) {
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

	public Review findByMemberNumAndBookId(int num, String bookId) {
		ArrayList<Review> rList = reviewRepository.findByMemberNumAndBookId(num, bookId);
		Review r =null;
		if(!rList.isEmpty())
			r = rList.get(0);
		return r;
	}

	public String avgReviewScoreByBookId(String id) {
		float avg = 0;
		if(reviewRepository.countByBookId(id)!=0)
			avg= reviewRepository.avgReviewScoreByBookId(id);
		return String.format("%.1f", avg);
	}

	public void deleteById(long reviewId) {
		//Long reviewId = reviewRepository.findByMemberAndBookId(m, bookId).getId();
		reviewRepository.deleteById(reviewId);

	}

	public void update(long id, int score,String content) {
		reviewRepository.update(id, score, content);
	}
	public ArrayList<Review> findByBookIdOrderBySort(String bookId, String sort) {
		if(sort.equals("latest"))
			return reviewRepository.findByBookIdOrderByIdDesc(bookId);
		else if(sort.equals("like"))
			return reviewRepository.findByBookIdOrderByLikeDesc(bookId);
		else if(sort.equals("highscore"))
			return reviewRepository.findByBookIdOrderByScoreDesc(bookId);
		else
			return reviewRepository.findByBookIdOrderByScoreAsc(bookId);
	}}
