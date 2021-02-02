package online_bookstore.Repository;

import java.util.ArrayList;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import online_bookstore.Entity.Member;
import online_bookstore.Entity.Review;

public interface ReviewRepository extends JpaRepository<Review,Long> {

	ArrayList<Review> findByBookIdOrderByIdDesc(String bookId);
	ArrayList<Review> findByBookIdOrderByLikeDesc(String bookId);
	@Transactional
	@Modifying
	@Query("UPDATE Review SET review_like=:like WHERE id=:id")
	void updateLike(@Param("id") long id, @Param("like") int like);


	@Query(value ="SELECT AVG(review_score) FROM review WHERE book_id=:id GROUP BY book_id" , nativeQuery=true)
	float avgReviewScoreByBookId(@Param("id") long id);

    @Query(value = "select * from review where id=:id" , nativeQuery=true)
    Review findOne(@Param("id") Long id);

    Long countByBookId(int id);

	ArrayList<Review> findByMember(Member member);

	Long countByMember(Member one);

	Long countByBookId(String id);
	ArrayList<Review> findByBookIdOrderByScoreDesc(String bookId);
	ArrayList<Review> findByBookIdOrderByScoreAsc(String bookId);


}
