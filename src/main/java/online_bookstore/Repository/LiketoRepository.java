package online_bookstore.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import online_bookstore.Entity.Liketo;

@Repository
public interface LiketoRepository extends JpaRepository<Liketo,Long>{

}
