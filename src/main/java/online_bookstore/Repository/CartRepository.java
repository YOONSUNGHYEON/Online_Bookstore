package online_bookstore.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import online_bookstore.Entity.Cart;
import online_bookstore.Entity.Member;

public interface CartRepository extends JpaRepository<Cart,Long> {
    List<Cart> findCartByMemberIsOrderByIdAsc(Member member);

}
