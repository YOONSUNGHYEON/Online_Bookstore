package online_bookstore.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import online_bookstore.Entity.UsedBook;

public interface UsedBookRepository extends JpaRepository<UsedBook, Long>  {
	
	@Query(value="select exists (select * from hearted h where h.book_id=:book_id and h.member_id=:member_id)", nativeQuery=true)
	int findHeartedMember(@Param("book_id") Long book_id, @Param("member_id") int member_id);
	
	@Modifying
	@Transactional
	@Query(value="delete from hearted where book_id=:book_id and member_id=:member_id", nativeQuery=true)
	void heartedDelete(@Param("book_id") Long book_id, @Param("member_id") int member_id);
	
	@Query(value="select count(*) from hearted where book_id=:book_id", nativeQuery=true)
	int heartedCount(@Param("book_id") Long book_id);
	
	@Modifying
	@Transactional
	@Query(value="update used_book set sale_status=:saleStatus where id = :id", nativeQuery=true)
	void saleStatusChange(@Param("id") Long id, @Param("saleStatus") int saleStatus);

}
