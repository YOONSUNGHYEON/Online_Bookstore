package online_bookstore.DAO;

import org.springframework.data.jpa.repository.JpaRepository;

import javax.persistence.Column;

public interface CartRepository extends JpaRepository<Cart,Long> {


}
