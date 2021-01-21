package online_bookstore.Repository;

import online_bookstore.DTO.BookDTO;
import online_bookstore.DTO.MemberDTO;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CartRepository extends JpaRepository<Cart,Long> {
    List<Cart> findCartBymemberIsOrderByIdAsc(MemberDTO member_Num);

}
