package online_bookstore.Repository;

import online_bookstore.DTO.BookDTO;
import online_bookstore.DTO.MemberDTO;
import online_bookstore.Entity.Member;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CartRepository extends JpaRepository<online_bookstore.Repository.Cart,Long> {
    List<online_bookstore.Repository.Cart> findCartByMemberIsOrderByIdAsc(Member member);

}
