package online_bookstore.Repository;

import java.util.ArrayList;

import org.springframework.data.jpa.repository.JpaRepository;

import online_bookstore.Entity.Review;

public interface ReviewRepository extends JpaRepository<Review,Long> {

	ArrayList<Review> findByBookId(String bookId);

}
