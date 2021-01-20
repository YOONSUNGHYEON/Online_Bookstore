package online_bookstore.Repository.category;

import java.util.List;

import online_bookstore.Repository.category.Category;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface CategoryRepository extends JpaRepository<Category, Long> {

	@Query("SELECT p FROM Category p WHERE p.pid = ?1 AND p.id != p.pid")
	List<Category> findSubCategoryByid(Long id);
	
	@Query("SELECT p FROM Category p WHERE p.pid = p.id")
	List<Category> findBigCategory();
	
}
