package online_bookstore.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import online_bookstore.Entity.Hearted;

public interface HeartedRepository extends JpaRepository<Hearted,Long> {

}
