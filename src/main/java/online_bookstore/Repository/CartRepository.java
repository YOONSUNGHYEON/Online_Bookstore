package online_bookstore.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import online_bookstore.Entity.Cart;
import online_bookstore.Entity.Member;

public interface CartRepository extends JpaRepository<Cart,Long> {
    List<Cart> findCartByMemberIsOrderByIdAsc(Member member);

    @Query(value = "select * from cart where member_num=:num and book_id=:bookId", nativeQuery = true)
    Cart findByMemberNumAndBookId(@Param("num") int i, @Param("bookId") String book_id);

}
