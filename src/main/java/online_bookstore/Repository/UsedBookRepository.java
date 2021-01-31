package online_bookstore.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import online_bookstore.Entity.UsedBook;

public interface UsedBookRepository extends JpaRepository<UsedBook, Long>  {

}
