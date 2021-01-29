package online_bookstore.Repository;

import java.util.ArrayList;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import online_bookstore.Entity.Review;

public interface ReviewRepository extends JpaRepository<Review,Long> {

	ArrayList<Review> findByBookIdOrderByIdDesc(String bookId);

	@Transactional
	@Modifying
	@Query("UPDATE Review SET review_like=:like WHERE id=:id")
	void updateLike(@Param("id") long id, @Param("like") int like);



    @Query(value = "select * from review where id=:id" , nativeQuery=true)
    Review findOne(@Param("id") Long id);

}
