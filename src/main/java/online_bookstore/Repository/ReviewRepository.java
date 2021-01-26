package online_bookstore.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import online_bookstore.Entity.Review;

public interface ReviewRepository extends JpaRepository<Review,Long> {

	List<Review> findByBookId(String bookId);

}
