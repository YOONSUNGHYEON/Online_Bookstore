package online_bookstore.Repository;

import java.util.ArrayList;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import online_bookstore.Entity.Member;
import online_bookstore.Entity.Review;

public interface ReviewRepository extends JpaRepository<Review, Long> {

	ArrayList<Review> findByBookIdOrderByIdDesc(String bookId);

	ArrayList<Review> findByBookIdOrderByLikeDesc(String bookId);

	@Transactional
	@Modifying
	@Query("UPDATE Review SET review_content=:content, review_score=:score WHERE id=:id")
	void update(@Param("id") long id, @Param("score") int score, @Param("content") String content);

	@Query(value = "select * from review where member_num=:num and book_id=:bookId", nativeQuery = true)
	ArrayList<Review> findByMemberNumAndBookId(@Param("num") int num, @Param("bookId") String bookId);

	@Query(value = "SELECT AVG(review_score) FROM review WHERE book_id=:id GROUP BY book_id", nativeQuery = true)
	float avgReviewScoreByBookId(@Param("id") String id);

	@Query(value = "select * from review where id=:id", nativeQuery = true)
	Review findOne(@Param("id") String id);

	Long countByBookId(int id);

	ArrayList<Review> findByMember(Member member);

	Long countByMember(Member one);

	Long countByBookId(String id);

	ArrayList<Review> findByBookIdOrderByScoreDesc(String bookId);

	ArrayList<Review> findByBookIdOrderByScoreAsc(String bookId);
	Review findByMemberAndBookId(Member m, String bookId);


}
